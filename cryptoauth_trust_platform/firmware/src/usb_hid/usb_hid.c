#include "usb_hid.h"

// Use the KIT PROTOCOL message delimiter as the USB message completed delimiter
#define USB_MESSAGE_DELIMITER  KIT_MESSAGE_DELIMITER

#define UDI_HID_REPORT_OUT_SIZE (64)

// Host buffer
uint8_t g_usb_buffer[KIT_MESSAGE_SIZE_MAX];
uint16_t g_usb_buffer_length;
uint8_t g_usb_message_received = false;

bool response_available = false;
uint16_t response_len = 0;

void usb_hid_init(void)
{
   //Nothing to do
}

void usb_hid_report_out_callback(uint8_t *report)
{

   // Handle incoming USB report

   for (uint32_t index = 0; index < UDI_HID_REPORT_OUT_SIZE; index++)
   {
      // Save the incoming USB packet
      g_usb_buffer[g_usb_buffer_length] = report[index];
      g_usb_buffer_length++;


      // Check if the USB message was received
      if (report[index] == USB_MESSAGE_DELIMITER)
      {
         g_usb_message_received = true;
         break;
      }
   }
   if(g_usb_message_received == false)
   {
       /* Place a new read request. */
        USB_DEVICE_HID_ReportReceive (USB_DEVICE_HID_INDEX_0,
                &appData.rxTransferHandle, appData.receiveDataBuffer, 64);
   }
}

uint8_t usb_send_message_response(uint8_t *response, uint16_t response_length)
{
    response_len = response_length;   // Update the response length
    response_available = true;        //set response available to transmit to host
    g_usb_message_received = false;   //set message_received to false to indicate to kitprotocol

    return 0;
}