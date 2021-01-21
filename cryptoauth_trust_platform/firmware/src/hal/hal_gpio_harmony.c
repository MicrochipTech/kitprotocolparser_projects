/**
 * \file
 * \brief KIT Hardware abstraction layer for 1WIRE or SWI over GPIO.
 *
 * \copyright (c) 2015-2020 Microchip Technology Inc. and its subsidiaries.
 *
 * \page License
 *
 * Subject to your compliance with these terms, you may use Microchip software
 * and any derivatives exclusively with Microchip products. It is your
 * responsibility to comply with third party license terms applicable to your
 * use of third party software (including open source software) that may
 * accompany Microchip software.
 *
 * THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
 * EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
 * WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
 * PARTICULAR PURPOSE. IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT,
 * SPECIAL, PUNITIVE, INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE
 * OF ANY KIND WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF
 * MICROCHIP HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE
 * FORESEEABLE. TO THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL
 * LIABILITY ON ALL CLAIMS IN ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED
 * THE AMOUNT OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR
 * THIS SOFTWARE.
 */

#include "hal_delay.h"
#include "hal_gpio_harmony.h"

static enum kit_protocol_status gpio_receive_bytes(uint8_t *rxdata, uint16_t rxlength);
static enum kit_protocol_status gpio_send_bytes(uint8_t *txdata, uint16_t txlength);
static enum kit_protocol_status send_logic_bit(bool bit_value);
static enum kit_protocol_status ca_gpio_discover(uint8_t device_addr, uint8_t* device_rev, device_type_t* dev_type);
enum kit_protocol_status gpio_interface_talk(uint32_t device_addr, uint8_t* data,
                                            uint16_t* tx_length, uint16_t* rx_length);

#ifdef KIT_HAL_SWI2
void start_stop_cond_1wire(void);
static void read_data_ACK_1wire(bool* bit_value);
static enum kit_protocol_status device_discovery_1wire(void);
static void generate_wake_condition(void);
static enum kit_protocol_status check_wake_1wire(uint8_t device_addr);
static uint8_t get_slave_addr_1wire(uint8_t dev_addr, uint8_t oper);
static void read_logic_bit_1wire(bool *bit_value);
#endif

#if defined(KIT_HAL_SWI) && !defined(KIT_HAL_SWI2)
static enum kit_protocol_status read_logic_bit_swi(bool *bit_value);
static enum kit_protocol_status check_wake_swi(void);
#endif

