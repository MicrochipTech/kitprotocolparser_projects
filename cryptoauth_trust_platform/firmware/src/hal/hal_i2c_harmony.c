/**
 * \file
 * \brief KIT Hardware abstraction layer for SAMD21 I2C harmony driver.
 *
 *
 * Prerequisite: add SERCOM I2C Master Polled support to application in Atmel Studio
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
#include <string.h>
#include <stdio.h>

#include "definitions.h"
#include "hal_harmony.h"
#include "utilities/crc/crc_engines.h"
#include "kit_protocol/kit_protocol_interpreter.h"
#include "hal_delay.h"

#define max(a, b)           (((a) > (b)) ?  (a) : (b))

/** \defgroup hal_ Hardware abstraction layer (hal_)
 *
 * \brief
 * These methods define the hardware abstraction layer for communicating with a CryptoAuth device & TA100
 *
   @{ */

/** \brief
    - this HAL implementation assumes you've included the START Twi libraries in your project, otherwise,
    the HAL layer will not compile because the START TWI drivers are a dependency *
 */

/** \brief hal_i2c_init manages requests to initialize a physical interface.  it manages use counts so when an interface
 * has released the physical layer, it will disable the interface for some other use.
 * You can have multiple ATCAIFace instances using the same bus, and you can have multiple ATCAIFace instances on
 * multiple i2c buses, so hal_i2c_init manages these things and ATCAIFace is abstracted from the physical details.
 */

/** \brief initialize an I2C interface using given config
 * \return None
 */
void hal_i2c_init(void)
{
    // do nothing
}

/** \brief HAL implementation of I2C deinit
 * \return None
 */
void hal_i2c_deinit(void)
{
    // do nothing
}


/** \brief method to change the bus speec of I2C
 * \param[in] speed  baud rate (typically 100000 or 400000)
 */
void change_i2c_speed(uint32_t speed)
{
    SERCOM_I2C_TRANSFER_SETUP setup;

    setup.clkSpeed = speed;

    /* Make sure I2C is not busy before changing the I2C clock speed */
    while (SERCOM2_I2C_IsBusy() == true);

    SERCOM2_I2C_TransferSetup(&setup, 0);
}

/** \brief send wake up token to CryptoAuth device
 * \param[in] device_addr   device I2C address
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status hal_i2c_wake(uint32_t device_addr)
{
    //int retries = 20;
    uint32_t bdrt = 400000;
    uint8_t data[4];

    data[0] = 0x01;

    if (bdrt != 100000)   // if not already at 100KHz, change it
    {
        change_i2c_speed(100000);
    }

    while (SERCOM2_I2C_IsBusy() == true);

    if ((g_selected_device_type != DEVICE_TYPE_ECC204) && (g_selected_device_type != DEVICE_TYPE_TA010) && (g_selected_device_type != DEVICE_TYPE_SHA104) && (g_selected_device_type != DEVICE_TYPE_SHA105) && (g_selected_device_type != DEVICE_TYPE_SHA106) && (g_selected_device_type != DEVICE_TYPE_RNG90) && (g_selected_device_type != DEVICE_TYPE_ECC206))
    {
        // Send the 00 address as the wake pulse; part will NACK, so don't check for status
        SERCOM2_I2C_Write(0x00, (uint8_t*)&data[0], 1);
    }
    else
    {
        SERCOM2_I2C_Write((uint16_t)device_addr, NULL, 0);
    }
    

    /* Wait for the I2C transfer to complete */
    while (SERCOM2_I2C_IsBusy() == true);

    // wait tWHI + tWLO which is configured based on device type and configuration structure
    atca_delay_ms(3);

    // if necessary, revert baud rate to what came in.
    if (bdrt != 100000)
    {
        change_i2c_speed(bdrt);
    }

    return KIT_STATUS_SUCCESS;
}

/** \brief send idle command to  CryptoAuth device
 * \param[in] device_addr   device I2C address
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status hal_i2c_idle(uint32_t device_addr)
{
    //ATCAIfaceCfg* cfg = atgetifacecfg(iface);
    uint8_t data[1];

    data[0] = 0x02;  // idle word address value

    /* Wait for the I2C bus to be ready */
    while (SERCOM2_I2C_IsBusy() == true);

    if (SERCOM2_I2C_Write(device_addr>>1, (uint8_t*)&data[0], 1) == true)
    {
        /* Wait for the I2C transfer to complete */
        while (SERCOM2_I2C_IsBusy() == true);

        /* Transfer complete. Check if the transfer was successful */
        if (SERCOM2_I2C_ErrorGet() != SERCOM_I2C_ERROR_NONE)
        {
            return KIT_STATUS_COMM_FAIL;
        }
    }
    else
    {
        return KIT_STATUS_COMM_FAIL;
    }

    return KIT_STATUS_SUCCESS;
}

