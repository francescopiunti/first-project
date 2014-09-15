/******************************************************************************
 * Copyright (C) 2013 Loccioni Group <http://www.loccioni.com>
 * Loccioni Group, Via Fiume 16, Angeli di Rosora (AN), Italy
 * ALL RIGHT RESERVED
 *
 * File:
 *  sht21.h
 *
 * Description:
 *  SHT21 Sensor manage
 *
 * Author:
 *  Marco Giammarini <m.giammarini@loccioni.com>
 ******************************************************************************/

/**
 * @file Project_Headers/sht21.h
 * @author Marco Giammarini <m.giammarini@loccioni.com>
 * @brief Sensirion SHT21 sensor interface.
 */

#ifndef __SHT21_H
#define __SHT21_H

#include "libohiboard.h"


typedef enum _SHT21_Errors
{
    SHT21_NO_ERROR,
    
    SHT21_ERROR_SOFT_RESET,
    
    SHT21_ERROR_WRITE_REG,
    
    SHT21_ERROR_READ_REG_DATA,
    SHT21_ERROR_READ_REG_CMD,
    SHT21_ERROR_READ_REG_CRC,
    
    SHT21_ERROR_CRC_MISMATCH,
    SHT21_ERROR_CRC_OK,
    
    SHT21_ERROR_HM_CMD,
    
    SHT21_ERROR_NHM_CMD,
    SHT21_ERROR_NHM_READ_REQ,
    SHT21_ERROR_NHM_DATA_MSB,
    SHT21_ERROR_NHM_DATA_LSB,
    SHT21_ERROR_NHM_DATA_CRC,
    SHT21_ERROR_NHM_CRC,
    SHT21_ERROR_NHM_TIMEOUT,
} SHT21_Errors;

typedef enum {
    SHT21_TEMPERATURE,
    SHT21_HUMIDITY
} SHT21_MeasType;

#define SHT21_RES_RH12_T14      0x00      
#define SHT21_RES_RH08_T12      0x01
#define SHT21_RES_RH10_T13      0x80
#define SHT21_RES_RH11_T11      0x81
#define SHT21_RES_MASK          0x81

SHT21_Errors SHT21_getSerialNumber (Iic_DeviceHandle dev, uint8_t serialNumber[]);

SHT21_Errors SHT21_readUserRegister (Iic_DeviceHandle dev, uint8_t *registerValue);
SHT21_Errors SHT21_writeUserRegister (Iic_DeviceHandle dev, uint8_t registerValue);

SHT21_Errors SHT21_softReset (Iic_DeviceHandle dev);

SHT21_Errors SHT21_checkCrc (uint8_t data[], uint8_t numByte, uint8_t checksum);

SHT21_Errors SHT21_measureHoldMaster (Iic_DeviceHandle dev, SHT21_MeasType measType, uint16_t *value);
SHT21_Errors SHT21_measureNoHoldMaster (Iic_DeviceHandle dev, SHT21_MeasType measType, uint16_t *value);

void SHT21_calculateTemperature (uint16_t value, float *temperature);
void SHT21_calculateHumidity (uint16_t value, float *humidity);

#endif /* __SHT21_H */

