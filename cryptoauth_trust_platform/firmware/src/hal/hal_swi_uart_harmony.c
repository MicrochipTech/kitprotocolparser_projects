/**
 * \file
 * \brief ATCA Hardware abstraction layer for SWI UART.
 *
 * \copyright (c) 2015-2018 Microchip Technology Inc. and its subsidiaries.
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

/* NOTE: i)   As discussed with MCU32 team, it is advisory to set the USART interrupt higher than USB interrupt. Because
              there might be USART data loss due to how many USB interrupt occurs and how much time spend on that.
         ii)  This hal works with USART ring buffer mode only
         iii) Set Tx ring buffer size as 200 bytes and set Rx ring buffer size as 200 bytes

*/

#include <stdint.h>
#include "definitions.h"
#include "hal_delay.h"
#include "kit_protocol/kit_protocol_status.h"
#include "utilities/crc/crc_engines.h"
#include "hal_harmony.h"

#define CA_SWI_CMD_MAX_RESP_SIZE   (200)
void callback_check_for_errors(SERCOM_USART_EVENT event, uintptr_t context);

USART_SERIAL_SETUP serial_setup = {
    .parity    = USART_PARITY_NONE,
    .dataWidth = USART_DATA_7_BIT,
    .stopBits  = USART_STOP_1_BIT
};

volatile bool is_received_an_error = false;

/** \brief The function is rx interrupt callback function which reports an receive
 *         status of rx data. If an error occurred during, is_received_an_error
 *         variable will be set.
 *
 *  \param[in] event          Event status
 *  \param[in] context        context from plib driver
 */
void callback_check_for_errors(SERCOM_USART_EVENT event, uintptr_t context)
{
    (void)event;
    (void)context;
     // read call back will be called on both error interrupt handler and read success
    if (SERCOM0_USART_ErrorGet() != USART_ERROR_NONE)
    {
        is_received_an_error = true;
    }
}

/** \brief The function flush the unread data from rx ring buffer
 */
void flush_rx_ringbuffer(void)
{
    uint8_t dummy_read;

    // Until rx ring buffer gets cleared, read out all data from rx buffer
    while (SERCOM0_USART_ReadCountGet() >= 1)
    {
        SERCOM0_USART_Read(&dummy_read, 1);
    }
}

/**
 * \brief Set SWI baudrate default is 230KHz.
 *
 * \param[in] baudrate  contain new baudrate
 *
 * \return true on success, otherwise false.
 */
bool set_swi_baudrate(uint32_t baudrate)
{
    bool status = false;

    serial_setup.baudRate = baudrate;
    status = SERCOM0_USART_SerialSetup(&serial_setup, SERCOM0_USART_FrequencyGet());

    return status;
}

/**
 * \brief Send one bit as byte using UART for SWI
 * \param[in] bit_data byte equivalent of bit data on SWI
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status swi_uart_send_bit(uint8_t data)
{
    enum kit_protocol_status status = KIT_STATUS_COMM_FAIL;
    int8_t retries = 10;
    uint8_t read_data;

    (void)SERCOM0_USART_ErrorGet();
    while (((SERCOM0_USART_Write(&data, 1)) != 1) && (retries-- > 0));
    if (retries <= 0x00)
    {
        status = KIT_STATUS_TX_TIMEOUT;
    }
    else
    {
        //Nothing to process... Reading to ensure write is complete
        status = swi_uart_receive_bit(&read_data);
        if (KIT_STATUS_SUCCESS == status)
        {
            if (read_data != data)
            {
                status = KIT_STATUS_TX_FAIL;
            }
        }
    }

    return status;
}

/**
 * \brief Receive one bit as byte using UART for SWI
 * \param[in] bit_data byte equivalent of bit data on SWI
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status swi_uart_receive_bit(uint8_t *bit_data)
{
    enum kit_protocol_status status = KIT_STATUS_COMM_FAIL;
    int8_t retries = 10;
    int16_t timeout = 300;

    is_received_an_error = false;
    while ((SERCOM0_USART_ReadCountGet() < 1) && (is_received_an_error == false) && (timeout > 0))
    {
        atca_delay_us(25);
        timeout -= 25;
    }

    if (timeout <= 0)
    {
        status = KIT_STATUS_RX_TIMEOUT;
    }
    else if (is_received_an_error)
    {
        status = KIT_STATUS_RX_FAIL;
    }
    else
    {
        while (((SERCOM0_USART_Read(bit_data, 1)) != 1) && (retries-- > 0));

        if (retries <= 0x00)
        {
            status = KIT_STATUS_RX_TIMEOUT;
        }
        else
        {
            status = KIT_STATUS_SUCCESS;
        }

    }

    return status;
}

/**
 * \brief Send SWI one byte... Sends each bit as byte internally
 *
 * \param[in] data  contain SWI token
 *
 * \return ATCA_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status hal_swi_send_byte(uint8_t data)
{
    uint8_t bit_mask = 0;
    uint8_t bit_data = 0;
    enum kit_protocol_status status = KIT_STATUS_COMM_FAIL;

    for (bit_mask = 1; bit_mask > 0; bit_mask <<= 1)
    {
        bit_data = (bit_mask & data) ? 0x7F : 0x7D;
        if (KIT_STATUS_SUCCESS != (status = swi_uart_send_bit(bit_data)))
        {
            break;
        }
    }
    return status;
}

/**
 * \brief hal_swi_init manages requests to initialize a physical
 *        interface. It manages use counts so when an interface has
 *        released the physical layer, it will disable the interface for
 *        some other use. You can have multiple ATCAIFace instances using
 *        the same bus, and you can have multiple ATCAIFace instances on
 *        multiple swi buses, so hal_swi_init manages these things and
 *        ATCAIFace is abstracted from the physical details.
 */