/** \brief send sleep command to CryptoAuth device
 * \param[in] device_addr   device I2C address
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status hal_i2c_sleep(uint32_t device_addr)
{
    uint8_t data[4];

    data[0] = 0x01;  // sleep word address value

    /* Wait for the I2C bus to be ready */
    while (SERCOM2_I2C_IsBusy() == true);

    if (SERCOM2_I2C_Write(device_addr>>1, (uint8_t*)&data[0], 1) == true)
    {
        /* Wait for the I2C transfer to complete */
        while (SERCOM2_I2C_IsBusy() == true);

        /* Transfer complete. Check if the transfer was successful */
        if (SERCOM2_I2C_ErrorGet() != SERCOM_I2C_ERROR_NONE)
        {
            return KIT_STATUS_COMM_FAIL;
        }
    }
    else
    {
        return KIT_STATUS_COMM_FAIL;
    }

    return KIT_STATUS_SUCCESS;
}

/** \brief HAL implementation of I2C send over START
 * \param[in] device_addr   device I2C address
 * \param[in] txdata        pointer to space to bytes to send
 * \param[in] txlength      number of bytes to send
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status hal_i2c_send(uint32_t device_addr, uint8_t *txdata, uint16_t* txlength)
{
    enum kit_protocol_status status = KIT_STATUS_COMM_FAIL;

    do
    {
        while (SERCOM2_I2C_IsBusy() == true);

        if (SERCOM2_I2C_Write((device_addr >> 1), txdata, *txlength) == true)
        {
            /* Wait for the I2C transfer to complete */
            while (SERCOM2_I2C_IsBusy() == true);

            /* Transfer complete. Check if the transfer was successful */
            if (SERCOM2_I2C_ErrorGet() != SERCOM_I2C_ERROR_NONE)
            {
                status = KIT_STATUS_COMM_FAIL;
                break;
            }
            else
            {
                status = KIT_STATUS_SUCCESS;
                break;
            }
        }
        else
        {
            status =  KIT_STATUS_TX_FAIL;
            break;
        }
    }
    while (0);

    return status;
}

/** \brief HAL implementation of I2C receive function
 * \param[in]    device_addr   device I2C address
 * \param[out]   rxdata        Data received will be returned here.
 * \param[inout] rxlength      As input, the size of the rxdata buffer.
 *                             As output, the number of bytes received.
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status hal_i2c_receive_peripheral(uint32_t device_addr, uint8_t *rxdata,
                                                    uint16_t rxlength)
{
    enum kit_protocol_status status = KIT_STATUS_COMM_FAIL;

    if (SERCOM2_I2C_Read(device_addr>>1, rxdata, rxlength) == true)
    {
        /* Wait for the I2C transfer to complete */
        while (SERCOM2_I2C_IsBusy() == true);
        /* Transfer complete. Check if the transfer was successful */
        if (SERCOM2_I2C_ErrorGet() == SERCOM_I2C_ERROR_NONE)
        {
            status = KIT_STATUS_SUCCESS;
        }
    }

    return status;
}

