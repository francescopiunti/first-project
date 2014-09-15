################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/libohiboard/source/adc.c" \
"../Sources/libohiboard/source/clock.c" \
"../Sources/libohiboard/source/errors.c" \
"../Sources/libohiboard/source/ftm.c" \
"../Sources/libohiboard/source/gpio.c" \
"../Sources/libohiboard/source/i2c.c" \
"../Sources/libohiboard/source/i2cbis.c" \
"../Sources/libohiboard/source/interrupt.c" \
"../Sources/libohiboard/source/libohiboard.c" \
"../Sources/libohiboard/source/rtc.c" \
"../Sources/libohiboard/source/spi.c" \
"../Sources/libohiboard/source/system.c" \
"../Sources/libohiboard/source/timeday.c" \
"../Sources/libohiboard/source/uart.c" \
"../Sources/libohiboard/source/utility.c" \

C_SRCS += \
../Sources/libohiboard/source/adc.c \
../Sources/libohiboard/source/clock.c \
../Sources/libohiboard/source/errors.c \
../Sources/libohiboard/source/ftm.c \
../Sources/libohiboard/source/gpio.c \
../Sources/libohiboard/source/i2c.c \
../Sources/libohiboard/source/i2cbis.c \
../Sources/libohiboard/source/interrupt.c \
../Sources/libohiboard/source/libohiboard.c \
../Sources/libohiboard/source/rtc.c \
../Sources/libohiboard/source/spi.c \
../Sources/libohiboard/source/system.c \
../Sources/libohiboard/source/timeday.c \
../Sources/libohiboard/source/uart.c \
../Sources/libohiboard/source/utility.c \

OBJS += \
./Sources/libohiboard/source/adc.o \
./Sources/libohiboard/source/clock.o \
./Sources/libohiboard/source/errors.o \
./Sources/libohiboard/source/ftm.o \
./Sources/libohiboard/source/gpio.o \
./Sources/libohiboard/source/i2c.o \
./Sources/libohiboard/source/i2cbis.o \
./Sources/libohiboard/source/interrupt.o \
./Sources/libohiboard/source/libohiboard.o \
./Sources/libohiboard/source/rtc.o \
./Sources/libohiboard/source/spi.o \
./Sources/libohiboard/source/system.o \
./Sources/libohiboard/source/timeday.o \
./Sources/libohiboard/source/uart.o \
./Sources/libohiboard/source/utility.o \

C_DEPS += \
./Sources/libohiboard/source/adc.d \
./Sources/libohiboard/source/clock.d \
./Sources/libohiboard/source/errors.d \
./Sources/libohiboard/source/ftm.d \
./Sources/libohiboard/source/gpio.d \
./Sources/libohiboard/source/i2c.d \
./Sources/libohiboard/source/i2cbis.d \
./Sources/libohiboard/source/interrupt.d \
./Sources/libohiboard/source/libohiboard.d \
./Sources/libohiboard/source/rtc.d \
./Sources/libohiboard/source/spi.d \
./Sources/libohiboard/source/system.d \
./Sources/libohiboard/source/timeday.d \
./Sources/libohiboard/source/uart.d \
./Sources/libohiboard/source/utility.d \

OBJS_QUOTED += \
"./Sources/libohiboard/source/adc.o" \
"./Sources/libohiboard/source/clock.o" \
"./Sources/libohiboard/source/errors.o" \
"./Sources/libohiboard/source/ftm.o" \
"./Sources/libohiboard/source/gpio.o" \
"./Sources/libohiboard/source/i2c.o" \
"./Sources/libohiboard/source/i2cbis.o" \
"./Sources/libohiboard/source/interrupt.o" \
"./Sources/libohiboard/source/libohiboard.o" \
"./Sources/libohiboard/source/rtc.o" \
"./Sources/libohiboard/source/spi.o" \
"./Sources/libohiboard/source/system.o" \
"./Sources/libohiboard/source/timeday.o" \
"./Sources/libohiboard/source/uart.o" \
"./Sources/libohiboard/source/utility.o" \

C_DEPS_QUOTED += \
"./Sources/libohiboard/source/adc.d" \
"./Sources/libohiboard/source/clock.d" \
"./Sources/libohiboard/source/errors.d" \
"./Sources/libohiboard/source/ftm.d" \
"./Sources/libohiboard/source/gpio.d" \
"./Sources/libohiboard/source/i2c.d" \
"./Sources/libohiboard/source/i2cbis.d" \
"./Sources/libohiboard/source/interrupt.d" \
"./Sources/libohiboard/source/libohiboard.d" \
"./Sources/libohiboard/source/rtc.d" \
"./Sources/libohiboard/source/spi.d" \
"./Sources/libohiboard/source/system.d" \
"./Sources/libohiboard/source/timeday.d" \
"./Sources/libohiboard/source/uart.d" \
"./Sources/libohiboard/source/utility.d" \

