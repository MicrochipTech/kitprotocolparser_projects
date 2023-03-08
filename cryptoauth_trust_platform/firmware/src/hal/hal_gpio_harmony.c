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

static enum kit_protocol_status device_discovery_1wire(void);
static enum kit_protocol_status gpio_send_bytes(uint8_t *txdata, uint16_t txlength);
static inline void send_logic_bit(bool bit_value);

/** \brief Function to generate start or stop condition
 * \param[in] cfg          Driver interface configurations
 * \return  KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
void inline start_stop_cond_1wire(void)
{
    SWI_1WIRE_GPIO_Set();
    tHTSS_DLY;
}

/** \brief Function to read the data ACK for the transmitted byte
 * \param[in] dev_addr      7 bit device address
 * \param[in] oper          indicates read or write operation
 * \return  8 bit device address for write or read operation
 */
static uint8_t inline get_slave_addr_1wire(uint8_t dev_addr, uint8_t oper)
{
    return ((dev_addr) | oper);
}

/** \brief Function to send logic bit 1 or 0 over GPIO using 1WIRE
 * \param[in] cfg           Driver interface configurations
 * \param[in] bit_value     Logical bit value to be send
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
static inline void send_logic_bit(bool bit_value)
{
    const uint8_t* timings;
    const uint8_t logic1_1wire_timings[] = {1, 8};
    const uint8_t logic0_1wire_timings[] = {6, 3};

    timings = (bit_value == KIT_GPIO_LOGIC_BIT1) ? logic1_1wire_timings : logic0_1wire_timings;

    SWI_1WIRE_GPIO_Clear();
    atca_delay_us(*timings++);
    SWI_1WIRE_GPIO_Set();
    atca_delay_us(*timings++);
}

/** \brief Function to read the logic bit 1 or 0
 * \param[in] cfg          Driver interface configurations
 * \param[in] bit_value    Contains hogical bit value to be received
 * \return  KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
static void inline read_logic_bit_1wire(bool *bit_value)
{
    /* Changing the PIN direction as Input */
    SWI_1WIRE_GPIO_InputEnable();
    *bit_value = (bool) SWI_1WIRE_GPIO_Get();
    /* Changing the PIN direction as Output */
    SWI_1WIRE_GPIO_OutputEnable();
}