/** \brief initialize an GPIO interface
 * \param[in] cfg - interface configuration
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
void hal_gpio_init(void)
{
    SWI_1WIRE_GPIO_OutputEnable();
    SWI_1WIRE_GPIO_Set();
}

/** \brief Deinitialize an GPIO interface
 * \param[in] cfg - interface configuration
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
void hal_gpio_deinit(void)
{
    // to do nothing
}

/** \brief HAL implementation of bit banging send over Harmony
 * \param[in] iface         instance
 * \param[in] word_address  device transaction type
 * \param[in] txdata        pointer to space to bytes to send
 * \param[in] txlength      number of bytes to send
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status hal_gpio_send(uint32_t device_addr, uint8_t *txdata, uint16_t* txlength)
{
    enum kit_protocol_status status = KIT_STATUS_COMM_FAIL;
    #ifdef KIT_HAL_SWI2
    uint8_t dev_write_addr;
    #endif

    #ifdef KIT_HAL_SWI2
    start_stop_cond_1wire();
    dev_write_addr = get_slave_addr_1wire((uint8_t) device_addr, KIT_GPIO_WRITE);
    if(KIT_STATUS_SUCCESS == (status = gpio_send_bytes((uint8_t *) &dev_write_addr, sizeof(dev_write_addr))))
    {
        //if(KIT_STATUS_SUCCESS == (status = gpio_send_bytes((uint8_t *)&word_address, sizeof(uint8_t))))
        if (txdata)
        {
            status = gpio_send_bytes(txdata, *txlength);
        }
    }
    start_stop_cond_1wire();
    #endif

    #if defined(KIT_HAL_SWI) && !defined(KIT_HAL_SWI2)
    //if(KIT_STATUS_SUCCESS == (status = gpio_send_bytes(&word_address, sizeof(word_address))))
    {
        status = gpio_send_bytes(txdata, *txlength);
    }
    #endif

    return status;
}

/** \brief Discovery Response sequence is used by the master to perform a general
bus call to determine if a device is present on the bus
 * \param[in]    iface          Device to interact with.
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
void hal_gpio_discover(device_info_t* device_list, uint8_t* dev_count)
{            
    enum kit_protocol_status ret_code = KIT_STATUS_COMMAND_NOT_SUPPORTED;

    #ifdef KIT_HAL_SWI2
    (void) device_discovery_1wire();
    #endif

    uint8_t address;
    for (address = 127; address > 2; address -= 2)
    {
        //Probe for device presence
        if (KIT_STATUS_SUCCESS == (ret_code = hal_gpio_send(address, NULL, NULL)))
        {
            if ((KIT_STATUS_SUCCESS == (ret_code = ca_gpio_discover(address, device_list->dev_rev, &(device_list->device_type)))))
            {
                #ifdef KIT_HAL_SWI2
                device_list->address = address;
                device_list->bus_type = DEVKIT_IF_SWI2;
                #else
                device_list->address = address;
                device_list->bus_type = DEVKIT_IF_SWI;
                #endif

                (*dev_count)++;
                if (*dev_count == MAX_DISCOVER_DEVICES)
                {
                    break;
                }
                device_list++;
            }
        }
    }
}

/** \brief HAL implementation of bit banging receive from HARMONY
 * \param[in]    iface          Device to interact with.
 * \param[in]    word_address   device transaction type
 * \param[out]   rxdata         Data received will be returned here.
 * \param[in,out] rxlength      As input, the size of the rxdata buffer.
 *                              As output, the number of bytes received.
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status hal_gpio_receive(uint32_t device_addr, uint8_t *rxdata, uint16_t *rxlength)
{
    enum kit_protocol_status status;
    int retries;

    if ((NULL == rxlength) || (NULL == rxdata))
    {
        return KIT_STATUS_INVALID_PARAM;
    }

    #ifdef KIT_HAL_SWI2
    device_addr = get_slave_addr_1wire((uint8_t)device_addr, KIT_GPIO_READ);
    start_stop_cond_1wire();
    #else
    device_addr = KIT_SWI_TX_WORD_ADDR;
    #endif

    retries = KIT_EMERALD_RX_RETRY;
    do
    {
        if(KIT_STATUS_SUCCESS == (status = gpio_send_bytes((uint8_t *) &device_addr, sizeof(uint8_t))))
        {
            /* Reading response length byte */
            if(KIT_STATUS_SUCCESS == (status = gpio_receive_bytes(&rxdata[0], KIT_1WIRE_RESPONSE_LENGTH_SIZE)))
            {
                #ifdef KIT_HAL_SWI2
                send_ACK_1wire();
                #endif
                if (rxdata[0] >= KIT_MIN_RESPONSE_LENGTH)
                {
                    if (*rxlength < rxdata[0])
                    {
                        status = KIT_STATUS_SMALL_BUFFER;
                        break;
                    }
                    else
                    {
                        /* Reading remaining response */
                        if(KIT_STATUS_SUCCESS == (status = gpio_receive_bytes(&rxdata[1], rxdata[0] - KIT_1WIRE_RESPONSE_LENGTH_SIZE)))
                        {
                            #ifdef KIT_HAL_SWI2
                            send_NACK_1wire();
                            #endif
                            *rxlength = rxdata[0];
                        }
                    }
                }
                else
                {
                    status = KIT_STATUS_COMM_FAIL;
                }
            }
        }
    } while ((retries-- > 0) && (status == KIT_STATUS_COMM_FAIL));

#ifdef KIT_HAL_SWI2
    start_stop_cond_1wire();
#endif

    return status;
}

