#include <avr/io.h>
#include <util/delay.h>
#define SCKPIN 5
#define MISOPIN 4
#define MOSIPIN 3
#define SSPIN 2

void setupSpi(){
    DDRB |= ((1<<MOSIPIN)|(1<<SCKPIN)|(1<<SSPIN));
    SPCR |= ((1<<SPIE)|(1<<SPE)|(1<<MSTR));
    PORTB = 0x00;
    PORTB |= (1<<SSPIN);
}

void sendByte(uint8_t data){
    PORTB &= ~(1<<SSPIN);
    SPDR = data;
    while(!(SPSR & (1<<SPIF)));
    PORTB |= (1<<SSPIN);
}

int main() {
    setupSpi();
    for (int i = 0; i < 256; i++){
        sendByte(i);
        _delay_ms(200);
    }
    return 0;
}
