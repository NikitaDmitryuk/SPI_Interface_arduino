#! /bin/bash
# port = "/dev/ttyUSB0"
port="/dev/ttyACM0"
build_folder_name="build"

sudo chmod a+rw $port

cmake -B $build_folder_name -S master
cmake --build $build_folder_name

avr-objcopy -O ihex -R .eeprom $build_folder_name/Master $build_folder_name/Master.hex
avrdude -F -V -c arduino -p ATMEGA328P -P $port -b 115200 -U flash:w:$build_folder_name/Master.hex
# avrdude -v -p atmega2560 -c wiring -P $port -b 115200 -D -U flash:w:$build_folder_name/SnakeAVR.hex:i
