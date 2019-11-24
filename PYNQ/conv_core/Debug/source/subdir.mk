################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../conv_core.cpp 

OBJS += \
./source/conv_core.o 

CPP_DEPS += \
./source/conv_core.d 


# Each subdirectory must supply rules for building sources it contributes
source/conv_core.o: C:/Users/Caiyujie/Desktop/gongkaike_hls/code/day6/conv_core/conv_core.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	g++ -DAESL_TB -D__llvm__ -D__llvm__ -ID:/Xilinx/Vivado/2018.1/include -ID:/Xilinx/Vivado/2018.1/win64/tools/systemc/include -IC:/Users/Caiyujie/Desktop/gongkaike_hls/code/day6 -ID:/Xilinx/Vivado/2018.1/include/ap_sysc -ID:/Xilinx/Vivado/2018.1/include/etc -ID:/Xilinx/Vivado/2018.1/win64/tools/auto_cc/include -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


