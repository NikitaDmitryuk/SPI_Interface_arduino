#include <avr/io.h>
#include <util/delay.h>

int main() {
    DDRB |= _BV(DDB5);

    for(int i =0; i < 64; i++) {
        /*Set to one the fifth bit of PORTB to one
        **Set to HIGH the pin 13 */
        PORTB |= _BV(PORTB5);

        /*Wait 3000 ms */
        _delay_ms(200);

        /*Set to zero the fifth bit of PORTB
        **Set to LOW the pin 13 */
        PORTB &= ~_BV(PORTB5);

        /*Wait 3000 ms */
        _delay_ms(200);
    }

    return 0;
}
