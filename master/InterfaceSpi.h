//
// Created by nikita on 20.01.2022.
//
#include <avr/io.h>
#include <util/delay.h>
#define SCKPIN 5
//#define MISOPIN 4
#define MOSIPIN 3
#define SSPIN 2
#define SPISPEED 1000

#ifndef MASTER_INTERFACESPI_H
#define MASTER_INTERFACESPI_H

class InterfaceSpi {
public:
    explicit InterfaceSpi(int ssPin);
    void sendByte(uint8_t data);

private:
    int _ssPin;
};


#endif //MASTER_INTERFACESPI_H