/** \brief HAL implementation of I2C receive function for START I2C
 * \param[in]    device_addr   device I2C address
 * \param[out]   rxdata        Data received will be returned here.
 * \param[inout] rxlength      As input, the size of the rxdata buffer.
 *                             As output, the number of bytes received.
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status hal_i2c_receive(uint32_t device_addr, uint8_t *rxdata, uint16_t *rxlength)
{
    enum kit_protocol_status status = KIT_STATUS_COMM_FAIL;
    uint16_t rxdata_max_size = CMD_MAX_RSP_SIZE;
    uint16_t length_size = 1, word_addr_size = 1;
    uint16_t read_length = 0;
    int retries;
    uint8_t word_address = 0xFF;

    if ((NULL == rxlength) || (NULL == rxdata))
    {
        return KIT_STATUS_INVALID_PARAM;
    }

    *rxlength = 0;

    do
    {
        /*Send Word address to device...*/
        if (check_ta_device(g_selected_device_type))
        {
            word_address = rxdata[0];
            length_size = 2;
            retries = 10;
			rxdata_max_size = ((uint16_t)rxdata[1] * 256) + rxdata[2];

            while (((retries--) > 0) && (status != KIT_STATUS_SUCCESS))
            {
                if (KIT_STATUS_SUCCESS != (status = hal_i2c_send(device_addr, &word_address,
                                                                 &word_addr_size)))
                {
                    break;
                }
            }
            if (KIT_STATUS_SUCCESS != status)
            {
                break;
            }
        }

        /*Set read length.. Check for register reads or 1 byte reads*/
        if ((word_address == MAIN_PROCESSOR_RD_CMD) || (word_address == 0xFF))
        {
            /* Read length bytes to know number of bytes to read */
            if (KIT_STATUS_SUCCESS != (status = hal_i2c_receive_peripheral(device_addr, rxdata, length_size)))
            {
                break;
            }
            read_length = length_size == 1 ? rxdata[0] : ((uint16_t)rxdata[0] * 256) + rxdata[1];

            if (read_length > rxdata_max_size)
            {
                status = KIT_STATUS_SMALL_BUFFER;
                break;
            }
            if (read_length < (3+length_size))  //status(1) and CRC(2) size are same for CA and TA, length is variable.
            {
                status = KIT_STATUS_RX_FAIL;
                break;
            }
            if ((check_ta_device(g_selected_device_type) != true) && (read_length >= 0xFF))
            {
                status = KIT_STATUS_RX_NO_RESPONSE;
                break;
            }

            /* Read given length bytes from device */
            if (KIT_STATUS_SUCCESS != (status = hal_i2c_receive_peripheral(device_addr, &rxdata[length_size],
                read_length-length_size)))
            {
                break;
            }
        }
        else if ((word_address == MAIN_PROCESSOR_RD_CSR) || (word_address == FAST_CRYPTO_RD_FSR) ||
                 (rxdata_max_size == 1))
        {
            read_length = 1;
            if (KIT_STATUS_SUCCESS != (status = hal_i2c_receive_peripheral(device_addr, rxdata, read_length)))
            {
                break;
            }
        }
        else
        {
            read_length = rxdata_max_size;
            if (KIT_STATUS_SUCCESS != (status = hal_i2c_receive_peripheral(device_addr, rxdata, read_length)))
            {
                break;
            }
        }
    }
    while (0);

    if (KIT_STATUS_SUCCESS != status)
    {
        read_length = length_size;
    }

    *rxlength = read_length;
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
enum kit_protocol_status i2c_interface_talk(uint32_t device_addr, uint8_t* data,
                                            uint16_t* tx_length, uint16_t* rx_length)
{
    enum kit_protocol_status ret_code;
    uint8_t *temp;
    temp = data;
    temp++;
    memmove(temp, data, *tx_length);
    *data = 0x03; // Add word address command for cryptoauth devices
    *tx_length = *tx_length + 1;
    uint32_t execution_or_wait_time = 2;
    uint32_t max_delay_count = 1000;
    uint16_t data_buf_size = *rx_length;

    if ((ret_code = hal_i2c_send(device_addr, data, tx_length)) == KIT_STATUS_SUCCESS)
    {
        atca_delay_ms(5);
        memset(data, 0, data_buf_size);
        do
        {
            *rx_length = data_buf_size;
            if ((ret_code = hal_i2c_receive(device_addr, data, rx_length)) == KIT_STATUS_SUCCESS)
            {
                break;
            }
            atca_delay_ms(execution_or_wait_time);
        }
        while (max_delay_count-- > 0);
    }

    return ret_code;
}

