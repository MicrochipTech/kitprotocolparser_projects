/**
 * \file
 * \brief KIT Hardware abstraction layer for SAMD21 I2C Harmony driver
 *
 * Prerequisite: add SERCOM I2C Master Polled support to application in MHC
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

#ifndef HAL_HARMONY_H_
#define HAL_HARMONY_H_

#include <stdint.h>
#include "kit_hal_interface.h"

#define MAIN_PROCESSOR_RD_CMD                      0x10
#define MAIN_PROCESSOR_RD_CSR                      0x30
#define FAST_CRYPTO_RD_FSR                         0xB0
#define FAST_CRYPTO_RD_FAST_FIRST                  0x90
#define FAST_CRYPTO_RD_FAST_ADDL                   0xD0
#define CMD_MAX_RSP_SIZE                           1024

/**
 * \brief SWI flags.
 */
#define SWI_WAKE_TOKEN   ((uint8_t)0x00)           //!< flag preceding a command
#define SWI_FLAG_CMD     ((uint8_t)0x77)           //!< flag preceding a command
#define SWI_FLAG_TX      ((uint8_t)0x88)           //!< flag requesting a response
#define SWI_FLAG_IDLE    ((uint8_t)0xBB)           //!< flag requesting to go into Idle mode
#define SWI_FLAG_SLEEP   ((uint8_t)0xCC)           //!< flag requesting to go into Sleep mode

#define TX_DELAY         ((uint32_t)90)            //!< tTRUNAROUND TIME

// SWI functions
enum kit_protocol_status swi_uart_send_bit(uint8_t data);
enum kit_protocol_status swi_uart_receive_bit(uint8_t *bit_data);
bool set_swi_baudrate(uint32_t baudrate);
enum kit_protocol_status hal_swi_send_byte(uint8_t data);

// I2C functions
enum kit_protocol_status i2c_interface_talk(uint32_t device_addr, uint8_t* data, uint16_t*
                                            tx_length, uint16_t* rx_length);
enum kit_protocol_status hal_i2c_receive_peripheral(uint32_t device_addr, uint8_t *rxdata, 
                                                    uint16_t rxlength);
enum kit_protocol_status read_ta_resp(uint32_t device_addr, uint8_t* rxdata, uint16_t* rx_size);
enum kit_protocol_status ca_discover(uint8_t device_addr, uint8_t* device_rev, device_type_t* dev_type);
enum kit_protocol_status ta_discover(uint8_t device_addr, uint8_t* device_rev, device_type_t* dev_type);
enum kit_protocol_status aes_discover(uint8_t device_addr, uint8_t* device_rev, device_type_t* dev_type);

// SPI functions
enum kit_protocol_status ta_spi_discover(uint8_t device_addr, uint8_t* device_rev, device_type_t* dev_type);
enum kit_protocol_status read_ta_spi_resp(uint32_t device_addr, uint8_t* rxdata, uint16_t* rx_size);
enum kit_protocol_status check_spi_busy(uint32_t rate, uint16_t length);

#endif /* HAL_I2C_HARMONY_H_ */
