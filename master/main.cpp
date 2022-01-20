#include "InterfaceSpi.h"

int main() {
    uint8_t data = 0b01010101;
    InterfaceSpi interfaceSpi = InterfaceSpi(2);
    interfaceSpi.sendByte(data);
    return 0;
}
