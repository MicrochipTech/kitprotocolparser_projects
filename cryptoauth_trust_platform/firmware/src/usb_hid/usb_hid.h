#include <stdint.h>
#include <string.h>
#include <stdbool.h>
#include "app.h"
#include "kit_host_interface.h"
#include "kit_protocol/kit_protocol_utilities.h"
#include "kit_protocol/kit_protocol_api.h"

extern bool response_available;
extern APP_DATA appData;
extern uint16_t response_len;

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
void usb_hid_init(void);

/** \brief The function receives report from usb driver and update application that message received
 *
 *  \param[in]    report              references to received message from host
 *
 *  \param[out]   None
 *
 *  \param[inout] None
 *
 *  \return None
 */
void usb_hid_report_out_callback(uint8_t*);

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
uint8_t usb_send_message_response(uint8_t*, uint16_t);
