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

# Utility rule file for disassemble_ssdmain.

# Include the progress variables for this target.
include src/CMakeFiles/disassemble_ssdmain.dir/progress.make

src/CMakeFiles/disassemble_ssdmain: src/ssdmain-atmega328.elf
	cd /home/leon/Projects/avr/app/count/build/src && /usr/bin/avr-objdump -h -S ssdmain-atmega328.elf > ssdmain.lst

disassemble_ssdmain: src/CMakeFiles/disassemble_ssdmain
disassemble_ssdmain: src/CMakeFiles/disassemble_ssdmain.dir/build.make

.PHONY : disassemble_ssdmain

# Rule to build all files generated by this target.
src/CMakeFiles/disassemble_ssdmain.dir/build: disassemble_ssdmain

.PHONY : src/CMakeFiles/disassemble_ssdmain.dir/build

src/CMakeFiles/disassemble_ssdmain.dir/clean:
	cd /home/leon/Projects/avr/app/count/build/src && $(CMAKE_COMMAND) -P CMakeFiles/disassemble_ssdmain.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/disassemble_ssdmain.dir/clean

src/CMakeFiles/disassemble_ssdmain.dir/depend:
	cd /home/leon/Projects/avr/app/count/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/leon/Projects/avr/app/count /home/leon/Projects/avr/app/count/src /home/leon/Projects/avr/app/count/build /home/leon/Projects/avr/app/count/build/src /home/leon/Projects/avr/app/count/build/src/CMakeFiles/disassemble_ssdmain.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/disassemble_ssdmain.dir/depend

