//
// Created by nikita on 20.01.2022.
//

#include "InterfaceSpi.h"

InterfaceSpi::InterfaceSpi(int ssPin) {
    DDRB |= _BV(MOSIPIN) | _BV(SCKPIN) | _BV(ssPin);
    PORTB |= _BV(ssPin);
    _ssPin = ssPin;
    _delay_ms((int) SPISPEED / 2.0);
}

void InterfaceSpi::sendByte(uint8_t data) {
    PORTB &= ~_BV(_ssPin);
    for (int i = 0; i < 8; i++){
        PORTB |= ((data >> i) & 1) << MOSIPIN;
        _delay_ms((int) SPISPEED / 2.0);
        PORTB |= _BV(SCKPIN);
        _delay_ms((int) SPISPEED / 2.0);
        PORTB &= ~_BV(SCKPIN);
        PORTB &= ~_BV(MOSIPIN);
    }
    PORTB |= _BV(_ssPin);
    PORTB &= ~_BV(MOSIPIN);
    PORTB &= ~_BV(SCKPIN);
}