/** \brief send sleep command
 * \param[in] iface  interface to logical device to sleep
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status hal_gpio_sleep(uint32_t device_addr)
{
    uint8_t word_address;
    uint16_t word_addr_length = 1;

    #ifdef KIT_HAL_SWI2
    word_address = KIT_1WIRE_SLEEP_WORD_ADDR;
    #else
    word_address = KIT_SWI_SLEEP_WORD_ADDR;
    #endif

    return hal_gpio_send(device_addr, &word_address, &word_addr_length);
}

/** \brief Put the device in idle mode
 * \param[in] iface  interface to logical device to idle
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status hal_gpio_idle(uint32_t device_addr)
{
    #ifdef KIT_HAL_SWI2
    return hal_gpio_sleep(device_addr);
    #else
    return hal_gpio_send(KIT_SWI_IDLE_WORD_ADDR, NULL, 0);
    #endif
}

/** \brief send wake token
 * \param[in] iface  interface to logical device to wakeup
 * \return KIT_WAKE_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status hal_gpio_wake(uint32_t device_addr)
{
    enum kit_protocol_status status;

    #ifdef KIT_HAL_SWI2
    status = check_wake_1wire((uint8_t)device_addr);
    #else
    generate_wake_condition();
    status = check_wake_swi();
    #endif
    return status;
}

/** \brief releases resource if no more communication
 * \param[in] hal_data - opaque pointer to hal data structure - known only to the HAL implementation
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status hal_gpio_release(void *hal_data)
{
    return KIT_STATUS_SUCCESS;
}

/** \brief Implementation of talk command
 * \param[in] device_addr   device address
 * \param[inout] data       As input, reference to txdata (send command)
 *                          As output, reference to rxdata (receive response)
 * \param[inout] length     As input, the size of the txdata buffer.
 *                          As output, the number of bytes received.
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status hal_gpio_talk(uint32_t device_addr, uint8_t* data, uint16_t* length)
{
    uint16_t rx_length;
    enum kit_protocol_status ret_code;

    rx_length = *length;

    ret_code = gpio_interface_talk(device_addr, data, length, &rx_length);

    *length = rx_length;

    return ret_code;
}

/** \brief The function discover CryptoAuth devices connected on I2C bus
 * \param[in]    device_addr   device I2C address
 * \param[out]   device_rev    device revision number returned here
 * \param[out]   dev_type      device type returned here
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status ca_gpio_discover(uint8_t device_addr, uint8_t* device_rev, device_type_t* dev_type)
{
    enum kit_protocol_status ret_code = KIT_STATUS_FAILURE;
    //Setting buffer size 1 byte extra as hal adds code to the buffer
    uint8_t device_info[] = {0x07, 0x30, 0x00, 0x00, 0x00, 0x03, 0x5D, 0x00};
    uint16_t tx_length = sizeof(device_info)-1;
    uint16_t rx_length = sizeof(device_info);

    if ((ret_code = gpio_interface_talk(device_addr, device_info, &tx_length, &rx_length)) == KIT_STATUS_SUCCESS)
    {
        ret_code = KIT_STATUS_FAILURE;
        if (check_sha_ecc_crc(device_info))
        {
            ret_code = KIT_STATUS_SUCCESS;
            memcpy(device_rev, &device_info[1], 4);
            *dev_type = sha_ecc_device_type(device_rev);
        }
    }

    return ret_code;
}

/** \brief The function send a command and receive response for the same
 * \param[in] device_addr   device I2C address
 * \param[inout] data       As input, reference to txdata (send command)
 *                          As output, reference to rxdata (receive response)
 * \param[in] tx_length     reference to data buffer size
 * \param[inout] rx_length  As input, the size of the rxdata buffer.
 *                          As output, the number of bytes received.
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status gpio_interface_talk(uint32_t device_addr, uint8_t* data,
                                            uint16_t* tx_length, uint16_t* rx_length)
{
    enum kit_protocol_status ret_code;
    uint8_t *temp;

    temp = data;
    temp++;
    memmove(temp, data, *tx_length);
    *data = KIT_1WIRE_COMMAND_WORD_ADDR; // Add word address command for cryptoauth devices
    *tx_length = *tx_length + 1;

    uint32_t execution_or_wait_time = 2;
    uint32_t max_delay_count = 1000;

    if ((ret_code = hal_gpio_send(device_addr, data, tx_length)) == KIT_STATUS_SUCCESS)
    {
        atca_delay_ms(5);
        memset(data, 0, *rx_length);
        do
        {
            if ((ret_code = hal_gpio_receive(device_addr, data, rx_length)) == KIT_STATUS_SUCCESS)
            {
                break;
            }
            atca_delay_ms(execution_or_wait_time);
        }
        while (max_delay_count-- > 0);
    }

    return ret_code;
}

/** \brief Function to send the specified number of bytes through GPIO bit banging
 * \param[in] cfg           Driver interface configurations
 * \param[in] txdata        pointer pointing bytes to send
 * \param[in] txlength      number of bytes to send
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
static enum kit_protocol_status gpio_send_bytes(uint8_t *txdata, uint16_t txlength)
{
    uint8_t bit_mask;
    uint8_t count;
    #ifdef KIT_HAL_SWI2
    bool bit_value;
    #endif
    protocol_type proto_type;
    enum kit_protocol_status status = KIT_STATUS_INVALID_PARAM;

    if (txdata == NULL)
    {
        return status;
    }
    #ifdef KIT_HAL_SWI2
    proto_type = KIT_PROTOCOL_1WIRE;
    #else
    proto_type = KIT_PROTOCOL_SWI;
    #endif

    /* Disabling interrupts */
    __disable_irq();
    for (count = 0; count < txlength; count++)
    {
        #ifdef KIT_HAL_SWI2
        bit_mask = KIT_1WIRE_BIT_MASK;
        #else
        bit_mask = KIT_SWI_BIT_MASK;
        #endif
        while (bit_mask > 0)
        {
            /* if the next bit transmitted is a logic '1'	*/
            if (bit_mask & txdata[count])
            {
                status = send_logic_bit(KIT_GPIO_LOGIC_BIT1);
            }
            /* if the next bit transmitted is a logic '0'	*/
            else
            {
                status = send_logic_bit(KIT_GPIO_LOGIC_BIT0);
            }

            #ifdef KIT_HAL_SWI2
            bit_mask = bit_mask >> 1;
            #else
            bit_mask = bit_mask << 1;
            #endif
        }
        #ifdef KIT_HAL_SWI2
        if ((status == KIT_STATUS_SUCCESS) && (proto_type == KIT_PROTOCOL_1WIRE))
        {
            read_data_ACK_1wire(&bit_value);
            /* check for ACK/NACK */
            if (bit_value) /* if a NAK is detected */
            {
                /* device failed to send ACK */
                status = KIT_STATUS_COMM_FAIL;
                break;
            }
            tRCV0_DLY; /* slave recovery time delay (same for logic'0' and logic '1') */
        }
        #endif
    }
    /* Enabling interrupts */
    __enable_irq();

    return status;
}

