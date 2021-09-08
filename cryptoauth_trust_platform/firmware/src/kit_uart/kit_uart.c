#include <stdint.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>
#include "definitions.h"
#include "hal/hal_delay.h"
#include "kit_protocol/kit_protocol_utilities.h"
#include "kit_protocol/kit_protocol_api.h"
#include "kit_uart.h"

// Use the KIT PROTOCOL message delimiter as the uart message completed delimiter
#define KIT_UART_MESSAGE_DELIMITER  KIT_MESSAGE_DELIMITER

// Host buffer
uint8_t g_uart_buffer[KIT_MESSAGE_SIZE_MAX] = {0};
uint16_t g_uart_buffer_length = 0;
uint8_t g_uart_message_received = false;
volatile bool g_uart_data_error = false;

/** \brief The function is rx interrupt callback function which reports an receive
 *         status of rx data. If an error occurred during, is_received_an_error
 *         variable will be set.
 *
 *  \param[in] event          Event status
 *  \param[in] context        context from plib driver
 */
void callback_read_data_from_uart(SERCOM_USART_EVENT event, uintptr_t context)
{
    (void)event;
    (void)context;

     // read call back will be called on both error interrupt handler and read success
    if (SERCOM3_USART_ErrorGet() == USART_ERROR_NONE)
    {
        g_uart_data_error = true;
    }
}

/** \brief The function read uart data from plib driver and set uart message recived 
 *         for kit protocol parser to process the received data
 */
void read_uart_data(void)
{
    uint8_t read_len = 0;
    if (g_uart_message_received == false)
    {
        read_len = SERCOM3_USART_ReadCountGet();

        SERCOM3_USART_Read(&g_uart_buffer[g_uart_buffer_length], read_len);
        g_uart_buffer_length += read_len;
        if (g_uart_buffer[g_uart_buffer_length - 1] == KIT_UART_MESSAGE_DELIMITER)
        {
            g_uart_buffer_length--;
            g_uart_message_received = true;
            LED_Toggle();
        }
    }
}

/** \brief The function register uart rx interrupt callback function 
 */
void host_uart_init(void)
{
    /* register read callback function for RXC interrupt*/
    SERCOM3_USART_ReadCallbackRegister(callback_read_data_from_uart, 0);
}

/** \brief The function is send kit protocol parser response back to host.
 *
 *  \param[in] response               kit protocol parser response
 *  \param[in] response_length        Response length
 */
uint8_t uart_send_message_response(uint8_t *response, uint16_t response_length)
{
    uint32_t timeout; 
    uint16_t index = 0;

    if (response)
    {
        while (response_length > 0)
        {
            timeout = 2000;
            
            SERCOM3_USART_Write(&g_uart_buffer[index], 1);
            while((SERCOM3_USART_WriteCountGet()) && (timeout > 0))
            {
                atca_delay_us(25);
                timeout -= 25;
            }
            if (timeout <= 0)
            {
                break;
            }
            
            response_length--;
            index++;
            
        }
        
        LED_Toggle();
    }

    memset(&g_uart_buffer[0], 0, KIT_MESSAGE_SIZE_MAX);
    g_uart_buffer_length = 0;
    g_uart_message_received = false;

    return 0;
}