/**
 * \brief Initialize an SWI interface using given config.
 */
void hal_swi_init(void)
{
    /* register read callback function for RXC interrupt*/
    SERCOM0_USART_ReadCallbackRegister(callback_check_for_errors, 0);
}

/**
 * \brief HAL implementation of SWI post init.
 */
void hal_swi_deinit(void)
{
    // do nothing
}

/**
 * \brief Send Wake flag via SWI.
 *
 * \param[in] device_addr    reference to device address
 *
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status hal_swi_wake(uint32_t device_addr)
{
    bool status = false;
    int8_t retries;
    enum kit_protocol_status ret_code = KIT_STATUS_COMM_FAIL;

    // Clear the rx ring buffer, before transmitting any data, because Tx and Rx are short
    // Tx data will be appeared in Rx ring buffer
    flush_rx_ringbuffer();

    do
    {
        retries = 10;
        status = false;
        while ((status != true) && (retries-- > 0))
            status = set_swi_baudrate((uint32_t)115200);
        if (retries <= 0)
            break;

        retries = 10;
        while ((ret_code != KIT_STATUS_SUCCESS) && (retries-- > 0))
            ret_code = swi_uart_send_bit(SWI_WAKE_TOKEN);
        if (retries <= 0)
            break;

        //Reset to Normal baud rate
        retries = 10;
        status = false;
        while ((status != true) && (retries-- > 0))
            status = set_swi_baudrate((uint32_t)230400);
        if (retries <= 0)
            break;

        // Wait tWHI + tWLO
        atca_delay_ms(3);
    }
    while (0);

    return ret_code;
}

/**
 * \brief Send Sleep flag via SWI.
 *
 * \param[in] device_addr    reference to device address
 *
 * \return KIT_STATUS_SUCCESS
 */
enum kit_protocol_status hal_swi_sleep(uint32_t device_addr)
{
    (void)device_addr;
    return hal_swi_send_byte(SWI_FLAG_SLEEP);
}

/**
 * \brief Send Idle flag via SWI.
 *
 * \param[in] device_addr    reference to device address
 *
 * \return KIT_STATUS_SUCCESS
 */
enum kit_protocol_status hal_swi_idle(uint32_t device_addr)
{
    (void)device_addr;
    return hal_swi_send_byte(SWI_FLAG_IDLE);
}


/**
 * \brief Send byte(s) via SWI.
 *
 * \param[in] device_addr  device address
 * \param[in] txdata       pointer to bytes to send
 * \param[in] txlength     number of bytes to send
 * \return KIT_STATUS_SUCCESS
 */
enum kit_protocol_status hal_swi_send(uint32_t device_addr, uint8_t* txdata, uint16_t* length)
{
    enum kit_protocol_status status = KIT_STATUS_COMM_FAIL;
    uint16_t byte_index;

    (void)device_addr;
    // Clear the rx ring buffer, before transmitting any data, because Tx and Rx are short
    // Tx data will be appeared in Rx ring buffer
    flush_rx_ringbuffer();
    do
    {
        if (KIT_STATUS_SUCCESS != (status = hal_swi_send_byte(SWI_FLAG_CMD)))
        {
            break;
        }

        for (byte_index = 0; byte_index < *length; byte_index++)
        {
            if (KIT_STATUS_SUCCESS != (status = hal_swi_send_byte(*txdata)))
            {
                break;
            }
            txdata++;
        }
    }
    while (0);

    return status;
}

