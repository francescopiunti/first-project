/*
 * main implementation: use this 'C' sample to create your own application
 *
 */
#include "derivative.h" /* include peripheral declarations */
#include "libohiboard.h"
#include "libohigrove/ohigrove.h"
#include "libohigrove/digital-out.h"
#include "libohigrove/analog-in.h"
#include "libohigrove/led.h"
#include "libohigrove/digital-gyro.h"
#include "sht21.h"

struct Iic_Config configuration = {

			.baudRate = 100000,
	        .devType =  IIC_MASTER_MODE,
			.addressMode = IIC_SEVEN_BIT,
					
			.speed = 100000,
			.busClk = SYSTEM_CLOCK_KHZ * 1000 //Hz
};

OhiGroveDigitalGyro_Device connector_iic = {
	
		.connector = OHIGROVE_CONN_I2C,
};
OhiGroveDigitalGyro_Device* connector_IIC = &connector_iic;

int main(void)
{
	/*Clock Initialation*/
	
	OhiGrove_initBoard(OHIGROVE_BOARD_FRDMKL25);
	System_initClock();

    Iic_Config* config = &configuration;
        
    int counter = 0;
    Iic_init (IIC1, config);
    
    uint8_t sample = 200;
    float value = 0;
    int16_t xyz[3] = {0,0,0};
    float axyz[3] = {0,0,0};
    uint32_t delay = 10;
    System_Errors error;
        
    error = OhiGroveDigitalGyro_init (connector_IIC);
    for (counter=0; counter < 5000; ++counter);
    OhiGroveDigitalGyro_zeroCalibrate (connector_IIC, sample, delay);
    
    for(;;) {
               	
		for (counter=0; counter < 100000; ++counter);
		value = OhiGroveDigitalGyro_getTemp(connector_IIC);
		OhiGroveDigitalGyro_getXYZ(connector_IIC, &xyz[0], &xyz[1], &xyz[2]);
		OhiGroveDigitalGyro_getAngularVelocity(connector_IIC, &axyz[0], &axyz[1], &axyz[2]);
		counter++;
			
		}
	
	return 0;
}

