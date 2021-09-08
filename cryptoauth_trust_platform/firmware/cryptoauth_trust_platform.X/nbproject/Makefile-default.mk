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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1.c ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1_device.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c ../src/config/default/peripheral/sercom/spi_master/plib_sercom1_spi_master.c ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/usb/src/usb_device.c ../src/config/default/usb/src/usb_device_hid.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/startup_xc32.c ../src/config/default/libc_syscalls.c ../src/config/default/usb_device_init_data.c ../src/config/default/tasks.c ../src/hal/hal_core_m0plus_base.c ../src/hal/hal_delay.c ../src/hal/hal_i2c_harmony.c ../src/hal/hal_spi_harmony.c ../src/hal/hal_swi_uart_harmony.c ../src/hal/hal_gpio_harmony.c ../../../kitprotocol_parser/kit_protocol/kit_protocol_init.c ../../../kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c ../../../kitprotocol_parser/kit_protocol/kit_protocol_status.c ../../../kitprotocol_parser/kit_protocol/kit_protocol_utilities.c ../../../kitprotocol_parser/utilities/crc/crc_engines.c ../../../kitprotocol_parser/kit_device_info.c ../../../kitprotocol_parser/kit_hal_interface.c ../../../kitprotocol_parser/kit_host_interface.c ../src/main.c ../src/app.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/308758920/usb_device.o ${OBJECTDIR}/_ext/308758920/usb_device_hid.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o ${OBJECTDIR}/_ext/659857049/hal_delay.o ${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o ${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o ${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o ${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o ${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o ${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o ${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o ${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o ${OBJECTDIR}/_ext/1477374047/crc_engines.o ${OBJECTDIR}/_ext/1506226913/kit_device_info.o ${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o ${OBJECTDIR}/_ext/1506226913/kit_host_interface.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o.d ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o.d ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d ${OBJECTDIR}/_ext/1865521619/plib_port.o.d ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o.d ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/1881668453/sys_int.o.d ${OBJECTDIR}/_ext/308758920/usb_device.o.d ${OBJECTDIR}/_ext/308758920/usb_device_hid.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o.d ${OBJECTDIR}/_ext/1171490990/tasks.o.d ${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o.d ${OBJECTDIR}/_ext/659857049/hal_delay.o.d ${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o.d ${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o.d ${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o.d ${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o.d ${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o.d ${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o.d ${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o.d ${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o.d ${OBJECTDIR}/_ext/1477374047/crc_engines.o.d ${OBJECTDIR}/_ext/1506226913/kit_device_info.o.d ${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o.d ${OBJECTDIR}/_ext/1506226913/kit_host_interface.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ${OBJECTDIR}/_ext/1865521619/plib_port.o ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/308758920/usb_device.o ${OBJECTDIR}/_ext/308758920/usb_device_hid.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o ${OBJECTDIR}/_ext/659857049/hal_delay.o ${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o ${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o ${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o ${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o ${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o ${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o ${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o ${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o ${OBJECTDIR}/_ext/1477374047/crc_engines.o ${OBJECTDIR}/_ext/1506226913/kit_device_info.o ${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o ${OBJECTDIR}/_ext/1506226913/kit_host_interface.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o

# Source Files
SOURCEFILES=../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1.c ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1_device.c ../src/config/default/peripheral/clock/plib_clock.c ../src/config/default/peripheral/evsys/plib_evsys.c ../src/config/default/peripheral/nvic/plib_nvic.c ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c ../src/config/default/peripheral/port/plib_port.c ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c ../src/config/default/peripheral/sercom/spi_master/plib_sercom1_spi_master.c ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/usb/src/usb_device.c ../src/config/default/usb/src/usb_device_hid.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/exceptions.c ../src/config/default/startup_xc32.c ../src/config/default/libc_syscalls.c ../src/config/default/usb_device_init_data.c ../src/config/default/tasks.c ../src/hal/hal_core_m0plus_base.c ../src/hal/hal_delay.c ../src/hal/hal_i2c_harmony.c ../src/hal/hal_spi_harmony.c ../src/hal/hal_swi_uart_harmony.c ../src/hal/hal_gpio_harmony.c ../../../kitprotocol_parser/kit_protocol/kit_protocol_init.c ../../../kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c ../../../kitprotocol_parser/kit_protocol/kit_protocol_status.c ../../../kitprotocol_parser/kit_protocol/kit_protocol_utilities.c ../../../kitprotocol_parser/utilities/crc/crc_engines.c ../../../kitprotocol_parser/kit_device_info.c ../../../kitprotocol_parser/kit_hal_interface.c ../../../kitprotocol_parser/kit_host_interface.c ../src/main.c ../src/app.c

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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/cryptoauth_trust_platform.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o: ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1.c  .generated_files/flags/default/c116ce18fd554230d618efa1420b00e279db89fd .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/818654064" 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o.d 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o.d" -o ${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o: ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1_device.c  .generated_files/flags/default/11bfa1631060676fafdcccb7bc469bf39016a2e8 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/818654064" 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o.d" -o ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/default/2fe1a8238e9c8b9e022ae05c24b875aa7260d136 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/default/4f39775a8a23f29309f02e9ead1e2cb79baf5159 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/5fc283d754c439435a3a60a00b8fe647473c6b9d .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/default/30c5462caff42d25f849eeae294fe136ba56526a .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/flags/default/2bdcc5d0761316116d57bbc83a9d8d7c3584e4d8 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o: ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c  .generated_files/flags/default/6beab09b43a628f0aa762ec885a9861b5fad876f .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/508257091" 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d" -o ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o: ../src/config/default/peripheral/sercom/spi_master/plib_sercom1_spi_master.c  .generated_files/flags/default/1f9f52037e9c9675392747910ccf7df030d9552a .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/17022449" 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o.d" -o ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o ../src/config/default/peripheral/sercom/spi_master/plib_sercom1_spi_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/flags/default/27f358a21de99430fec22f56aa6c416157d95ed7 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c  .generated_files/flags/default/c50434259aaa6256e4411421b8ee5d84685b09ad .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/211727e1636f9cbbed48d068cfe4587b482af59 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/flags/default/d77e5f04390fe86d4313f55c17754002ef361d32 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/308758920/usb_device.o: ../src/config/default/usb/src/usb_device.c  .generated_files/flags/default/4e56c752d682338367bea3b3d9ff2f17319d31ea .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device.o ../src/config/default/usb/src/usb_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/308758920/usb_device_hid.o: ../src/config/default/usb/src/usb_device_hid.c  .generated_files/flags/default/6e5f4027a1e885887880e92f4140d55750bca8f3 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device_hid.o ../src/config/default/usb/src/usb_device_hid.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/4a251c7af9fb5692008b1786793d025ff7a6e714 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/c41b3a30f57d8d5aa720d820f89fdb517745a217 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/f88e851ab5a462be2b8aaed3dbdf8e698e7c4802 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/8eff2930ed83840abf4bb8628579940bf536777a .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/4f99ed143a438c670207d899c1cfb7d224fa618c .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o: ../src/config/default/usb_device_init_data.c  .generated_files/flags/default/abafca9f28b6e3b83b9c00f6483f84750c01f4a9 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o ../src/config/default/usb_device_init_data.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/flags/default/8f41a1477ddf3802d4ac95a05d31acf5b3c8bac9 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o: ../src/hal/hal_core_m0plus_base.c  .generated_files/flags/default/8a8ae11c3c138c3e71535f2b3ead6aa95f711cac .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o ../src/hal/hal_core_m0plus_base.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_delay.o: ../src/hal/hal_delay.c  .generated_files/flags/default/dbb1d45e48cca8cfd262f0152a532f49ce38d29d .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_delay.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_delay.o ../src/hal/hal_delay.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o: ../src/hal/hal_i2c_harmony.c  .generated_files/flags/default/eebe855e2cdf85cf25c3767d402bdcdb80800a5 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o ../src/hal/hal_i2c_harmony.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o: ../src/hal/hal_spi_harmony.c  .generated_files/flags/default/e9bbbadaee79236eadd660eab095b0a5831959fd .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o ../src/hal/hal_spi_harmony.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o: ../src/hal/hal_swi_uart_harmony.c  .generated_files/flags/default/b3973d7ae782083e6fdbe2a0886f8a4e51427f5a .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o ../src/hal/hal_swi_uart_harmony.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o: ../src/hal/hal_gpio_harmony.c  .generated_files/flags/default/b061b59fc4e94e39fef1e1204adee9865b1936fb .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o ../src/hal/hal_gpio_harmony.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o: ../../../kitprotocol_parser/kit_protocol/kit_protocol_init.c  .generated_files/flags/default/c825f0390cc2efed1a065dc5c273112240de2ade .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1209376559" 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o.d" -o ${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o ../../../kitprotocol_parser/kit_protocol/kit_protocol_init.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o: ../../../kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c  .generated_files/flags/default/bbe7dae83c2e068c8b9e88523e0119a04e941202 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1209376559" 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o.d" -o ${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o ../../../kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o: ../../../kitprotocol_parser/kit_protocol/kit_protocol_status.c  .generated_files/flags/default/830cdb0e0ccef0e925d73c6fbdc1e1608c62ff85 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1209376559" 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o.d 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o.d" -o ${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o ../../../kitprotocol_parser/kit_protocol/kit_protocol_status.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o: ../../../kitprotocol_parser/kit_protocol/kit_protocol_utilities.c  .generated_files/flags/default/4a11d391aa1d5bdaa6c4ace360c919806ba1a5ad .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1209376559" 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o.d 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o.d" -o ${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o ../../../kitprotocol_parser/kit_protocol/kit_protocol_utilities.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1477374047/crc_engines.o: ../../../kitprotocol_parser/utilities/crc/crc_engines.c  .generated_files/flags/default/6052dfeb5d77c05b52e88bcf81b957cc466717a0 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1477374047" 
	@${RM} ${OBJECTDIR}/_ext/1477374047/crc_engines.o.d 
	@${RM} ${OBJECTDIR}/_ext/1477374047/crc_engines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1477374047/crc_engines.o.d" -o ${OBJECTDIR}/_ext/1477374047/crc_engines.o ../../../kitprotocol_parser/utilities/crc/crc_engines.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1506226913/kit_device_info.o: ../../../kitprotocol_parser/kit_device_info.c  .generated_files/flags/default/86f9d9e5222372eed0afea6658db9556d100cc72 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1506226913" 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_device_info.o.d 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_device_info.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1506226913/kit_device_info.o.d" -o ${OBJECTDIR}/_ext/1506226913/kit_device_info.o ../../../kitprotocol_parser/kit_device_info.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o: ../../../kitprotocol_parser/kit_hal_interface.c  .generated_files/flags/default/340af8cd6e90c97a527f2ef81fa274c29902e8ed .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1506226913" 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o.d" -o ${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o ../../../kitprotocol_parser/kit_hal_interface.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1506226913/kit_host_interface.o: ../../../kitprotocol_parser/kit_host_interface.c  .generated_files/flags/default/409f24bf14c8f97208fceacdbdc5baf45b09c327 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1506226913" 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_host_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_host_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1506226913/kit_host_interface.o.d" -o ${OBJECTDIR}/_ext/1506226913/kit_host_interface.o ../../../kitprotocol_parser/kit_host_interface.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/d638ccc0aa7cb0585fd118e48d0b7beb6feb7cf0 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/f92f0f9aaec72948fd88fa243ae83026f1dd335 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
else
${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o: ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1.c  .generated_files/flags/default/481da85039869384fc3c05975bfd9384a2a0198d .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/818654064" 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o.d 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o.d" -o ${OBJECTDIR}/_ext/818654064/drv_usbfsv1.o ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o: ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1_device.c  .generated_files/flags/default/d3638fd534db75c77ae32bad4b3f7052eddebedc .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/818654064" 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o.d" -o ${OBJECTDIR}/_ext/818654064/drv_usbfsv1_device.o ../src/config/default/driver/usb/usbfsv1/src/drv_usbfsv1_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1984496892/plib_clock.o: ../src/config/default/peripheral/clock/plib_clock.c  .generated_files/flags/default/690a77bc14e763ab416765d29df1710d838b608c .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1984496892" 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984496892/plib_clock.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1984496892/plib_clock.o.d" -o ${OBJECTDIR}/_ext/1984496892/plib_clock.o ../src/config/default/peripheral/clock/plib_clock.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1986646378/plib_evsys.o: ../src/config/default/peripheral/evsys/plib_evsys.c  .generated_files/flags/default/4dc47e539932701e94d8aa49e92facbf8e0752c6 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1986646378" 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d 
	@${RM} ${OBJECTDIR}/_ext/1986646378/plib_evsys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1986646378/plib_evsys.o.d" -o ${OBJECTDIR}/_ext/1986646378/plib_evsys.o ../src/config/default/peripheral/evsys/plib_evsys.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865468468/plib_nvic.o: ../src/config/default/peripheral/nvic/plib_nvic.c  .generated_files/flags/default/fe88bd61b2a81e0f58aa7ed38c71bc1a95acb211 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1865468468" 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865468468/plib_nvic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865468468/plib_nvic.o.d" -o ${OBJECTDIR}/_ext/1865468468/plib_nvic.o ../src/config/default/peripheral/nvic/plib_nvic.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o: ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c  .generated_files/flags/default/d910a9c4e651cd2b9066a4796eb3a9fa6c83a2bd .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1593096446" 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d 
	@${RM} ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o.d" -o ${OBJECTDIR}/_ext/1593096446/plib_nvmctrl.o ../src/config/default/peripheral/nvmctrl/plib_nvmctrl.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1865521619/plib_port.o: ../src/config/default/peripheral/port/plib_port.c  .generated_files/flags/default/5d6cc63b6ec623281c571326e2cd9286d7925665 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1865521619" 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865521619/plib_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1865521619/plib_port.o.d" -o ${OBJECTDIR}/_ext/1865521619/plib_port.o ../src/config/default/peripheral/port/plib_port.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o: ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c  .generated_files/flags/default/415a0ea7d9868036a9a09b5ffbc1da5246c98cca .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/508257091" 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o.d" -o ${OBJECTDIR}/_ext/508257091/plib_sercom2_i2c_master.o ../src/config/default/peripheral/sercom/i2c_master/plib_sercom2_i2c_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o: ../src/config/default/peripheral/sercom/spi_master/plib_sercom1_spi_master.c  .generated_files/flags/default/f79ca085652abde1b461618aa7a362e5fda91c1 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/17022449" 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o.d" -o ${OBJECTDIR}/_ext/17022449/plib_sercom1_spi_master.o ../src/config/default/peripheral/sercom/spi_master/plib_sercom1_spi_master.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c  .generated_files/flags/default/66f85a990cb31b786c2ae1b304200da21cdea321 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom3_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom3_usart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o: ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c  .generated_files/flags/default/9c0378710501f3a66ce4b8669a643bd39ea1c240 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/504274921" 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d 
	@${RM} ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o.d" -o ${OBJECTDIR}/_ext/504274921/plib_sercom0_usart.o ../src/config/default/peripheral/sercom/usart/plib_sercom0_usart.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  .generated_files/flags/default/e1363e15d1d80262829e3fda1b4a958c799e12d7 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  .generated_files/flags/default/10c1b6a888b20b734208f9c69586a8dc36f662c0 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/308758920/usb_device.o: ../src/config/default/usb/src/usb_device.c  .generated_files/flags/default/a970050747d8b135e4035ed42e5f8f1580030606 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device.o ../src/config/default/usb/src/usb_device.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/308758920/usb_device_hid.o: ../src/config/default/usb/src/usb_device_hid.c  .generated_files/flags/default/9fc2952ba90db91bdc9d38a0197a6d7a10464dfb .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/308758920" 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_hid.o.d 
	@${RM} ${OBJECTDIR}/_ext/308758920/usb_device_hid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/308758920/usb_device_hid.o.d" -o ${OBJECTDIR}/_ext/308758920/usb_device_hid.o ../src/config/default/usb/src/usb_device_hid.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  .generated_files/flags/default/795e525c27969ab6928662ccaac512a4b237409e .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  .generated_files/flags/default/9f3e770a03ede5051553dff6abcd546f4e6a0b99 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  .generated_files/flags/default/219701ccae36218420dc7663dc4a43e6be764bf4 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/startup_xc32.o: ../src/config/default/startup_xc32.c  .generated_files/flags/default/e270c8651ff9276ddc37e035935b3b3b0c4ab788 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/startup_xc32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/startup_xc32.o.d" -o ${OBJECTDIR}/_ext/1171490990/startup_xc32.o ../src/config/default/startup_xc32.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/libc_syscalls.o: ../src/config/default/libc_syscalls.c  .generated_files/flags/default/f427d930625653ca67827b27d732f3d67550838b .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/libc_syscalls.o.d" -o ${OBJECTDIR}/_ext/1171490990/libc_syscalls.o ../src/config/default/libc_syscalls.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o: ../src/config/default/usb_device_init_data.c  .generated_files/flags/default/f8b2f7ef31d541fe1fd23c99711110010c3c8496 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o.d" -o ${OBJECTDIR}/_ext/1171490990/usb_device_init_data.o ../src/config/default/usb_device_init_data.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  .generated_files/flags/default/cb938077096750882b4a9f06d0406b3966632ae8 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o: ../src/hal/hal_core_m0plus_base.c  .generated_files/flags/default/4909de173fc7f58d5316221752780986e8e929a9 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_core_m0plus_base.o ../src/hal/hal_core_m0plus_base.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_delay.o: ../src/hal/hal_delay.c  .generated_files/flags/default/550f169e227e197220014f85da93918f7f019da4 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_delay.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_delay.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_delay.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_delay.o ../src/hal/hal_delay.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o: ../src/hal/hal_i2c_harmony.c  .generated_files/flags/default/cef78e4cdf292001c614c5a501b0cfeb180e096f .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_i2c_harmony.o ../src/hal/hal_i2c_harmony.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o: ../src/hal/hal_spi_harmony.c  .generated_files/flags/default/d02e7f1ec73ccc476accb2903b44ea1480576e4a .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_spi_harmony.o ../src/hal/hal_spi_harmony.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o: ../src/hal/hal_swi_uart_harmony.c  .generated_files/flags/default/7fc19c1e80ba0f7ac4938ec798a680ab53682a94 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_swi_uart_harmony.o ../src/hal/hal_swi_uart_harmony.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o: ../src/hal/hal_gpio_harmony.c  .generated_files/flags/default/8d1a0595e6e0f7f5949f3e5aec9e809290aca157 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/659857049" 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o.d 
	@${RM} ${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o.d" -o ${OBJECTDIR}/_ext/659857049/hal_gpio_harmony.o ../src/hal/hal_gpio_harmony.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o: ../../../kitprotocol_parser/kit_protocol/kit_protocol_init.c  .generated_files/flags/default/eb7c5500eaa6b31833631cd2ac56bcf007141681 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1209376559" 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o.d" -o ${OBJECTDIR}/_ext/1209376559/kit_protocol_init.o ../../../kitprotocol_parser/kit_protocol/kit_protocol_init.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o: ../../../kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c  .generated_files/flags/default/8f5f28da08bc3c737b1bdef55e941ec44c3cf515 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1209376559" 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o.d 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o.d" -o ${OBJECTDIR}/_ext/1209376559/kit_protocol_interpreter.o ../../../kitprotocol_parser/kit_protocol/kit_protocol_interpreter.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o: ../../../kitprotocol_parser/kit_protocol/kit_protocol_status.c  .generated_files/flags/default/37b34a1e8e919d57be8517e1f43fc8e315c17d0d .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1209376559" 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o.d 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o.d" -o ${OBJECTDIR}/_ext/1209376559/kit_protocol_status.o ../../../kitprotocol_parser/kit_protocol/kit_protocol_status.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o: ../../../kitprotocol_parser/kit_protocol/kit_protocol_utilities.c  .generated_files/flags/default/f8e39eef40fef36cef1e8f24aed95c4d742ac8d9 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1209376559" 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o.d 
	@${RM} ${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o.d" -o ${OBJECTDIR}/_ext/1209376559/kit_protocol_utilities.o ../../../kitprotocol_parser/kit_protocol/kit_protocol_utilities.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1477374047/crc_engines.o: ../../../kitprotocol_parser/utilities/crc/crc_engines.c  .generated_files/flags/default/5777eae7d0e7a2baa1f3cdd249c4b072b8eefa21 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1477374047" 
	@${RM} ${OBJECTDIR}/_ext/1477374047/crc_engines.o.d 
	@${RM} ${OBJECTDIR}/_ext/1477374047/crc_engines.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1477374047/crc_engines.o.d" -o ${OBJECTDIR}/_ext/1477374047/crc_engines.o ../../../kitprotocol_parser/utilities/crc/crc_engines.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1506226913/kit_device_info.o: ../../../kitprotocol_parser/kit_device_info.c  .generated_files/flags/default/3dbea0336fa3e0a0ab4bc18691b67d4dec656072 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1506226913" 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_device_info.o.d 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_device_info.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1506226913/kit_device_info.o.d" -o ${OBJECTDIR}/_ext/1506226913/kit_device_info.o ../../../kitprotocol_parser/kit_device_info.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o: ../../../kitprotocol_parser/kit_hal_interface.c  .generated_files/flags/default/f65b201722820c21bc621caa08b40ddefcc86c2 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1506226913" 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o.d" -o ${OBJECTDIR}/_ext/1506226913/kit_hal_interface.o ../../../kitprotocol_parser/kit_hal_interface.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1506226913/kit_host_interface.o: ../../../kitprotocol_parser/kit_host_interface.c  .generated_files/flags/default/d0f936df96ce1f516cea21c711865665d48ca997 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1506226913" 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_host_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/1506226913/kit_host_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1506226913/kit_host_interface.o.d" -o ${OBJECTDIR}/_ext/1506226913/kit_host_interface.o ../../../kitprotocol_parser/kit_host_interface.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/default/1990b45c35a3c044d851cc4997f12901a8478086 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/default/8383536f315e1266f8c08b4c1776aa993ce47374 .generated_files/flags/default/5008f6c114cc4a308ec8e6fffe73e491abfd3602
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../../../kitprotocol_parser" -I"../src" -I"../src/config/default" -I"../src/hal" -I"../src/packs/ATSAMD21E18A_DFP" -I"../src/packs/CMSIS/" -I"../src/packs/CMSIS/CMSIS/Core/Include" -I"../src/usb_hid" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}/samd21a" ${PACK_COMMON_OPTIONS} 
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/cryptoauth_trust_platform.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=4096,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/cryptoauth_trust_platform.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/default/ATSAMD21E18A.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/cryptoauth_trust_platform.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=4096,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}/samd21a"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/cryptoauth_trust_platform.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default
