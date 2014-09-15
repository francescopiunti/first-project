/******************************************************************************
 * Copyright (C) 2013 Loccioni Group <http://www.loccioni.com>
 * Loccioni Group, Via Fiume 16, Angeli di Rosora (AN), Italy
 * ALL RIGHT RESERVED
 *
 * File:
 *  sht21.c
 *
 * Description:
 *  SHT21 Sensor manage
 *
 * Author:
 *  Marco Giammarini <m.giammarini@loccioni.com>
 ******************************************************************************/

/**
 * @file Project_Headers/sht21.c
 * @author Marco Giammarini <m.giammarini@loccioni.com>
 * @brief Sensirion SHT21 sensor interface.
 */

#include "sht21.h"
//#include "timer.h"

#define SHT21_ADDRESS                     0x40

#define SHT21_ADDRESS_WRITE               0x80
#define SHT21_ADDRESS_READ                0x81

#define SHT21_TRIG_TEMP_MEASUREMENT_HM    0xE3 /**< Command temperature measure hold master */
#define SHT21_TRIG_TEMP_MEASUREMENT_NHM   0xF3 /**< Command temperature measure no hold master */
#define SHT21_TRIG_RH_MEASUREMENT_HM      0xE5 /**< Command humidity measure hold master */
#define SHT21_TRIG_RH_MEASUREMENT_NHM     0xF5 /**< Command humidity measure no hold master */
#define SHT21_USER_REG_WRITE              0xE6 /**< Command writing user register */
#define SHT21_USER_REG_READ               0xE7 /**< Command reading user register */
#define SHT21_SOFT_RESET                  0xFE /**< Command soft reset */

static union SHT21_TxMessageType
{
    uint8_t buffer[10];
    
    struct {
        uint8_t command;
    } simple;
    
    struct {
        uint8_t command;
        uint8_t content;
    } writeRegister;

} SHT21_txMessage;

static union SHT21_RxMessageType
{
    uint8_t buffer[10];
    
    struct {
        uint8_t value;
        uint8_t crc;
    } simple;
    
    struct {
        uint8_t valueMsb;
        uint8_t valueLsb;
        uint8_t crc;
    } data;

} SHT21_rxMessage;

/** 
 * SHT21 provides a CRC-8 checksum for error detection. 
 * The polynomial used is x^8 + x^5 + x^4 +1 = 100110001.
 */
static const uint16_t SHT21_crcPolynomial = 0x131;

/* TODO */
SHT21_Errors SHT21_getSerialNumber (Iic_DeviceHandle dev, uint8_t serialNumber[])
{    
    return SHT21_NO_ERROR;
}

SHT21_Errors SHT21_readUserRegister (Iic_DeviceHandle dev, uint8_t *registerValue)
{
    System_Errors error;
    
    SHT21_txMessage.simple.command = SHT21_USER_REG_READ;
    error = Iic_writeBytes(dev,SHT21_ADDRESS_WRITE,SHT21_txMessage.buffer,1,IIC_NO_STOP);
    if (error != ERRORS_IIC_TX_OK)
        return SHT21_ERROR_READ_REG_CMD;

    error = Iic_readBytes(dev,SHT21_ADDRESS_READ,SHT21_rxMessage.buffer,2,IIC_STOP);
    if ( error != ERRORS_IIC_RX_OK)
        return SHT21_ERROR_READ_REG_DATA;

    *registerValue = SHT21_rxMessage.buffer[0];

    if (SHT21_checkCrc(&SHT21_rxMessage.buffer[0],1,SHT21_rxMessage.simple.crc) != SHT21_ERROR_CRC_OK)
        return SHT21_ERROR_READ_REG_CRC;
    else
        return SHT21_NO_ERROR;    
}

SHT21_Errors SHT21_writeUserRegister (Iic_DeviceHandle dev, uint8_t registerValue)
{
    System_Errors error;
    
    SHT21_txMessage.writeRegister.command = SHT21_USER_REG_WRITE;
    SHT21_txMessage.writeRegister.content = registerValue;

    error = Iic_writeBytes(dev,SHT21_ADDRESS_WRITE,SHT21_txMessage.buffer,2,IIC_STOP);
    if (error != ERRORS_IIC_TX_OK)
        return SHT21_ERROR_WRITE_REG;
    
    return SHT21_NO_ERROR;
}

SHT21_Errors SHT21_softReset (Iic_DeviceHandle dev)
{
    System_Errors error;
    
    SHT21_txMessage.simple.command = SHT21_SOFT_RESET;
    
    error = Iic_writeBytes(dev,SHT21_ADDRESS_WRITE,SHT21_txMessage.buffer,1,IIC_STOP);
    if (error != ERRORS_IIC_TX_OK)
        return SHT21_ERROR_SOFT_RESET;

    /* We waiting 20ms for reset of SHT21. */
//    Timer_delay(20);

    return SHT21_NO_ERROR;
}

