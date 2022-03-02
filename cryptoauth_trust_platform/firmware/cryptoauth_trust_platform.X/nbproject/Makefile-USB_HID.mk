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
${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o: ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1.c  .generated_files/flags/USB_HID/561fb2f816ca80825b89968819fdec215d0e707f .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/818654064" 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o.d 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o.d" -o ${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o: ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1_device.c  .generated_files/flags/USB_HID/2d2ad2d6e3e669cbb25427e96a8ac549f7b25ae6 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/818654064" 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o.d" -o ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1_device.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/USB_HID/90f146da05bbaa55a25c9d7b72437891eb431c42 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/USB_HID/79839bce514e2d8f70d563562f8e48301f552767 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/USB_HID/8d2b755baced8fede92edea43e400f4420da2f51 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/USB_HID/6c3b33f1a8f2e9f331e7c89edc594cba71912d9c .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/flags/USB_HID/f03e7ecda7bf3a176c043aabf790349a6218c81b .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o: ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c  .generated_files/flags/USB_HID/add41473b22c655989146c406dd176f39144af9a .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/508257091" 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d" -o ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o: ../src/config/default/peripheral/sercom/spi_master/plib_sercom1_spi_master.c  .generated_files/flags/USB_HID/e9ab8278e0054c25da85a18d0d293bd057f8575c .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/17022449" 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o.d" -o ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o ../src/config/default/peripheral/sercom/spi_master/plib_sercom1_spi_master.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/flags/USB_HID/1efa3688e0667a74d5d960d4f1cf2c7ab41dc7a .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c  .generated_files/flags/USB_HID/5c7cdb40e70845480aea6564abebdb53e73213ce .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/USB_HID/2bbc6e20b98f84ae5ff2065367e0b1b5f17c7c59 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/flags/USB_HID/637ee67ef4d2fab5346e9f76b1d51fe21147d9c1 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/308758920/usb_device.o: ../src/config/default/usb/src/usb_device.c  .generated_files/flags/USB_HID/cf2758cc63dc8ffdceab596a4cacb3e21908faf7 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device.o ../src/config/default/usb/src/usb_device.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/308758920/usb_device_hid.o: ../src/config/default/usb/src/usb_device_hid.c  .generated_files/flags/USB_HID/93d7dd631b2780ef8d8dcd45ea97a27a6ecc918 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device_hid.o ../src/config/default/usb/src/usb_device_hid.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/USB_HID/1795e031d277b199a4be4581b43d8baab3d92b6 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/USB_HID/57b95b7843f2cd454e714b7022b814172bc56f94 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/USB_HID/4011d0506289b124d156eb284a494e53d80fe6d6 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/USB_HID/99b63e861bc62faec6a65dd0e096c0d949757f1c .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/USB_HID/6b7397ec10c4da00ed8861dfc0a7708ba3229ac9 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o: ../src/config/default/usb_device_init_data.c  .generated_files/flags/USB_HID/e3f6393a534382f1743cbbe0aa11a743b0ac67e5 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o ../src/config/default/usb_device_init_data.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/flags/USB_HID/f52f189c81be9a6f957111a403a0c10aee5081e4 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o: ../src/hal/hal_core_m0plus_base.c  .generated_files/flags/USB_HID/bfaa616fae3c8a6aac1f436bda62cc432252a7b .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o ../src/hal/hal_core_m0plus_base.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_delay.o: ../src/hal/hal_delay.c  .generated_files/flags/USB_HID/cafa5a3562be7e771e7f1199ed51457c0e304f66 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_delay.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_delay.o ../src/hal/hal_delay.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o: ../src/hal/hal_i2c_harmony.c  .generated_files/flags/USB_HID/53d240257a3a00113e0201ab148bb04bc7427b40 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o ../src/hal/hal_i2c_harmony.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o: ../src/hal/hal_spi_harmony.c  .generated_files/flags/USB_HID/5f035de0f84708707c05024f2fdbac69b075d2f9 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o ../src/hal/hal_spi_harmony.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o: ../src/hal/hal_swi_uart_harmony.c  .generated_files/flags/USB_HID/3358d3393decf922c9c01343b96164c0ad51ffd5 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o ../src/hal/hal_swi_uart_harmony.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o: ../src/hal/hal_gpio_harmony.c  .generated_files/flags/USB_HID/88b7775af5a8529f371e100304478f0e3eed055c .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o ../src/hal/hal_gpio_harmony.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o: ../../../kitprotocol_parser/kit_protocol/kit_protocol_init.c  .generated_files/flags/USB_HID/69665af78606167f3fb145f65bf38ba6520c9eed .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1209376559" 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o.d" -o ${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o ../../../kitprotocol_parser/kit_protocol/kit_protocol_init.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o: ../../../kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c  .generated_files/flags/USB_HID/fbf94437203c51ad76a0b8c979b15acf0847bb74 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1209376559" 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o.d" -o ${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o ../../../kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o: ../../../kitprotocol_parser/kit_protocol/kit_protocol_status.c  .generated_files/flags/USB_HID/ae1bd43091504cb9a4aad79838837e5562f435d0 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1209376559" 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o.d 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o.d" -o ${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o ../../../kitprotocol_parser/kit_protocol/kit_protocol_status.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o: ../../../kitprotocol_parser/kit_protocol/kit_protocol_utilities.c  .generated_files/flags/USB_HID/3b000b73d3a0f8ccc4ee8ebb0721c61b9e4d7f31 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1209376559" 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o.d 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o.d" -o ${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o ../../../kitprotocol_parser/kit_protocol/kit_protocol_utilities.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1477374047/crc_engines.o: ../../../kitprotocol_parser/utilities/crc/crc_engines.c  .generated_files/flags/USB_HID/3bf61218ef1b95f7ff675c63cdb8f89b98e8572a .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1477374047" 
	@${RM} ${OBJECTDIR}/_ext/1477374047/crc_engines.o.d 
	@${RM} ${OBJECTDIR}/_ext/1477374047/crc_engines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1477374047/crc_engines.o.d" -o ${OBJECTDIR}/_ext/1477374047/crc_engines.o ../../../kitprotocol_parser/utilities/crc/crc_engines.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1506226913/kit_device_info.o: ../../../kitprotocol_parser/kit_device_info.c  .generated_files/flags/USB_HID/a6407127fb85a4f86cd2a233022a3c3dd799a83c .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1506226913" 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_device_info.o.d 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_device_info.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1506226913/kit_device_info.o.d" -o ${OBJECTDIR}/_ext/1506226913/kit_device_info.o ../../../kitprotocol_parser/kit_device_info.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o: ../../../kitprotocol_parser/kit_hal_interface.c  .generated_files/flags/USB_HID/50b614cac56015005979f29a164f72f718d2c290 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1506226913" 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o.d" -o ${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o ../../../kitprotocol_parser/kit_hal_interface.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1506226913/kit_host_interface.o: ../../../kitprotocol_parser/kit_host_interface.c  .generated_files/flags/USB_HID/4ca2ccf8b1bf90d9bc23d10cbcca6657e32bda61 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1506226913" 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_host_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_host_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1506226913/kit_host_interface.o.d" -o ${OBJECTDIR}/_ext/1506226913/kit_host_interface.o ../../../kitprotocol_parser/kit_host_interface.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/431374514/usb_hid.o: ../src/usb_hid/usb_hid.c  .generated_files/flags/USB_HID/58a944fa98aebd3b4c774a319e88145d70fbdc0d .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/431374514" 
	@${RM} ${OBJECTDIR}/_ext/431374514/usb_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/431374514/usb_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/431374514/usb_hid.o.d" -o ${OBJECTDIR}/_ext/431374514/usb_hid.o ../src/usb_hid/usb_hid.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/USB_HID/d22e60ac929354d5290a41309a31dcb8bd4118f3 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/USB_HID/cdc40997d44814c1afadca8d9ff73081e0f8215 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o: ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1.c  .generated_files/flags/USB_HID/f4e35b3f7b0987abef942704c04972bde7da4f65 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/818654064" 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o.d 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o.d" -o ${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o: ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1_device.c  .generated_files/flags/USB_HID/b63106defc067bd9735cbd07e99ba5b8cc343507 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/818654064" 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o.d" -o ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1_device.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/USB_HID/296951241dcec6d41973115116533a9cd06f4f5f .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/USB_HID/2f0c561b27600358e7ac787395efea0092f28d6b .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/USB_HID/9711890d780aa0b4324a47b0b379f0d9c6d473ee .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/USB_HID/44f9ec04906e20999894c139601b25d4ec5a756f .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/flags/USB_HID/b9249fe155f023d11133072a96f38217c12c4b09 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o: ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c  .generated_files/flags/USB_HID/26e2fcb4463daa136a4f6e45bfc9c10dc8142f61 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/508257091" 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d" -o ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o: ../src/config/default/peripheral/sercom/spi_master/plib_sercom1_spi_master.c  .generated_files/flags/USB_HID/4710319de1fd1b7ffe73ce3015e18b6546240220 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/17022449" 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o.d" -o ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o ../src/config/default/peripheral/sercom/spi_master/plib_sercom1_spi_master.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/flags/USB_HID/3e5556d7ff3325b6bbd4aec57be0aed1dfa2cb89 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c  .generated_files/flags/USB_HID/fe8871b87df08212174dee8dc8479cda9e762ae .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/USB_HID/8a1a0887e19f5f16663987763d252cb6f6c2af2 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/flags/USB_HID/ee3cd5fcff61c6fe758ac216a448dd675ddd2906 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/308758920/usb_device.o: ../src/config/default/usb/src/usb_device.c  .generated_files/flags/USB_HID/cbfe904d4b56019989ccf44400b344dfb8792785 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device.o ../src/config/default/usb/src/usb_device.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/308758920/usb_device_hid.o: ../src/config/default/usb/src/usb_device_hid.c  .generated_files/flags/USB_HID/233b934835499b1cfbfbd976eb18701ef0a3a081 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device_hid.o ../src/config/default/usb/src/usb_device_hid.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/USB_HID/87c98201c5c16db43dfe9b9e68db8f1eddb2c636 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/USB_HID/7615423c66d8c8be6c657bd8c583650d07a759b1 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/USB_HID/351dd094b96df1c21164213f86bfcfeedc05edf0 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/USB_HID/565e2e9592d3146b88e6e9acd7d8c87321557271 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/USB_HID/1571d2482a99a65bd3147ee7cc2354d29b72af0a .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o: ../src/config/default/usb_device_init_data.c  .generated_files/flags/USB_HID/44b96e944b0ff5e6b1f2494c7e36bc590e710da1 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o ../src/config/default/usb_device_init_data.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/flags/USB_HID/3ee715a6ebaff4c76a5c2b3eed091d32bb30ba8e .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o: ../src/hal/hal_core_m0plus_base.c  .generated_files/flags/USB_HID/326379738fbdc5ddb8f72ebda408c4780984dd86 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o ../src/hal/hal_core_m0plus_base.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_delay.o: ../src/hal/hal_delay.c  .generated_files/flags/USB_HID/b298054f53bbcf5b51baac5888c1e43630401295 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_delay.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_delay.o ../src/hal/hal_delay.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o: ../src/hal/hal_i2c_harmony.c  .generated_files/flags/USB_HID/7281ed29725fd609e15e3fa614387858dec42dd8 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o ../src/hal/hal_i2c_harmony.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o: ../src/hal/hal_spi_harmony.c  .generated_files/flags/USB_HID/943848335bbf8d78b7e8fc9a725ce2020b01e27 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o ../src/hal/hal_spi_harmony.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o: ../src/hal/hal_swi_uart_harmony.c  .generated_files/flags/USB_HID/d4c6e1608be19b3b7be00de10d342cc36d547447 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o ../src/hal/hal_swi_uart_harmony.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o: ../src/hal/hal_gpio_harmony.c  .generated_files/flags/USB_HID/8ae364e9e3c428f32044b014f4a74494dbe12599 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o ../src/hal/hal_gpio_harmony.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o: ../../../kitprotocol_parser/kit_protocol/kit_protocol_init.c  .generated_files/flags/USB_HID/914a5a78393ce7f0dcca45659e380be810596572 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1209376559" 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o.d" -o ${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o ../../../kitprotocol_parser/kit_protocol/kit_protocol_init.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o: ../../../kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c  .generated_files/flags/USB_HID/5fdd57c303c1d670d9563792f178d054a4054611 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1209376559" 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o.d" -o ${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o ../../../kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o: ../../../kitprotocol_parser/kit_protocol/kit_protocol_status.c  .generated_files/flags/USB_HID/2e5e6ad64ba8c3f1a9835e4801106898d017551e .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1209376559" 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o.d 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o.d" -o ${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o ../../../kitprotocol_parser/kit_protocol/kit_protocol_status.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o: ../../../kitprotocol_parser/kit_protocol/kit_protocol_utilities.c  .generated_files/flags/USB_HID/bcd1861bafeb1f801c4fbffc2ac78946cd208df4 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1209376559" 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o.d 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o.d" -o ${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o ../../../kitprotocol_parser/kit_protocol/kit_protocol_utilities.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1477374047/crc_engines.o: ../../../kitprotocol_parser/utilities/crc/crc_engines.c  .generated_files/flags/USB_HID/65b3193f6c183f74c607ef4588b60a0d07cab894 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1477374047" 
	@${RM} ${OBJECTDIR}/_ext/1477374047/crc_engines.o.d 
	@${RM} ${OBJECTDIR}/_ext/1477374047/crc_engines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1477374047/crc_engines.o.d" -o ${OBJECTDIR}/_ext/1477374047/crc_engines.o ../../../kitprotocol_parser/utilities/crc/crc_engines.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1506226913/kit_device_info.o: ../../../kitprotocol_parser/kit_device_info.c  .generated_files/flags/USB_HID/c5e38cf3fed3bded55fba65bd5ec3edcbcc7d8d0 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1506226913" 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_device_info.o.d 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_device_info.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1506226913/kit_device_info.o.d" -o ${OBJECTDIR}/_ext/1506226913/kit_device_info.o ../../../kitprotocol_parser/kit_device_info.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o: ../../../kitprotocol_parser/kit_hal_interface.c  .generated_files/flags/USB_HID/f7fa01dba9562a5097b93ed76003c37753da6fe3 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1506226913" 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o.d" -o ${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o ../../../kitprotocol_parser/kit_hal_interface.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1506226913/kit_host_interface.o: ../../../kitprotocol_parser/kit_host_interface.c  .generated_files/flags/USB_HID/2e2109c9f95001c4ffca5a08eb5c0c099616d742 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1506226913" 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_host_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_host_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1506226913/kit_host_interface.o.d" -o ${OBJECTDIR}/_ext/1506226913/kit_host_interface.o ../../../kitprotocol_parser/kit_host_interface.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/431374514/usb_hid.o: ../src/usb_hid/usb_hid.c  .generated_files/flags/USB_HID/a28945c954f94bc98457f2a86262837a8d46abe6 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/431374514" 
	@${RM} ${OBJECTDIR}/_ext/431374514/usb_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/431374514/usb_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/431374514/usb_hid.o.d" -o ${OBJECTDIR}/_ext/431374514/usb_hid.o ../src/usb_hid/usb_hid.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/USB_HID/94a34e021478dcfe4af3aba9158e0eb8caf47d99 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -DUSB_HID_INTERFACE -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_USB_HID=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/USB_HID/af328238acd9ebdccdd0265baf5c520f41badee1 .generated_files/flags/USB_HID/788970b4be7b0e22249f785bb2309922c278d1b3
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

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
