#include "kit_host_interface.h"

/** \brief Initialize usb driver
 *
 *  \param[in]    None
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return None
 */
void host_uart_init(void);

/** \brief The function send the response to host
 *
 *  \param[in]    response            references to response
 *
 *  \param[out]   response_length     contains response length
 *
 *  \param[inout] None
 *
 *  \return 0
 */
uint8_t uart_send_message_response(uint8_t*, uint16_t);

/** \brief Read uart data
 *
 *  \param[in]    None
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return None
 */
void read_uart_data(void);