# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nikita/Yandex.Disk/My_programm/SPI_Interface_arduino/master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nikita/Yandex.Disk/My_programm/SPI_Interface_arduino/master/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Master.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Master.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Master.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Master.dir/flags.make

CMakeFiles/Master.dir/main.cpp.o: CMakeFiles/Master.dir/flags.make
CMakeFiles/Master.dir/main.cpp.o: ../main.cpp
CMakeFiles/Master.dir/main.cpp.o: CMakeFiles/Master.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nikita/Yandex.Disk/My_programm/SPI_Interface_arduino/master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Master.dir/main.cpp.o"
	avr-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Master.dir/main.cpp.o -MF CMakeFiles/Master.dir/main.cpp.o.d -o CMakeFiles/Master.dir/main.cpp.o -c /home/nikita/Yandex.Disk/My_programm/SPI_Interface_arduino/master/main.cpp

CMakeFiles/Master.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Master.dir/main.cpp.i"
	avr-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nikita/Yandex.Disk/My_programm/SPI_Interface_arduino/master/main.cpp > CMakeFiles/Master.dir/main.cpp.i

CMakeFiles/Master.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Master.dir/main.cpp.s"
	avr-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nikita/Yandex.Disk/My_programm/SPI_Interface_arduino/master/main.cpp -o CMakeFiles/Master.dir/main.cpp.s

# Object files for target Master
Master_OBJECTS = \
"CMakeFiles/Master.dir/main.cpp.o"

# External object files for target Master
Master_EXTERNAL_OBJECTS =

Master: CMakeFiles/Master.dir/main.cpp.o
Master: CMakeFiles/Master.dir/build.make
Master: CMakeFiles/Master.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nikita/Yandex.Disk/My_programm/SPI_Interface_arduino/master/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Master"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Master.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Master.dir/build: Master
.PHONY : CMakeFiles/Master.dir/build

CMakeFiles/Master.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Master.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Master.dir/clean

CMakeFiles/Master.dir/depend:
	cd /home/nikita/Yandex.Disk/My_programm/SPI_Interface_arduino/master/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nikita/Yandex.Disk/My_programm/SPI_Interface_arduino/master /home/nikita/Yandex.Disk/My_programm/SPI_Interface_arduino/master /home/nikita/Yandex.Disk/My_programm/SPI_Interface_arduino/master/cmake-build-debug /home/nikita/Yandex.Disk/My_programm/SPI_Interface_arduino/master/cmake-build-debug /home/nikita/Yandex.Disk/My_programm/SPI_Interface_arduino/master/cmake-build-debug/CMakeFiles/Master.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Master.dir/depend

