#! /bin/bash
port="/dev/ttyUSB0"
# port="/dev/ttyACM0"
build_folder_name="build_slave"
build_name="slave2"

sudo chmod a+rw $port

cmake --build $build_folder_name --target clean
cmake -B $build_folder_name -S $build_name
cmake --build $build_folder_name

avr-objcopy -O ihex -R .eeprom $build_folder_name/$build_name $build_folder_name/$build_name.hex

avrdude -v -p atmega2560 -c wiring -P $port -b 115200 -D -U flash:w:$build_folder_name/$build_name.hex:i
# avrdude -F -V -c arduino -p ATMEGA328P -P $port -b 115200 -U flash:w:$build_folder_name/$build_name.hex