/** \brief Function to read the data ACK for the transmitted byte
 * \param[in] cfg          Driver interface configurations
 * \param[in] bit_value     Contains logical bit value(ACK or NACK) to be received
 * \return  KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
static void inline read_data_ACK_1wire(bool *bit_value)
{
    /* this checks for an ACK or NACK from device */
    SWI_1WIRE_GPIO_Clear();
    tRD_DLY;
    SWI_1WIRE_GPIO_Set();
    tSWIN_DLY;
    read_logic_bit_1wire(bit_value);
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
/** \brief send sleep command
 * \param[in] iface  interface to logical device to sleep
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status hal_gpio_sleep(uint32_t device_addr)
{
    uint8_t word_address;
    uint16_t word_addr_length = 1;

    word_address = KIT_1WIRE_SLEEP_WORD_ADDR;

    return hal_gpio_send(device_addr, &word_address, &word_addr_length);
}

/** \brief Put the device in idle mode
 * \param[in] iface  interface to logical device to idle
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status hal_gpio_idle(uint32_t device_addr)
{
    return hal_gpio_sleep(device_addr);
}

/** \brief send wake token
 * \param[in] iface  interface to logical device to wakeup
 * \return KIT_WAKE_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status hal_gpio_wake(uint32_t device_addr)
{
    return check_wake_1wire((uint8_t)device_addr);
}

/** \brief releases resource if no more communication
 * \param[in] hal_data - opaque pointer to hal data structure - known only to the HAL implementation
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status hal_gpio_release(void *hal_data)
{
    return KIT_STATUS_SUCCESS;
}

/** \brief Function to receive the response bytes through GPIO bit banging
 * \param[in] rxdata        pointer pointing where received bytes to be stored
 * \param[in] rxlength      number of bytes to receive
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
static inline enum kit_protocol_status gpio_receive_bytes(uint8_t *rxdata, uint16_t rxlength)
{
    uint8_t bit_mask;
    uint8_t count;
    bool bit_value = 1;

    __disable_irq();
    for (count = 0; count < rxlength; count++)
    {
        bit_mask = KIT_1WIRE_BIT_MASK;
        while (bit_mask >= 1)
        {
            SWI_1WIRE_GPIO_Clear();
            tRD_DLY; /* the amount of time the master must continue to drive the SI/O line low */
            SWI_1WIRE_GPIO_Set();
            tSWIN_DLY; /* delay to put master read inside the master sampling window */
            read_logic_bit_1wire(&bit_value);

            rxdata[count] <<= 1;
            rxdata[count] |= bit_value;

            tBIT_DLY; //bit frame duration (tBIT) before reading the next bit
            bit_mask >>= 1;

        }
        /* send ACK except for last byte of read --> GO TO send_ACK() */
        if ((count < (rxlength - 1)) || (KIT_1WIRE_RESPONSE_LENGTH_SIZE == rxlength)) 
        {
            (void)send_ACK_1wire(cfg);
        }
    }
    __enable_irq();

    return KIT_STATUS_SUCCESS;
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
    bool bit_value;
    enum kit_protocol_status status = KIT_STATUS_INVALID_PARAM;

    if (txdata == NULL)
    {
        return status;
    }

    status = KIT_STATUS_SUCCESS;
    /* Disabling interrupts */
    __disable_irq();
    for (count = 0; count < txlength; count++)
    {

        bit_mask = KIT_1WIRE_BIT_MASK;
        while (bit_mask > 0)
        {
            send_logic_bit(bit_mask & txdata[count]);
            bit_mask = bit_mask >> 1;
        }

        read_data_ACK_1wire(&bit_value);
        /* check for ACK/NACK */
        if (bit_value) /* if a NAK is detected */
        {
            /* device failed to send ACK */
            status = KIT_STATUS_COMM_FAIL;
            break;
        }
        tBIT_DLY; /* slave recovery time delay (same for logic'0' and logic '1') */

    }
    /* Enabling interrupts */
    __enable_irq();

    return status;
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
    uint8_t dev_write_addr;


    start_stop_cond_1wire();
    dev_write_addr = get_slave_addr_1wire((uint8_t)device_addr, KIT_GPIO_WRITE);
    if (KIT_STATUS_SUCCESS == (status = gpio_send_bytes((uint8_t *)&dev_write_addr, sizeof(dev_write_addr))))
    {
        //if(KIT_STATUS_SUCCESS == (status = gpio_send_bytes((uint8_t *)&word_address, sizeof(uint8_t))))
        if (txdata)
        {
            status = gpio_send_bytes(txdata, *txlength);
        }
    }
    start_stop_cond_1wire();

    return status;
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

    device_addr = get_slave_addr_1wire((uint8_t)device_addr, KIT_GPIO_READ);
    start_stop_cond_1wire();

    retries = KIT_EMERALD_RX_RETRY;
    do
    {
        if (KIT_STATUS_SUCCESS == (status = gpio_send_bytes((uint8_t *)&device_addr, 1)))
        {
            /* Reading response length byte */
            if (KIT_STATUS_SUCCESS == (status = gpio_receive_bytes(&rxdata[0], KIT_1WIRE_RESPONSE_LENGTH_SIZE)))
            {
                if (rxdata[0] >= KIT_MIN_RESPONSE_LENGTH)
                {
                    if ((rxdata[0] >= 0xFF))
                    {
                        status = KIT_STATUS_SMALL_BUFFER;
                        break;
                    }
                    else
                    {
                        /* Reading remaining response */
                        if (KIT_STATUS_SUCCESS == (status = gpio_receive_bytes(&rxdata[1], rxdata[0] - KIT_1WIRE_RESPONSE_LENGTH_SIZE)))
                        {
                            send_NACK_1wire();
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

    start_stop_cond_1wire();

    return status;
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

    uint32_t execution_or_wait_time = (uint32_t)get_ecc204_opcode_execution_delay(data[0x02]);

    if ((ret_code = hal_gpio_send(device_addr, data, tx_length)) == KIT_STATUS_SUCCESS)
    {
        atca_delay_ms(execution_or_wait_time);
        memset(data, 0, *rx_length);
        {
            ret_code = hal_gpio_receive(device_addr, data, rx_length);
        }

    }

    return ret_code;
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
    uint8_t device_info[CMD_MAX_BUFFER_LEN] = {0x07, 0x30, 0x00, 0x00, 0x00, 0x03, 0x5D};
    uint16_t tx_length = device_info[0];
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

/** \brief Discovery Response sequence is used by the master to perform a general
bus call to determine if a device is present on the bus
 * \param[in]    iface          Device to interact with.
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
void hal_gpio_discover(device_info_t* device_list, uint8_t* dev_count)
{            
    enum kit_protocol_status ret_code = KIT_STATUS_COMMAND_NOT_SUPPORTED;
    (void)device_discovery_1wire();

    uint8_t address;
    for (address = 254; address > 2; address -= 2)
    {
        //Probe for device presence
        if (KIT_STATUS_SUCCESS == (ret_code = hal_gpio_send(address, NULL, NULL)))
        {
            (void)ca_gpio_discover(address, device_list->dev_rev, &(device_list->device_type));
                
            device_list->address = address;
            device_list->bus_type = DEVKIT_IF_SWI2;
            (*dev_count)++;
            if (*dev_count == MAX_DISCOVER_DEVICES)
            {
                break;
            }
            device_list++;
        }
    }
}