################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../../makefile.local

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS_QUOTED += \
"../Sources/libohigrove/analog-in.c" \
"../Sources/libohigrove/button.c" \
"../Sources/libohigrove/buzzer.c" \
"../Sources/libohigrove/digital-gyro.c" \
"../Sources/libohigrove/digital-out.c" \
"../Sources/libohigrove/led.c" \
"../Sources/libohigrove/ohigrove.c" \
"../Sources/libohigrove/relay.c" \

C_SRCS += \
../Sources/libohigrove/analog-in.c \
../Sources/libohigrove/button.c \
../Sources/libohigrove/buzzer.c \
../Sources/libohigrove/digital-gyro.c \
../Sources/libohigrove/digital-out.c \
../Sources/libohigrove/led.c \
../Sources/libohigrove/ohigrove.c \
../Sources/libohigrove/relay.c \

OBJS += \
./Sources/libohigrove/analog-in.o \
./Sources/libohigrove/button.o \
./Sources/libohigrove/buzzer.o \
./Sources/libohigrove/digital-gyro.o \
./Sources/libohigrove/digital-out.o \
./Sources/libohigrove/led.o \
./Sources/libohigrove/ohigrove.o \
./Sources/libohigrove/relay.o \

C_DEPS += \
./Sources/libohigrove/analog-in.d \
./Sources/libohigrove/button.d \
./Sources/libohigrove/buzzer.d \
./Sources/libohigrove/digital-gyro.d \
./Sources/libohigrove/digital-out.d \
./Sources/libohigrove/led.d \
./Sources/libohigrove/ohigrove.d \
./Sources/libohigrove/relay.d \

OBJS_QUOTED += \
"./Sources/libohigrove/analog-in.o" \
"./Sources/libohigrove/button.o" \
"./Sources/libohigrove/buzzer.o" \
"./Sources/libohigrove/digital-gyro.o" \
"./Sources/libohigrove/digital-out.o" \
"./Sources/libohigrove/led.o" \
"./Sources/libohigrove/ohigrove.o" \
"./Sources/libohigrove/relay.o" \

C_DEPS_QUOTED += \
"./Sources/libohigrove/analog-in.d" \
"./Sources/libohigrove/button.d" \
"./Sources/libohigrove/buzzer.d" \
"./Sources/libohigrove/digital-gyro.d" \
"./Sources/libohigrove/digital-out.d" \
"./Sources/libohigrove/led.d" \
"./Sources/libohigrove/ohigrove.d" \
"./Sources/libohigrove/relay.d" \

OBJS_OS_FORMAT += \
./Sources/libohigrove/analog-in.o \
./Sources/libohigrove/button.o \
./Sources/libohigrove/buzzer.o \
./Sources/libohigrove/digital-gyro.o \
./Sources/libohigrove/digital-out.o \
./Sources/libohigrove/led.o \
./Sources/libohigrove/ohigrove.o \
./Sources/libohigrove/relay.o \


# Each subdirectory must supply rules for building sources it contributes
Sources/libohigrove/analog-in.o: ../Sources/libohigrove/analog-in.c
	@echo 'Building file: $<'
	@echo 'Executing target #4 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/libohigrove/analog-in.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/libohigrove/analog-in.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/libohigrove/button.o: ../Sources/libohigrove/button.c
	@echo 'Building file: $<'
	@echo 'Executing target #5 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/libohigrove/button.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/libohigrove/button.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/libohigrove/buzzer.o: ../Sources/libohigrove/buzzer.c
	@echo 'Building file: $<'
	@echo 'Executing target #6 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/libohigrove/buzzer.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/libohigrove/buzzer.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/libohigrove/digital-gyro.o: ../Sources/libohigrove/digital-gyro.c
	@echo 'Building file: $<'
	@echo 'Executing target #7 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/libohigrove/digital-gyro.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/libohigrove/digital-gyro.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/libohigrove/digital-out.o: ../Sources/libohigrove/digital-out.c
	@echo 'Building file: $<'
	@echo 'Executing target #8 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/libohigrove/digital-out.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/libohigrove/digital-out.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/libohigrove/led.o: ../Sources/libohigrove/led.c
	@echo 'Building file: $<'
	@echo 'Executing target #9 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/libohigrove/led.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/libohigrove/led.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/libohigrove/ohigrove.o: ../Sources/libohigrove/ohigrove.c
	@echo 'Building file: $<'
	@echo 'Executing target #10 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/libohigrove/ohigrove.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/libohigrove/ohigrove.o"
	@echo 'Finished building: $<'
	@echo ' '

Sources/libohigrove/relay.o: ../Sources/libohigrove/relay.c
	@echo 'Building file: $<'
	@echo 'Executing target #11 $<'
	@echo 'Invoking: ARM Ltd Windows GCC C Compiler'
	"$(ARMSourceryDirEnv)/arm-none-eabi-gcc" "$<" @"Sources/libohigrove/relay.args" -MMD -MP -MF"$(@:%.o=%.d)" -o"Sources/libohigrove/relay.o"
	@echo 'Finished building: $<'
	@echo ' '