/** \brief Implementation of talk command
 * \param[in] device_addr   device I2C address
 * \param[inout] data       As input, reference to txdata (send command)
 *                          As output, reference to rxdata (receive response)
 * \param[inout] length     As input, the size of the txdata buffer.
 *                          As output, the number of bytes received.
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status hal_i2c_talk(uint32_t device_addr, uint8_t* data, uint16_t* length)
{
    uint16_t rx_length;
    enum kit_protocol_status ret_code;

    rx_length = *length;

    ret_code = i2c_interface_talk(device_addr, data, length, &rx_length);

    *length = rx_length;

    return ret_code;
}

/** \brief The function read ta100 device info response
 * \param[in]    device_addr   device I2C address
 * \param[out]   rxdata        Data received will be returned here.
 * \param[inout] rx_size       As input, the size of the rxdata buffer.
 *                             As output, the number of bytes received.
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status read_ta_resp(uint32_t device_addr, uint8_t* rxdata, uint16_t* rx_size)
{
    enum kit_protocol_status status = KIT_STATUS_COMM_FAIL;
    uint8_t max_delay_count = 10;
    uint8_t info_resp_packet[3] = {MAIN_PROCESSOR_RD_CMD, 0x00, 0x0D};

    do
    {
        // Initialize buffer
        memcpy(&rxdata[0], &info_resp_packet[0], 3);
        if (KIT_STATUS_SUCCESS == (status = hal_i2c_receive(device_addr, rxdata, rx_size)))
        {
            break;
        }
    }
    while ((max_delay_count--) > 0);

    return status;
}

/** \brief The function discover CryptoAuth devices connected on I2C bus
 * \param[in]    device_addr   device I2C address
 * \param[out]   device_rev    device revision number returned here
 * \param[out]   dev_type      device type returned here
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status ca_discover(uint8_t device_addr, uint8_t* device_rev, device_type_t* dev_type)
{
    enum kit_protocol_status ret_code = KIT_STATUS_FAILURE;
    uint8_t device_info[CMD_MAX_BUFFER_LEN] = {0x07, 0x30, 0x00, 0x00, 0x00, 0x03, 0x5D};
    uint16_t tx_length = device_info[0];
    uint16_t rx_length = sizeof(device_info);
    
    if ((ret_code = i2c_interface_talk(device_addr, device_info, &tx_length, &rx_length)) == KIT_STATUS_SUCCESS)
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

/** \brief The function discover TA100 devices connected on I2C bus
 * \param[in]    device_addr   device I2C address
 * \param[out]   device_rev    device revision number returned here
 * \param[out]   dev_type      device type returned here
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status ta_discover(uint8_t device_addr, uint8_t* device_rev, device_type_t* dev_type)
{
    enum kit_protocol_status ret_code = KIT_STATUS_FAILURE;
    uint8_t info_packet[CMD_MAX_RSP_SIZE] = {0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC2, 0x70};
    uint16_t txlength = 11;
    uint16_t rxlength = 13;
    g_selected_device_type = DEVICE_TYPE_TA100;   // indication flag for TA devices
    
    if (KIT_STATUS_SUCCESS == (ret_code = hal_i2c_send(device_addr, info_packet, &txlength)))
    {
        kit_delay_ms(5);
        if (KIT_STATUS_SUCCESS == (ret_code = read_ta_resp(device_addr, info_packet, &rxlength)))
        {
            if (check_ta_crc(&info_packet[0], 11))
            {
                ret_code = KIT_STATUS_SUCCESS;
                memcpy(device_rev, &info_packet[3], 8);
                *dev_type = ta10x_device_type(device_rev);
            }
        }
    }

    g_selected_device_type = DEVICE_TYPE_UNKNOWN;
    return ret_code;
}

/** \brief The function discover AES devices connected on I2C bus
 * \param[in]    device_addr   device I2C address
 * \param[out]   device_rev    device revision number returned here
 * \param[out]   dev_type      device type returned here
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status aes_discover(uint8_t device_addr, uint8_t* device_rev, device_type_t* dev_type)
{
    enum kit_protocol_status ret_code = KIT_STATUS_FAILURE;
    //uint8_t aes_info_message[] = { 0xFE, 0x00, 0x09, 0x0C, 0x00, 0x00, 0x06, 0x00, 0x00, 0xA9, 0xE7 };

    return ret_code;
}

/** \brief The function discover devices connected on I2C bus
 * \param[out]   device_list   discovered device info is returned here
 * \param[out]   dev_count     number of devices discovered count is returned here
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
void hal_i2c_discover(device_info_t* device_list, uint8_t* dev_count)
{
    enum kit_protocol_status ret_code;
    uint16_t probe_data_size = 0;
    uint8_t i2c_address;
    device_type_t current_dev = DEVICE_TYPE_UNKNOWN;

    *dev_count = 0;
    (void)hal_i2c_wake(0x00);
    atca_delay_ms(30);
    for (i2c_address = 255; i2c_address > 2; i2c_address -= 2)
    {
        //Probe for device presence
         if (KIT_STATUS_SUCCESS == (ret_code = hal_i2c_send(i2c_address, NULL, &probe_data_size)))
        {
            (void)ca_discover(i2c_address, device_list->dev_rev, &(device_list->device_type));
            (void)ta_discover(i2c_address, device_list->dev_rev, &(device_list->device_type));
            (void)aes_discover(i2c_address, device_list->dev_rev, &(device_list->device_type));
                
            device_list->address = i2c_address - 0x01;
            device_list->bus_type = DEVKIT_IF_I2C;
            (*dev_count)++;
            current_dev = device_list->device_type;
            if (*dev_count == MAX_DISCOVER_DEVICES)
            {
                break;
            }
            device_list++;
        }
        if ((DEVICE_TYPE_UNKNOWN != current_dev) && (DEVICE_TYPE_ECC204 != current_dev) && (DEVICE_TYPE_TA010 != current_dev) && (DEVICE_TYPE_SHA104 != current_dev) && (DEVICE_TYPE_SHA105 != current_dev) && (DEVICE_TYPE_SHA106 != current_dev) && (DEVICE_TYPE_RNG90 != current_dev) && (DEVICE_TYPE_ECC206 != current_dev))
        {
            (void)hal_i2c_idle(i2c_address);
        }
    }
    hal_i2c_deinit();
}

/** \brief Wrapper delay function
 * \param[in]    delay_in_ms  Delay count in millisecond
 */
void kit_delay_ms(uint32_t delay_in_ms)
{
    atca_delay_ms(delay_in_ms);
}

/** @} */
