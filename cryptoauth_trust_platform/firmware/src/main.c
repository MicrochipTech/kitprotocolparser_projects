/*******************************************************************************
  Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This file contains the "main" function for a project.

  Description:
    This file contains the "main" function for a project.  The
    "main" function calls the "SYS_Initialize" function to initialize the state
    machines of all modules in the system
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include "definitions.h"                // SYS function prototypes

#include "kit_protocol/kit_protocol_init.h"
#include "kit_hal_interface.h"
#include "kit_host_interface.h"
#include "kitprotocol_parser_info.h"

#define KIT_NAME_HEADER "CryptoAuth Trust Platform(DM320118)"
#define BOARD_APPLICATION_VERSION   "1.0.3"
#define STRING_EOL      "\r"

#define STRING_HEADER   "\r-- " KIT_NAME_HEADER" --\r\n" \
"-- Compiled: "__DATE__ " "__TIME__ " v"BOARD_APPLICATION_VERSION" --\r\n" \
"-- Console log (115200-8-N-1) --\r\n"STRING_EOL
// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    LED_Toggle();

    printf("%s\n",STRING_HEADER);
    printf("KitParser Version: v%d.%d.%d\r\n",
		kitprotocol_parser_version[0], kitprotocol_parser_version[1], kitprotocol_parser_version[2]);

    host_iface_init();

    kit_protocol_init();
    printf("\n%s\r", "Device Discovery.....");
    hardware_interface_discover();
    printf("\n%s\r\n", "Completed");

    while ( true )
    {
        /* Maintain state machines of all polled MPLAB Harmony modules. */
        SYS_Tasks ( );
        kit_protocol_task(NULL);
    }

    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/