OBJS_OS_FORMAT += \
./Sources/libohiboard/source/adc.o \
./Sources/libohiboard/source/clock.o \
./Sources/libohiboard/source/errors.o \
./Sources/libohiboard/source/ftm.o \
./Sources/libohiboard/source/gpio.o \
./Sources/libohiboard/source/i2c.o \
./Sources/libohiboard/source/i2cbis.o \
./Sources/libohiboard/source/interrupt.o \
./Sources/libohiboard/source/libohiboard.o \
./Sources/libohiboard/source/rtc.o \
./Sources/libohiboard/source/spi.o \
./Sources/libohiboard/source/system.o \
./Sources/libohiboard/source/timeday.o \
./Sources/libohiboard/source/uart.o \
./Sources/libohiboard/source/utility.o \


# Each subdirectory must supply rules for building sources it contributes
Sources/libohiboard/source/adc.o: ../Sources/libohiboard/source/adc.c
	@echo 'Building file: $<'
	@echo 'Executing target #12 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/libohiboard/source/adc.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/libohiboard/source/adc.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/libohiboard/source/clock.o: ../Sources/libohiboard/source/clock.c
	@echo 'Building file: $<'
	@echo 'Executing target #13 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/libohiboard/source/clock.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/libohiboard/source/clock.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/libohiboard/source/errors.o: ../Sources/libohiboard/source/errors.c
	@echo 'Building file: $<'
	@echo 'Executing target #14 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/libohiboard/source/errors.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/libohiboard/source/errors.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/libohiboard/source/ftm.o: ../Sources/libohiboard/source/ftm.c
	@echo 'Building file: $<'
	@echo 'Executing target #15 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/libohiboard/source/ftm.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/libohiboard/source/ftm.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/libohiboard/source/gpio.o: ../Sources/libohiboard/source/gpio.c
	@echo 'Building file: $<'
	@echo 'Executing target #16 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/libohiboard/source/gpio.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/libohiboard/source/gpio.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/libohiboard/source/i2c.o: ../Sources/libohiboard/source/i2c.c
	@echo 'Building file: $<'
	@echo 'Executing target #17 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/libohiboard/source/i2c.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/libohiboard/source/i2c.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/libohiboard/source/i2cbis.o: ../Sources/libohiboard/source/i2cbis.c
	@echo 'Building file: $<'
	@echo 'Executing target #18 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/libohiboard/source/i2cbis.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/libohiboard/source/i2cbis.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/libohiboard/source/interrupt.o: ../Sources/libohiboard/source/interrupt.c
	@echo 'Building file: $<'
	@echo 'Executing target #19 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/libohiboard/source/interrupt.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/libohiboard/source/interrupt.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/libohiboard/source/libohiboard.o: ../Sources/libohiboard/source/libohiboard.c
	@echo 'Building file: $<'
	@echo 'Executing target #20 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/libohiboard/source/libohiboard.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/libohiboard/source/libohiboard.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/libohiboard/source/rtc.o: ../Sources/libohiboard/source/rtc.c
	@echo 'Building file: $<'
	@echo 'Executing target #21 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/libohiboard/source/rtc.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/libohiboard/source/rtc.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/libohiboard/source/spi.o: ../Sources/libohiboard/source/spi.c
	@echo 'Building file: $<'
	@echo 'Executing target #22 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/libohiboard/source/spi.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/libohiboard/source/spi.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/libohiboard/source/system.o: ../Sources/libohiboard/source/system.c
	@echo 'Building file: $<'
	@echo 'Executing target #23 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/libohiboard/source/system.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/libohiboard/source/system.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/libohiboard/source/timeday.o: ../Sources/libohiboard/source/timeday.c
	@echo 'Building file: $<'
	@echo 'Executing target #24 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/libohiboard/source/timeday.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/libohiboard/source/timeday.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/libohiboard/source/uart.o: ../Sources/libohiboard/source/uart.c
	@echo 'Building file: $<'
	@echo 'Executing target #25 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/libohiboard/source/uart.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/libohiboard/source/uart.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/libohiboard/source/utility.o: ../Sources/libohiboard/source/utility.c
	@echo 'Building file: $<'
	@echo 'Executing target #26 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/libohiboard/source/utility.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/libohiboard/source/utility.o"
	@echo 'Finished building: $<'
	@echo ' '


