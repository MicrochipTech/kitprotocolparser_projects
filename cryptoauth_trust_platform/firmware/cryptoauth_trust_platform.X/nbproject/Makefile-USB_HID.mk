#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-USB_HID.mk)" "nbproject/Makefile-local-USB_HID.mk"
include nbproject/Makefile-local-USB_HID.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=USB_HID
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/cryptoauth_trust_platform.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/cryptoauth_trust_platform.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1.c ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1_device.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c ../src/config/default/peripheral/sercom/spi_master/plib_sercom1_spi_master.c ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/usb/src/usb_device.c ../src/config/default/usb/src/usb_device_hid.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/startup_xc32.c ../src/config/default/libc_syscalls.c ../src/config/default/usb_device_init_data.c ../src/config/default/tasks.c ../src/hal/hal_core_m0plus_base.c ../src/hal/hal_delay.c ../src/hal/hal_i2c_harmony.c ../src/hal/hal_spi_harmony.c ../src/hal/hal_swi_uart_harmony.c ../src/hal/hal_gpio_harmony.c ../../../kitprotocol_parser/kit_protocol/kit_protocol_init.c ../../../kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c ../../../kitprotocol_parser/kit_protocol/kit_protocol_status.c ../../../kitprotocol_parser/kit_protocol/kit_protocol_utilities.c ../../../kitprotocol_parser/utilities/crc/crc_engines.c ../../../kitprotocol_parser/kit_device_info.c ../../../kitprotocol_parser/kit_hal_interface.c ../../../kitprotocol_parser/kit_host_interface.c ../src/usb_hid/usb_hid.c ../src/main.c ../src/app.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/308758920/usb_device.o ${OBJECTDIR}/_ext/308758920/usb_device_hid.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o ${OBJECTDIR}/_ext/659857049/hal_delay.o ${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o ${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o ${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o ${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o ${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o ${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o ${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o ${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o ${OBJECTDIR}/_ext/1477374047/crc_engines.o ${OBJECTDIR}/_ext/1506226913/kit_device_info.o ${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o ${OBJECTDIR}/_ext/1506226913/kit_host_interface.o ${OBJECTDIR}/_ext/431374514/usb_hid.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o.d ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o.d ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1865521619/plib_port.o.d ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o.d ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1881668453/sys_int.o.d ${OBJECTDIR}/_ext/308758920/usb_device.o.d ${OBJECTDIR}/_ext/308758920/usb_device_hid.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o.d ${OBJECTDIR}/_ext/1171490990/tasks.o.d ${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o.d ${OBJECTDIR}/_ext/659857049/hal_delay.o.d ${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o.d ${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o.d ${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o.d ${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o.d ${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o.d ${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o.d ${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o.d ${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o.d ${OBJECTDIR}/_ext/1477374047/crc_engines.o.d ${OBJECTDIR}/_ext/1506226913/kit_device_info.o.d ${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o.d ${OBJECTDIR}/_ext/1506226913/kit_host_interface.o.d ${OBJECTDIR}/_ext/431374514/usb_hid.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/308758920/usb_device.o ${OBJECTDIR}/_ext/308758920/usb_device_hid.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o ${OBJECTDIR}/_ext/659857049/hal_delay.o ${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o ${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o ${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o ${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o ${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o ${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o ${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o ${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o ${OBJECTDIR}/_ext/1477374047/crc_engines.o ${OBJECTDIR}/_ext/1506226913/kit_device_info.o ${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o ${OBJECTDIR}/_ext/1506226913/kit_host_interface.o ${OBJECTDIR}/_ext/431374514/usb_hid.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o

# Source Files
SOURCEFILES=../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1.c ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1_device.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c ../src/config/default/peripheral/sercom/spi_master/plib_sercom1_spi_master.c ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/usb/src/usb_device.c ../src/config/default/usb/src/usb_device_hid.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/startup_xc32.c ../src/config/default/libc_syscalls.c ../src/config/default/usb_device_init_data.c ../src/config/default/tasks.c ../src/hal/hal_core_m0plus_base.c ../src/hal/hal_delay.c ../src/hal/hal_i2c_harmony.c ../src/hal/hal_spi_harmony.c ../src/hal/hal_swi_uart_harmony.c ../src/hal/hal_gpio_harmony.c ../../../kitprotocol_parser/kit_protocol/kit_protocol_init.c ../../../kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c ../../../kitprotocol_parser/kit_protocol/kit_protocol_status.c ../../../kitprotocol_parser/kit_protocol/kit_protocol_utilities.c ../../../kitprotocol_parser/utilities/crc/crc_engines.c ../../../kitprotocol_parser/kit_device_info.c ../../../kitprotocol_parser/kit_hal_interface.c ../../../kitprotocol_parser/kit_host_interface.c ../src/usb_hid/usb_hid.c ../src/main.c ../src/app.c

# Pack Options 
PACK_COMMON_OPTIONS=-I "${CMSIS_DIR}/CMSIS/Core/Include"



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-USB_HID.mk dist/${CND_CONF}/${IMAGE_TYPE}/cryptoauth_trust_platform.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATSAMD21E18A
MP_LINKER_FILE_OPTION=,--script="..\src\config\default\ATSAMD21E18A.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o: ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1.c  .generated_files/flags/USB_HID/9b636f99ab815f8b85853629a5f8d42835a486b3 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/818654064" 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o.d 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o.d" -o ${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o: ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1_device.c  .generated_files/flags/USB_HID/302e7be21578598cce137d209c47498852fa48ea .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/818654064" 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o.d" -o ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1_device.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/USB_HID/5caf2e12b4f774234c0e190bf093a96524098f3 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/USB_HID/80e5fad32b0d09be25cfa54da843b95e1cea593b .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/USB_HID/1fe092a117649ff31f16b39d26ec11900d1e4553 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/USB_HID/644334a16ad4b61557c96f807b022fe93d28ced0 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/flags/USB_HID/e426891d85c377d87e99d9fdbbdc35c87a76ba6 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o: ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c  .generated_files/flags/USB_HID/1e75a1da89bedecea9ea43ff803537dbff512b19 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/508257091" 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d" -o ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o: ../src/config/default/peripheral/sercom/spi_master/plib_sercom1_spi_master.c  .generated_files/flags/USB_HID/cf4a9a61ec3fb7dc5d46052635c0dce4c57f36b7 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/17022449" 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o.d" -o ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o ../src/config/default/peripheral/sercom/spi_master/plib_sercom1_spi_master.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/flags/USB_HID/23572641007a5327330b4546889c7e0426780108 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c  .generated_files/flags/USB_HID/b8f82265ef97d94a97194569416b90c2e5ff22db .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/USB_HID/fce878d2dfc6de534e5ebd0956cd1b1dd3aa62a0 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/flags/USB_HID/b615734508b9dcef44d6e63d9048963c0860f6d2 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/308758920/usb_device.o: ../src/config/default/usb/src/usb_device.c  .generated_files/flags/USB_HID/4c57fe3959279f824400c05d54f08a8be47e4a23 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device.o ../src/config/default/usb/src/usb_device.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/308758920/usb_device_hid.o: ../src/config/default/usb/src/usb_device_hid.c  .generated_files/flags/USB_HID/afb1b5cfbc5efa509edb82ac5c4f9b79b27f6bfc .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device_hid.o ../src/config/default/usb/src/usb_device_hid.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/USB_HID/aec1744a5f262b9d3fa29b9f70e43dabdc6bb86f .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/USB_HID/6e1204ea6335ed7eed8614e52acddcff76e7f168 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/USB_HID/4c6c200719ca9dea2888ef86d4ccf68492c38a75 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/USB_HID/6975aa2505bf4cfd0c4f056a46b6167ff17022da .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/USB_HID/584cc1456b71474dec1ff078e5ef0fe4b0ad99f5 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o: ../src/config/default/usb_device_init_data.c  .generated_files/flags/USB_HID/3962cb990069798ea4ac0d73ea5df2819ef80a40 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o ../src/config/default/usb_device_init_data.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/flags/USB_HID/fcc0d61b7bd3a6d97a32bb115b1a03f19a103157 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o: ../src/hal/hal_core_m0plus_base.c  .generated_files/flags/USB_HID/5a760f3fdad5ce132648ad6a6460b4221d8601dd .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o ../src/hal/hal_core_m0plus_base.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_delay.o: ../src/hal/hal_delay.c  .generated_files/flags/USB_HID/b1b39ad3dbf6813497ad43ad0cd1ba0c35684b7b .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_delay.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_delay.o ../src/hal/hal_delay.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o: ../src/hal/hal_i2c_harmony.c  .generated_files/flags/USB_HID/6c08a169b73dcfdaec2e24a3da7a9ec15f7ddd20 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o ../src/hal/hal_i2c_harmony.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o: ../src/hal/hal_spi_harmony.c  .generated_files/flags/USB_HID/480636e0e6f455c7937b4e5bf0fd760cabb7462f .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o ../src/hal/hal_spi_harmony.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o: ../src/hal/hal_swi_uart_harmony.c  .generated_files/flags/USB_HID/184f9f34bc92f713716f7f97a6f28de20b8a0943 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o ../src/hal/hal_swi_uart_harmony.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o: ../src/hal/hal_gpio_harmony.c  .generated_files/flags/USB_HID/c5a7206df3a146ac205e65978d0a30b00e5fef62 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o ../src/hal/hal_gpio_harmony.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o: ../../../kitprotocol_parser/kit_protocol/kit_protocol_init.c  .generated_files/flags/USB_HID/6caf4e73458294df6a505aa7200d49b725cd2abb .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1209376559" 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o.d" -o ${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o ../../../kitprotocol_parser/kit_protocol/kit_protocol_init.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o: ../../../kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c  .generated_files/flags/USB_HID/605105da03225dea290ed81df6107ebb95796eb4 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1209376559" 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o.d" -o ${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o ../../../kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o: ../../../kitprotocol_parser/kit_protocol/kit_protocol_status.c  .generated_files/flags/USB_HID/adf3b7e81f1e89c802bd06a5e156e5ac16711d6c .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1209376559" 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o.d 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o.d" -o ${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o ../../../kitprotocol_parser/kit_protocol/kit_protocol_status.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o: ../../../kitprotocol_parser/kit_protocol/kit_protocol_utilities.c  .generated_files/flags/USB_HID/847b2a8ad6c1ba0aa4a86046a7bddfa7520f9160 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1209376559" 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o.d 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o.d" -o ${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o ../../../kitprotocol_parser/kit_protocol/kit_protocol_utilities.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1477374047/crc_engines.o: ../../../kitprotocol_parser/utilities/crc/crc_engines.c  .generated_files/flags/USB_HID/637a0bc4ea586d36ecddf56ef3348cc424617281 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1477374047" 
	@${RM} ${OBJECTDIR}/_ext/1477374047/crc_engines.o.d 
	@${RM} ${OBJECTDIR}/_ext/1477374047/crc_engines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1477374047/crc_engines.o.d" -o ${OBJECTDIR}/_ext/1477374047/crc_engines.o ../../../kitprotocol_parser/utilities/crc/crc_engines.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1506226913/kit_device_info.o: ../../../kitprotocol_parser/kit_device_info.c  .generated_files/flags/USB_HID/e9415226dd2d83e6223be42e62b31d12f03d3bce .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1506226913" 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_device_info.o.d 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_device_info.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1506226913/kit_device_info.o.d" -o ${OBJECTDIR}/_ext/1506226913/kit_device_info.o ../../../kitprotocol_parser/kit_device_info.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o: ../../../kitprotocol_parser/kit_hal_interface.c  .generated_files/flags/USB_HID/beba863f0f59d8388eb583b2ca9a4b588ad32221 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1506226913" 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o.d" -o ${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o ../../../kitprotocol_parser/kit_hal_interface.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1506226913/kit_host_interface.o: ../../../kitprotocol_parser/kit_host_interface.c  .generated_files/flags/USB_HID/be6e17777af26e2733230eedef8e5c2837f9a6f6 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1506226913" 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_host_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_host_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1506226913/kit_host_interface.o.d" -o ${OBJECTDIR}/_ext/1506226913/kit_host_interface.o ../../../kitprotocol_parser/kit_host_interface.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/431374514/usb_hid.o: ../src/usb_hid/usb_hid.c  .generated_files/flags/USB_HID/766c64794c96d8917ea170ae9da13c09c1bc0f75 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/431374514" 
	@${RM} ${OBJECTDIR}/_ext/431374514/usb_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/431374514/usb_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/431374514/usb_hid.o.d" -o ${OBJECTDIR}/_ext/431374514/usb_hid.o ../src/usb_hid/usb_hid.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/USB_HID/3b070f8679d558e3c9386fbffc77f22f4862cd8e .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/USB_HID/c9929234d54d24662eefbb978d2b82a4c7beae8d .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o: ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1.c  .generated_files/flags/USB_HID/967650d55b9d948d1e030fd3da89fe77367b5e7a .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/818654064" 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o.d 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o.d" -o ${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o: ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1_device.c  .generated_files/flags/USB_HID/e591a606b210274e0f00455b96f622d8fc2fdec2 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/818654064" 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o.d" -o ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1_device.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/USB_HID/2181514293f60d285ac610ff703657c53ab10a82 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/USB_HID/3347c211d166907a1a8ef429ae93bd4b1bec2e57 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/USB_HID/74b94e9d153da205bd6494ac817c3b38f876cab3 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/USB_HID/3c9fc5232d625cfa7ab473b4ffdb8c81498b5ce0 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/flags/USB_HID/d0dcc7456a6da58bdaac0248c50a7e8e4530203a .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o: ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c  .generated_files/flags/USB_HID/3f44b4d73685d88a2afe09567f227e1e99618288 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/508257091" 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d" -o ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o: ../src/config/default/peripheral/sercom/spi_master/plib_sercom1_spi_master.c  .generated_files/flags/USB_HID/72d25a536776c3a9387777c84605a32da02a692a .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/17022449" 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o.d" -o ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o ../src/config/default/peripheral/sercom/spi_master/plib_sercom1_spi_master.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/flags/USB_HID/d3e90426d76aabd11163219d9b67a072592c723b .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c  .generated_files/flags/USB_HID/e1ad06aaffa46068e750b847c4a92b499c20ef1d .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/USB_HID/c3e8d3a84460764eae97acb75e3aee51707d11d5 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/flags/USB_HID/5fe98589b2438b24a84bf8c2d73d352656a96937 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/308758920/usb_device.o: ../src/config/default/usb/src/usb_device.c  .generated_files/flags/USB_HID/ea7f6ff9a39c42b63523c89aea4c54f25ff1e5 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device.o ../src/config/default/usb/src/usb_device.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/308758920/usb_device_hid.o: ../src/config/default/usb/src/usb_device_hid.c  .generated_files/flags/USB_HID/1ca24d6a5b2b6fe9a0ef6857a5501e12e8dac53b .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device_hid.o ../src/config/default/usb/src/usb_device_hid.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/USB_HID/34ecc3f06396fabf071ff2b0b53e9461b86f4aa6 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/USB_HID/a561982e6c7eb6c9813261c48426afd033767bc7 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/USB_HID/4053f9b9ab7b3b16ce90a1440d8aa86c96c35bc7 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/USB_HID/6210a3609107623574cd1d126f0504760b83acc6 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/USB_HID/a655611c0757979e9538445689387f231f1107c1 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o: ../src/config/default/usb_device_init_data.c  .generated_files/flags/USB_HID/267043f181fe294063c940e8f5cae2d0e88f24ff .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o ../src/config/default/usb_device_init_data.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/flags/USB_HID/121276bff369868f8df389dc854297f41585572b .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o: ../src/hal/hal_core_m0plus_base.c  .generated_files/flags/USB_HID/54e8fb546cd71574c33ef1ca2d09ea39445855a9 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o ../src/hal/hal_core_m0plus_base.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_delay.o: ../src/hal/hal_delay.c  .generated_files/flags/USB_HID/709ea4ec323bf376ee24931db2b986c0bdff4cd .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_delay.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_delay.o ../src/hal/hal_delay.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o: ../src/hal/hal_i2c_harmony.c  .generated_files/flags/USB_HID/b5a929eef935e3ecbf8ee25456d8088070779329 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o ../src/hal/hal_i2c_harmony.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o: ../src/hal/hal_spi_harmony.c  .generated_files/flags/USB_HID/47873758a696b7cbbfe71ca92688f0a9d1d7ac9f .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o ../src/hal/hal_spi_harmony.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o: ../src/hal/hal_swi_uart_harmony.c  .generated_files/flags/USB_HID/993670f549f2e2efc9967016320aec5ef1a6c16e .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o ../src/hal/hal_swi_uart_harmony.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o: ../src/hal/hal_gpio_harmony.c  .generated_files/flags/USB_HID/4d96d5d23a7e94fc24a76de35da2521af3401170 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o ../src/hal/hal_gpio_harmony.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o: ../../../kitprotocol_parser/kit_protocol/kit_protocol_init.c  .generated_files/flags/USB_HID/572bad5a14f84dd3802e4ba1b79fba0df0276402 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1209376559" 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o.d" -o ${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o ../../../kitprotocol_parser/kit_protocol/kit_protocol_init.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o: ../../../kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c  .generated_files/flags/USB_HID/5cbdd94c9c922745ef83a50ea748f489c23da662 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1209376559" 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o.d" -o ${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o ../../../kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o: ../../../kitprotocol_parser/kit_protocol/kit_protocol_status.c  .generated_files/flags/USB_HID/435b0260bd8e707ceeacb5a206411ac0b81eaefb .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1209376559" 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o.d 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o.d" -o ${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o ../../../kitprotocol_parser/kit_protocol/kit_protocol_status.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o: ../../../kitprotocol_parser/kit_protocol/kit_protocol_utilities.c  .generated_files/flags/USB_HID/99c7bacb1611eb0ca4216903e2a905196a0516d6 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1209376559" 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o.d 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o.d" -o ${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o ../../../kitprotocol_parser/kit_protocol/kit_protocol_utilities.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1477374047/crc_engines.o: ../../../kitprotocol_parser/utilities/crc/crc_engines.c  .generated_files/flags/USB_HID/1e7bb856f221fe8492916878c47f932ede252b44 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1477374047" 
	@${RM} ${OBJECTDIR}/_ext/1477374047/crc_engines.o.d 
	@${RM} ${OBJECTDIR}/_ext/1477374047/crc_engines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1477374047/crc_engines.o.d" -o ${OBJECTDIR}/_ext/1477374047/crc_engines.o ../../../kitprotocol_parser/utilities/crc/crc_engines.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1506226913/kit_device_info.o: ../../../kitprotocol_parser/kit_device_info.c  .generated_files/flags/USB_HID/3735dbb19e74ba2cf8ed0943f9dffbdbb9c94fba .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1506226913" 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_device_info.o.d 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_device_info.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1506226913/kit_device_info.o.d" -o ${OBJECTDIR}/_ext/1506226913/kit_device_info.o ../../../kitprotocol_parser/kit_device_info.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o: ../../../kitprotocol_parser/kit_hal_interface.c  .generated_files/flags/USB_HID/be550aa32154538375578c8612c14fb1c7a370e6 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1506226913" 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o.d" -o ${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o ../../../kitprotocol_parser/kit_hal_interface.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1506226913/kit_host_interface.o: ../../../kitprotocol_parser/kit_host_interface.c  .generated_files/flags/USB_HID/82feb212192ea5550c9eec1b9fa4f552cb98c0ea .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1506226913" 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_host_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_host_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1506226913/kit_host_interface.o.d" -o ${OBJECTDIR}/_ext/1506226913/kit_host_interface.o ../../../kitprotocol_parser/kit_host_interface.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/431374514/usb_hid.o: ../src/usb_hid/usb_hid.c  .generated_files/flags/USB_HID/6005943a5d49e93531af475be6fb924b3a2f13db .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/431374514" 
	@${RM} ${OBJECTDIR}/_ext/431374514/usb_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/431374514/usb_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/431374514/usb_hid.o.d" -o ${OBJECTDIR}/_ext/431374514/usb_hid.o ../src/usb_hid/usb_hid.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/USB_HID/6055fec4a5b93e78c1cd9a809cb3be5885b65d06 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/USB_HID/d63e1ad9d46a7d7d947c9d7611e95366b3d11172 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/cryptoauth_trust_platform.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/default/ATSAMD21E18A.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/cryptoauth_trust_platform.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=4096,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/cryptoauth_trust_platform.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/ATSAMD21E18A.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/cryptoauth_trust_platform.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=4096,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/cryptoauth_trust_platform.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/USB_HID
	${RM} -r dist/USB_HID