/**
 * \brief Receive byte(s) via SWI.
 * \param[in]    device_addr  device_addr
 * \param[out]   rxdata       Data received will be returned here.
 * \param[inout] rxlength     As input, the size of the rxdata buffer.
 *                            As output, the number of bytes received.
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status hal_swi_receive(uint32_t device_addr, uint8_t *rxdata, uint16_t* rxlength)
{
    int8_t retries = 20;
    enum kit_protocol_status status = KIT_STATUS_COMM_FAIL;
    bool received = false;
    uint8_t bit_mask, bit_data = 0;
    uint8_t count = 0;
    uint8_t *head_buff;
    uint16_t rxdata_max_size = CA_SWI_CMD_MAX_RESP_SIZE;

    *rxlength = 0;
    if (rxdata_max_size < 1)
    {
        return KIT_STATUS_SMALL_BUFFER;
    }

    head_buff = rxdata;
    *head_buff = 0;

    // Read first byte which contains receive packet length
    while ((retries-- > 0) && (received == false))
    {
        // Clear the rx ring buffer, before transmitting any data, because Tx and Rx are short
        // Tx data will be appeared in Rx ring buffer
        flush_rx_ringbuffer();
        
        status = hal_swi_send_byte(SWI_FLAG_TX);
        atca_delay_us(90);

        if (status == KIT_STATUS_SUCCESS)
        {
            for (bit_mask = 1; bit_mask > 0; bit_mask <<= 1)
            {
                bit_data = 0;
                status = swi_uart_receive_bit(&bit_data);
                if (status != KIT_STATUS_SUCCESS)
                {
                    break;
                }
                if ((bit_data ^ 0x7F) < 2)
                {
                    *head_buff |= bit_mask;
                }
            }

            if (*head_buff > 0)
            {
                *rxlength = *head_buff;
                received = true;
            }
        }
    }
    if (retries <= 0)
    {
        return KIT_STATUS_RX_TIMEOUT;
    }

    if (*head_buff < 4)
    {
        return KIT_STATUS_RX_FAIL;
    }

    if (*head_buff > rxdata_max_size)
    {
        return KIT_STATUS_SMALL_BUFFER;
    }

    count = *head_buff - 1;
    head_buff++;

    for (int i = 0; i < count; i++)
    {
        *head_buff = 0;
        for (bit_mask = 1; bit_mask > 0; bit_mask <<= 1)
        {
            bit_data = 0;
            status = swi_uart_receive_bit(&bit_data);
            if (status != KIT_STATUS_SUCCESS)
            {
                break;
            }
            if ((bit_data ^ 0x7F) < 2)
            {
                *head_buff |= bit_mask;
            }
        }
        head_buff++;
    }
    atca_delay_us(TX_DELAY);
    return status;
}

/**
 * \brief Receive byte(s) via SWI.
 * \param[in]    device_addr  device_addr
 * \param[inout] message       Data received will be returned here.
 * \param[inout] length     As input, the size of the rxdata buffer.
 *                            As output, the number of bytes received.
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status hal_swi_talk(uint32_t device_addr, uint8_t* message, uint16_t* length)
{
    uint16_t rx_length = 7;
    enum kit_protocol_status status = KIT_STATUS_COMM_FAIL;
    uint8_t execution_or_wait_time = 2;
    int16_t max_delay_count = 1000;

    do
    {
        if ((status = hal_swi_send(0x00, message, length)) != KIT_STATUS_SUCCESS)
        {
            break;
        }
        atca_delay_ms(5);

        do
        {
            if ((status = hal_swi_receive(0x00, message, &rx_length)) == KIT_STATUS_SUCCESS)
            {
                break;
            }
            atca_delay_ms(execution_or_wait_time);
        }
        while (max_delay_count-- > 0);

    }
    while (0);

    *length = rx_length;
    return status;
}

/** \brief The function discover devices connected on SWI UART bus
 * \param[out]   device_list   discovered device info is returned here
 * \param[out]   dev_count     number of devices discovered count is returned here
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
void hal_swi_discover(device_info_t *device_list, uint8_t* dev_count)
{
    uint8_t dev_pos = 0;
    enum kit_protocol_status ret_code;
    uint8_t info_message[] = { 0x07, 0x30, 0x00, 0x00, 0x00, 0x03, 0x5D };
    uint8_t sha_ecc_wake_response[] = { 0x04, 0x11, 0x33, 0x43 };
    uint8_t device_data[CMD_MAX_BUFFER_LEN] = { 0 };
    uint16_t length;

    *dev_count = 0;

    length = sizeof(sha_ecc_wake_response);
	(void)hal_swi_idle(0x00);
    atca_delay_ms(10);
    (void)hal_swi_wake(0x00);
    atca_delay_ms(30);
    if ((ret_code = hal_swi_receive(0x00, device_data, &length)) == KIT_STATUS_SUCCESS)
    {
        if (memcmp(device_data, sha_ecc_wake_response, sizeof(sha_ecc_wake_response)) == 0)
        {
            memcpy(device_data, info_message, sizeof(info_message));
            length = sizeof(info_message);
            if ((ret_code = hal_swi_talk(0x00, device_data, &length) == KIT_STATUS_SUCCESS))
            {
                if (check_sha_ecc_crc(device_data))
                {
                    //Process device revision response and mark device presence
                    memcpy(device_list->dev_rev, &device_data[1], 4);
                    device_list->address = dev_pos;
                    device_list->bus_type = DEVKIT_IF_SWI;
                    device_list->device_type = sha_ecc_device_type(device_list->dev_rev);
                    device_list->header = MICROBUS_HEADER;
                    (*dev_count)++;
                    dev_pos++;
                }
            }
        }
    }
    (void)hal_swi_idle(0x00);

    hal_swi_deinit();
}