SHT21_Errors SHT21_checkCrc (uint8_t data[], uint8_t numByte, uint8_t checksum)
{
    uint8_t crc=0, byteData, bitData;

    /* calculates 8-Bit checksum with given polynomial */
    for (byteData = 0; byteData < numByte; ++byteData)
    {
        crc ^= (data[byteData]);
        for (bitData = 8; bitData > 0; --bitData)
        {
            if (crc & 0x80)
                crc = (crc << 1) ^ SHT21_crcPolynomial;
            else 
                crc = (crc << 1);
        }
    }

    if (crc != checksum)
        return SHT21_ERROR_CRC_MISMATCH;
    else
        return SHT21_ERROR_CRC_OK;
}

/* TODO */
SHT21_Errors SHT21_measureHoldMaster (Iic_DeviceHandle dev, SHT21_MeasType measType, uint16_t *value)
{
//    System_Errors error;
//    
//    SHT21_txMessage.simple.command = SHT21_TRIG_MEASUREMENT_HM;
//    
//    error = Iic_writeBytes(dev,SHT21_ADDRESS_WRITE,SHT21_txMessage.buffer,1,IIC_NO_STOP);
//    if (error != ERRORS_IIC_TX_OK)
//        return SHT21_ERROR_HM_CMD;
    
    return SHT21_NO_ERROR;
}

SHT21_Errors SHT21_measureNoHoldMaster (Iic_DeviceHandle dev, SHT21_MeasType measType, uint16_t *value)
{
    System_Errors error;
    uint16_t waitCounter;

    if (measType == SHT21_TEMPERATURE)
        SHT21_txMessage.simple.command = SHT21_TRIG_TEMP_MEASUREMENT_NHM;
    else
        SHT21_txMessage.simple.command = SHT21_TRIG_RH_MEASUREMENT_NHM;
        
    error = Iic_writeBytes(dev,SHT21_ADDRESS_WRITE,SHT21_txMessage.buffer,1,IIC_NO_STOP);
    if (error != ERRORS_IIC_TX_OK)
        return SHT21_ERROR_NHM_CMD;

    /* wait ~1s */
    for (waitCounter = 0; waitCounter < 100; ++waitCounter)
    {
//        Timer_delay(10);
        Iic_start(dev);
        error = Iic_writeByte(dev,SHT21_ADDRESS_READ);
        if (error == ERRORS_IIC_TX_ACK_RECEIVED)
            break;
        else if (error == ERRORS_IIC_TX_TIMEOUT)
            return SHT21_ERROR_NHM_READ_REQ;
    }

    /* Save measuring data */
    if (error == ERRORS_IIC_TX_ACK_RECEIVED)
    {
        error = Iic_readByte(dev,&SHT21_rxMessage.data.valueMsb,IIC_NO_LAST_BYTE);
        if (error != ERRORS_IIC_RX_OK)
            return SHT21_ERROR_NHM_DATA_MSB;
        
        error = Iic_readByte(dev,&SHT21_rxMessage.data.valueLsb,IIC_NO_LAST_BYTE);
        if (error != ERRORS_IIC_RX_OK)
            return SHT21_ERROR_NHM_DATA_LSB;

        error = Iic_readByte(dev,&SHT21_rxMessage.data.crc,IIC_LAST_BYTE);
        if (error != ERRORS_IIC_RX_OK)
            return SHT21_ERROR_NHM_DATA_CRC;
        
        Iic_stop(dev);

        *value = SHT21_rxMessage.data.valueMsb;
        *value <<= 8;
        *value |= (SHT21_rxMessage.data.valueLsb & 0x00FF);
        
        if (SHT21_checkCrc(&SHT21_rxMessage.buffer[0],2,SHT21_rxMessage.data.crc) != SHT21_ERROR_CRC_OK)
            return SHT21_ERROR_NHM_CRC;

        /* Clear status bits */
        *value &= ~0x0003;   
    }
    else
    {
        *value = 0;
        return SHT21_ERROR_NHM_TIMEOUT;
    }

    return SHT21_NO_ERROR;
}

void SHT21_calculateTemperature (uint16_t value, float *temperature)
{
    *temperature = -46.85 + 175.72/65536 * (float)value;
}

void SHT21_calculateHumidity (uint16_t value, float *humidity)
{
    *humidity = -6 + 125.0/65536 * (float)value;
}