/** \brief Function to send logic bit 1 or 0 over GPIO using 1WIRE
 * \param[in] cfg           Driver interface configurations
 * \param[in] bit_value     Logical bit value to be send
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
static enum kit_protocol_status send_logic_bit(bool bit_value)
{
    const uint8_t* timings;
    const uint8_t logic1_swi_timings[] = {4, 26};
    const uint8_t logic1_1wire_timings[] = {1, 41};
    const uint8_t logic0_swi_timings[] = {4, 34, 4, 4};
    const uint8_t logic0_1wire_timings[] = {11, 31};
    protocol_type proto_type;

    #ifdef KIT_HAL_SWI2
    proto_type = KIT_PROTOCOL_1WIRE;
    #else
    proto_type = KIT_PROTOCOL_SWI;
    #endif

    if(bit_value == KIT_GPIO_LOGIC_BIT1)
    {
        timings = (proto_type == KIT_PROTOCOL_1WIRE) ? logic1_1wire_timings : logic1_swi_timings;
        SWI_1WIRE_GPIO_Clear();
        atca_delay_us(*timings++);
        SWI_1WIRE_GPIO_Set();
        atca_delay_us(*timings++);
    }
    else
    {
        timings = (proto_type == KIT_PROTOCOL_1WIRE) ? logic0_1wire_timings : logic0_swi_timings;
        SWI_1WIRE_GPIO_Clear();
        atca_delay_us(*timings++);
        SWI_1WIRE_GPIO_Set();
        atca_delay_us(*timings++);

        #if defined(KIT_HAL_SWI) && !defined(KIT_HAL_SWI2)
        SWI_1WIRE_GPIO_Clear();
        atca_delay_us(*timings++);
        SWI_1WIRE_GPIO_Set();
        atca_delay_us(*timings++);
        #endif
    }

    return KIT_STATUS_SUCCESS;
}

/** \brief Function to receive the response bytes through GPIO bit banging
 * \param[in] rxdata        pointer pointing where received bytes to be stored
 * \param[in] rxlength      number of bytes to receive
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
static enum kit_protocol_status gpio_receive_bytes(uint8_t *rxdata, uint16_t rxlength)
{
    uint8_t bit_mask;
    uint8_t count;
    protocol_type proto_type;
    bool bit_value = 1;

    #ifdef KIT_HAL_SWI2
    proto_type = KIT_PROTOCOL_1WIRE;
    #else
    proto_type = KIT_PROTOCOL_SWI;
    #endif

    __disable_irq();
    for (count = 0; count < rxlength; count++)
    {
        bit_mask = (proto_type == KIT_PROTOCOL_1WIRE) ? KIT_1WIRE_BIT_MASK : KIT_SWI_BIT_MASK;
        while (bit_mask >= 1)
        {
            #ifdef KIT_HAL_SWI2
            if (proto_type == KIT_PROTOCOL_1WIRE)
            {
                SWI_1WIRE_GPIO_Clear();
                /* device is set for high-speed communication */
                tHIGH_SPEED_DLY;
                SWI_1WIRE_GPIO_Set();
                tSWIN_DLY; /* delay to put master read inside the master sampling window */
                read_logic_bit_1wire(&bit_value);
            }
            #endif

            #if defined(KIT_HAL_SWI) && !defined(KIT_HAL_SWI2)
            if (proto_type == KIT_PROTOCOL_SWI)
            {
                read_logic_bit_swi(&bit_value);
            }
            #endif
            if (bit_value) /* if a logic '1' is detected; received "one" bit */
            {
                rxdata[count] |= bit_mask;
            }
            if (proto_type == KIT_PROTOCOL_1WIRE)
            {
                tBIT_DLY;//bit frame duration (tBIT) before reading the next bit
                bit_mask >>= 1;
            }
            else
            {
                bit_mask <<= 1;
            }
        }
        #ifdef KIT_HAL_SWI2
        /* send ACK except for last byte of read --> GO TO send_ACK() */
        if ((count < (rxlength - 1)) && (proto_type == KIT_PROTOCOL_1WIRE)) {
            (void)send_ACK_1wire(cfg);
        }
        #endif
    }
    __enable_irq();

    return KIT_STATUS_SUCCESS;
}

