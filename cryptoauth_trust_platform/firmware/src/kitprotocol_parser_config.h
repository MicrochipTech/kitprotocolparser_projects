#ifndef KITPROTOCOL_PARSER_CONFIG_H_
#define KITPROTOCOL_PARSER_CONFIG_H_

/* Include HALS */
#define KIT_HAL_I2C       //!< For I2C interface
#define KIT_HAL_SPI       //!< For SPI interface
#define KIT_HAL_SWI       //!< For SWI (old) interface
#define KIT_HAL_SWI2      //!< For SWI (new) interface

/* Include maximum number of devices to discover */
#define MAX_DISCOVER_DEVICES        8

#endif // KITPROTOCOL_PARSER_CONFIG_H_