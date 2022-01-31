#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#define SCKPIN 1
#define MISOPIN 3
#define MOSIPIN 2
#define SSPIN 0

void setupSpi(){
    DDRB = 0x00;
    DDRB |= (1<<MISOPIN);
    SPCR = 0x00;
    SPCR |= ((1<<SPIE)|(1<<SPE));
    sei();
}

int main() {
    DDRC = 0xff;
    PORTC = 0x00;
    setupSpi();
    while(1){}
    return 0;
}

ISR(SPI_STC_vect){
    PORTC = SPDR;
}