#ifdef KIT_HAL_SWI2
/** \brief Function to generate start or stop condition
 * \param[in] cfg          Driver interface configurations
 * \return  KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
void start_stop_cond_1wire(void)
{
    SWI_1WIRE_GPIO_Set();
    tHTSS_DLY;
}

/** \brief Function to read the data ACK for the transmitted byte
 * \param[in] cfg          Driver interface configurations
 * \param[in] bit_value     Contains logical bit value(ACK or NACK) to be received
 * \return  KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
static void read_data_ACK_1wire(bool *bit_value)
{
    /* this checks for an ACK or NACK from device */
    SWI_1WIRE_GPIO_Clear();
    tRD_DLY;
    SWI_1WIRE_GPIO_Set();
    tLOW1_DLY;
    read_logic_bit_1wire(bit_value);
}

/** \brief Function to discover the available devices in the bus
 * \param[in] cfg          Driver interface configurations
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
static enum kit_protocol_status device_discovery_1wire(void)
{
    bool bit_value;
    enum kit_protocol_status status = KIT_STATUS_INVALID_PARAM;

    SWI_1WIRE_GPIO_Set();
    tRRT_DLY;
    SWI_1WIRE_GPIO_Clear();
    tDRR_DLY;
    SWI_1WIRE_GPIO_Set();
    tDACK_DLY;

    read_logic_bit_1wire(&bit_value);
    status = (bit_value == ((bool) KIT_GPIO_ACK)) ? KIT_STATUS_SUCCESS : KIT_STATUS_NO_DEVICE;

    return status;
}

/** \brief Function to generate wake condition
 * \param[in] cfg          Driver interface configurations
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
static void generate_wake_condition(void)
{
    SWI_1WIRE_GPIO_Clear();
    atca_delay_us(60);
    SWI_1WIRE_GPIO_Set();
    atca_delay_ms(KIT_EMERALD_WAKE_DELAY);
}


/** \brief Function to check wake condition for 1WIRE
 * \param[in] cfg          Driver interface configurations
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
static enum kit_protocol_status check_wake_1wire(uint8_t device_addr)
{
    enum kit_protocol_status status;
    uint8_t dev_addr;

    status = device_discovery_1wire();
    if (status == KIT_STATUS_NO_DEVICE)
    {
        generate_wake_condition();
        start_stop_cond_1wire();
        dev_addr = get_slave_addr_1wire(device_addr, KIT_GPIO_WRITE);
        status = gpio_send_bytes(&dev_addr, sizeof(dev_addr));
        start_stop_cond_1wire();
    }

    return status;
}

/** \brief Function to read the data ACK for the transmitted byte
 * \param[in] dev_addr      7 bit device address
 * \param[in] oper          indicates read or write operation
 * \return  8 bit device address for write or read operation
 */
