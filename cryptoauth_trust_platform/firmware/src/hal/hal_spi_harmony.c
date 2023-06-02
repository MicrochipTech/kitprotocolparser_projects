/**
 * \file
 * \brief ATCA Hardware abstraction layer for SPI over Harmony PLIB.
 *
 * This code is structured in two parts.  Part 1 is the connection of the ATCA HAL API to the physical SPI
 * implementation. Part 2 is the Harmony SPI primitives to set up the interface.
 *
 * Prerequisite: add SERCOM SPI Master Interrupt support to application in Mplab Harmony 3
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
#include "utilities/crc/crc_engines.h"
#include "kit_protocol/kit_protocol_interpreter.h"
#include "hal_delay.h"
#include "hal_harmony.h"


/** \defgroup hal_ Hardware abstraction layer (hal_)
 *
 * \brief
 * These methods define the hardware abstraction layer for communicating with a TA100 device
 *
   @{ */

/** \brief
    - this HAL implementation assumes you've included the Harmony SPI libraries in your project, otherwise,
    the HAL layer will not compile because the START TWI drivers are a dependency *
 */


/** \brief initialize an SPI interface using given config
 */

void hal_spi_init(void)
{
    ta100_slave_select_Set();

    (void)check_spi_busy(1000000, 0);
}

/** \brief HAL implementation of SPI post init
 */
void hal_spi_deinit(void)
{
    // to do nothing
}


enum kit_protocol_status check_spi_busy(uint32_t rate, uint16_t length)
{

    /* Maximum packet size is 1024 bytes so assume rate can be sub 1kHz */
    uint32_t timeout = (uint32_t)length * 8 * 1000;
    rate /= 1000;
    timeout /= rate;
    timeout += 1;   /* Make sure the timeout value is non zero */

    while ((true == SERCOM1_SPI_IsBusy()) && (timeout--))
    {
        atca_delay_us(1);
    }

    if (0 == timeout)
    {
        return KIT_STATUS_COMM_FAIL;
    }
    else
    {
        return KIT_STATUS_SUCCESS;
    }
}

/** \brief HAL implementation of SPI send over Harmony
 * \param[in] device_addr   device_address
 * \param[in] txdata        pointer to space to bytes to send
 * \param[in] txlength      number of bytes to send
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */

enum kit_protocol_status hal_spi_send(uint32_t device_addr, uint8_t *txdata, uint16_t* txlength)
{
    enum kit_protocol_status status = KIT_STATUS_COMM_FAIL;

    (void)device_addr;
    do
    {
        ta100_slave_select_Clear();

        /* Wait for the SPI bus to be ready */
        if (KIT_STATUS_SUCCESS != (status = check_spi_busy(1000000, 0)))
        {
            break;
        }

        if (true == SERCOM1_SPI_Write(txdata, *txlength))
        {
            /* Wait for the SPI transfer to complete */
            status = check_spi_busy(1000000, *txlength);
        }
        else
        {
            status = KIT_STATUS_COMM_FAIL;
        }
    }
    while (0);

    ta100_slave_select_Set();
    return status;
}

/** \brief HAL implementation of SPI receive function for HARMONY SPI
 * \param[in]    device_addr   device address
 * \param[out]   rxdata        Data received will be returned here.
 * \param[inout] rxlength      As input, the size of the rxdata buffer.
 *                             As output, the number of bytes received.
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status hal_spi_receive(uint32_t device_addr, uint8_t *rxdata, uint16_t *rxlength)
{
    enum kit_protocol_status status = KIT_STATUS_COMM_FAIL;
    uint16_t rxdata_max_size = CMD_MAX_RSP_SIZE;
    uint16_t word_addr_size = 1;
    uint16_t read_length = 2;
    uint8_t word_address;


    if ((NULL == rxlength) || (NULL == rxdata))
    {
        return KIT_STATUS_INVALID_PARAM;
    }

    *rxlength = 0;

    do
    {

        word_address = rxdata[0];
        /*rxdata_max_size should be updated based on the rxdata received from cal*/
        rxdata_max_size = ((uint16_t)rxdata[1] * 256) + rxdata[2];

        /*Set read length.. Check for register reads or 1 byte reads*/
        if ((MAIN_PROCESSOR_RD_CSR == word_address) || (FAST_CRYPTO_RD_FSR == word_address)
            || ( 1  == rxdata_max_size))
        {
            read_length = 1;
        }

        ta100_slave_select_Clear();

        /*Send Word address to device...*/
        if (true == SERCOM1_SPI_Write(&word_address, word_addr_size))
        {
            /* Wait for the SPI transfer to complete */
            status = check_spi_busy(1000000, sizeof(word_address)); 
            
        }
        if (KIT_STATUS_SUCCESS != status)
        {
            break;
        }
	
        status = KIT_STATUS_RX_FAIL;
        if ((FAST_CRYPTO_RD_FAST_FIRST == word_address) || (FAST_CRYPTO_RD_FAST_ADDL == word_address))
        {
            /*read_length should be set based on the algorithm selected for fce operations*/
            read_length = rxdata_max_size;
            if (true == SERCOM1_SPI_Read(rxdata, read_length))
            {
                /* Wait for the SPI transfer to complete */
                status = check_spi_busy(1000000, read_length);
            }
        }
        else
        {
            /* read status register/length bytes to know number of bytes to read */
            if (true == SERCOM1_SPI_Read(rxdata, read_length))
            {
                /* Wait for the SPI transfer to complete */
                status = check_spi_busy(1000000, read_length);
            }

            if (KIT_STATUS_SUCCESS != status)
            {
                break;
            }

            if (1 == read_length)
            {
                break;
            }

            /*Calculate bytes to read based on device response*/
            read_length = ((uint16_t)rxdata[0] * 256) + rxdata[1];

            if (read_length > rxdata_max_size)
            {
                status = KIT_STATUS_SMALL_BUFFER;
                break;
            }

            if (read_length < 5)
            {
                status = KIT_STATUS_RX_FAIL;
                break;
            }

            /* Read given length bytes from device */
            status = KIT_STATUS_RX_FAIL;
            if (true == SERCOM1_SPI_Read(&rxdata[2], read_length - 2))
            {
                /* Wait for the SPI transfer to complete */
                status = check_spi_busy(1000000, read_length - 2);

            }         
        }

        if (KIT_STATUS_SUCCESS != status)
        {
            break;
        }
        
    }
    while (0);

    ta100_slave_select_Set();

    *rxlength = read_length;
    return status;
}



