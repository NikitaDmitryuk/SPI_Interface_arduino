cmake_minimum_required(VERSION 3.17)
project(master2)

set(MYCOMPILE_FLAGS "-Os -DF_CPU=16000000UL -mmcu=atmega328p")

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_C_COMPILER   avr-gcc)
set(CMAKE_CXX_COMPILER avr-g++)

set(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} ${MYCOMPILE_FLAGS}")

add_executable(master2 main.cpp)