static uint8_t get_slave_addr_1wire(uint8_t dev_addr, uint8_t oper)
{
    return ((dev_addr << 1) | oper);
}

/** \brief Function to read the logic bit 1 or 0
 * \param[in] cfg          Driver interface configurations
 * \param[in] bit_value    Contains hogical bit value to be received
 * \return  KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
static void read_logic_bit_1wire(bool *bit_value)
{
    /* Changing the PIN direction as Input */
    SWI_1WIRE_GPIO_InputEnable();
    *bit_value = (bool) SWI_1WIRE_GPIO_Get();
    /* Changing the PIN direction as Output */
    SWI_1WIRE_GPIO_OutputEnable();
}
#endif /* End of KIT_HAL_SWI2 */

#if defined(KIT_HAL_SWI) && !defined(KIT_HAL_SWI2)
/** \brief Function to read the logic bit 1 or 0
 * \param[in] cfg          Driver interface configurations
 * \param[in] bit_value     Contains logical bit value to be received
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
static enum kit_protocol_status read_logic_bit_swi(bool *bit_value)
{
    int8_t timeout_count;
    bool current_state = true, prev_state = true;
    uint8_t bit_count = 0;
    enum kit_protocol_status status = KIT_STATUS_FAILURE;

    do
    {
        //wait for start bit
        timeout_count = 90/2;
        while (timeout_count-- >= 0)
        {
            current_state = (bool)SWI_1WIRE_GPIO_Get();
            if (current_state != prev_state)
            {
                prev_state = current_state;
                if (!current_state)
                {
                    break;
                }

            }
            atca_delay_us(2);
        }

        if (timeout_count <= 0)
        {
            status = KIT_STATUS_RX_NO_RESPONSE;
            break;
        }

        //Read bit
        timeout_count = 40/2;
        while (timeout_count-- >= 0)
        {
            current_state = (bool)SWI_1WIRE_GPIO_Get();
            if (current_state != prev_state)
            {
                prev_state = current_state;
                if (current_state)
                {
                    bit_count++;
                }

            }
            atca_delay_us(2);
        }

        if (bit_count == 2)
        {
            *bit_value= 0;
        }
        else if (bit_count == 1)
        {
            *bit_value = 1;
        }
        else
        {
            status = KIT_STATUS_RX_FAIL;
        }
    }
    while (0);

    return status;
}

/** \brief Function to check wake condition for SWI
 * \param[in] cfg          Driver interface configurations
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
static enum kit_protocol_status check_wake_swi(void)
{
    uint8_t data[4] = { 0x00, 0x00, 0x00, 0x00 };
    uint16_t rxlength  = sizeof(data);
    const uint8_t expected_response[4] = { 0x04, 0x11, 0x33, 0x43 };
    const uint8_t selftest_fail_resp[4] = { 0x04, 0x07, 0xC4, 0x40 };

    if (gpio_receive_bytes(data, rxlength) == KIT_STATUS_SUCCESS)
    {
        if (memcmp(data, expected_response, 4) == 0)
       {
           return KIT_STATUS_SUCCESS;
       }
       if (memcmp(data, selftest_fail_resp, 4) == 0)
       {
           return KIT_STATUS_FAILURE;
       }
    }
    return KIT_STATUS_FAILURE;
}
#endif /* KIT_HAL_SWI */