/** \brief send wake up token to CryptoAuth device
 * \param[in] device_addr   device address
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */

enum kit_protocol_status hal_spi_wake(uint32_t device_addr)
{
    (void)device_addr;
    return KIT_STATUS_SUCCESS;
}

/** \brief send idle command to  CryptoAuth device
 * \param[in] device_addr   device address
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */

enum kit_protocol_status hal_spi_idle(uint32_t device_addr)
{
    (void)device_addr;
    return KIT_STATUS_SUCCESS;
}

/** \brief send sleep command to  CryptoAuth device
 * \param[in] device_addr   device address
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */

enum kit_protocol_status hal_spi_sleep(uint32_t device_addr)
{
    (void)device_addr;
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
enum kit_protocol_status hal_spi_talk(uint32_t device_addr, uint8_t* data, uint16_t* length)
{
    (void)device_addr;
    (void)*data;
    (void)*length;
    return KIT_STATUS_SUCCESS;
}

/** \brief The function read ta100 device info response
 * \param[in]    device_addr   device address
 * \param[out]   rxdata        Data received will be returned here.
 * \param[inout] rx_size       As input, the size of the rxdata buffer.
 *                             As output, the number of bytes received.
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status read_ta_spi_resp(uint32_t device_addr, uint8_t* rxdata, uint16_t* rx_size)
{
    enum kit_protocol_status status = KIT_STATUS_COMM_FAIL;
    uint8_t max_delay_count = 10;
    uint8_t info_resp_packet[3] = {MAIN_PROCESSOR_RD_CMD, 0x00, 0x0D};

    do
    {
        // Initialize buffer
        memcpy(&rxdata[0], &info_resp_packet[0], 3);
        if (KIT_STATUS_SUCCESS == (status = hal_spi_receive(device_addr, rxdata, rx_size)))
        {
            break;
        }
    }
    while ((max_delay_count--) > 0);

    return status;
}

/** \brief The function discover TA100 devices connected on SPI bus
 * \param[in]    device_addr   device address
 * \param[out]   device_rev    device revision number returned here
 * \param[out]   dev_type      device type returned here
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
enum kit_protocol_status ta_spi_discover(uint8_t device_addr, uint8_t* device_rev, device_type_t* dev_type)
{
    enum kit_protocol_status ret_code = KIT_STATUS_FAILURE;
    uint8_t info_packet[CMD_MAX_RSP_SIZE] = {0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xC2, 0x70};
    uint16_t txlength = 11;
    uint16_t rxlength = 13;
    
    if (KIT_STATUS_SUCCESS == (ret_code = hal_spi_send(device_addr, info_packet, &txlength)))
    {
        atca_delay_ms(5);
        if (KIT_STATUS_SUCCESS == (ret_code = read_ta_spi_resp(device_addr, info_packet, &rxlength)))
        {
            if (check_ta_crc(&info_packet[0], 11))
            {
                ret_code = KIT_STATUS_SUCCESS;
                memcpy(device_rev, &info_packet[3], 8);
                *dev_type = ta10x_device_type(device_rev);
            }
        }
    }

    return ret_code;
}

/** \brief The function discover devices connected on SPI bus
 * \param[out]   device_list   discovered device info is returned here
 * \param[out]   dev_count     number of devices discovered count is returned here
 * \return KIT_STATUS_SUCCESS on success, otherwise an error code.
 */
void hal_spi_discover(device_info_t* device_list, uint8_t* dev_count)
{
    enum kit_protocol_status ret_code;

    if ((KIT_STATUS_SUCCESS == (ret_code = ta_spi_discover(0x00, device_list->dev_rev, &(device_list->device_type)))))
    {
        device_list->address = 0x00;
        device_list->bus_type = DEVKIT_IF_SPI;
        device_list->header = MICROBUS_HEADER;
        (*dev_count)++;
        if (*dev_count == MAX_DISCOVER_DEVICES)
        {
            return;
        }
    }

}

/** @} */
