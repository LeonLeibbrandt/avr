# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/leon/Projects/avr/app/count

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/leon/Projects/avr/app/count/build

# Utility rule file for ssdmain.

# Include the progress variables for this target.
include src/CMakeFiles/ssdmain.dir/progress.make

src/CMakeFiles/ssdmain: src/ssdmain-atmega328.hex
src/CMakeFiles/ssdmain: src/ssdmain-atmega328-eeprom.hex


src/ssdmain-atmega328.hex: src/ssdmain-atmega328.elf
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/leon/Projects/avr/app/count/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ssdmain-atmega328.hex"
	cd /home/leon/Projects/avr/app/count/build/src && /usr/bin/avr-objcopy -j .text -j .data -O ihex ssdmain-atmega328.elf ssdmain-atmega328.hex
	cd /home/leon/Projects/avr/app/count/build/src && /usr/bin/avr-size -C --mcu=atmega328 ssdmain-atmega328.elf

src/ssdmain-atmega328-eeprom.hex: src/ssdmain-atmega328.elf
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/leon/Projects/avr/app/count/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating ssdmain-atmega328-eeprom.hex"
	cd /home/leon/Projects/avr/app/count/build/src && /usr/bin/avr-objcopy -j .eeprom --set-section-flags=.eeprom=alloc,load --change-section-lma .eeprom=0 --no-change-warnings -O ihex ssdmain-atmega328.elf ssdmain-atmega328-eeprom.hex

ssdmain: src/CMakeFiles/ssdmain
ssdmain: src/ssdmain-atmega328.hex
ssdmain: src/ssdmain-atmega328-eeprom.hex
ssdmain: src/CMakeFiles/ssdmain.dir/build.make

.PHONY : ssdmain

# Rule to build all files generated by this target.
src/CMakeFiles/ssdmain.dir/build: ssdmain

.PHONY : src/CMakeFiles/ssdmain.dir/build

src/CMakeFiles/ssdmain.dir/clean:
	cd /home/leon/Projects/avr/app/count/build/src && $(CMAKE_COMMAND) -P CMakeFiles/ssdmain.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/ssdmain.dir/clean

src/CMakeFiles/ssdmain.dir/depend:
	cd /home/leon/Projects/avr/app/count/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/leon/Projects/avr/app/count /home/leon/Projects/avr/app/count/src /home/leon/Projects/avr/app/count/build /home/leon/Projects/avr/app/count/build/src /home/leon/Projects/avr/app/count/build/src/CMakeFiles/ssdmain.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/ssdmain.dir/depend

