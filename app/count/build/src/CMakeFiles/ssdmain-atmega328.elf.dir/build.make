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

# Include any dependencies generated for this target.
include src/CMakeFiles/ssdmain-atmega328.elf.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/ssdmain-atmega328.elf.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/ssdmain-atmega328.elf.dir/flags.make

src/CMakeFiles/ssdmain-atmega328.elf.dir/main.cpp.obj: src/CMakeFiles/ssdmain-atmega328.elf.dir/flags.make
src/CMakeFiles/ssdmain-atmega328.elf.dir/main.cpp.obj: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/leon/Projects/avr/app/count/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/ssdmain-atmega328.elf.dir/main.cpp.obj"
	cd /home/leon/Projects/avr/app/count/build/src && /usr/bin/avr-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ssdmain-atmega328.elf.dir/main.cpp.obj -c /home/leon/Projects/avr/app/count/src/main.cpp

src/CMakeFiles/ssdmain-atmega328.elf.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ssdmain-atmega328.elf.dir/main.cpp.i"
	cd /home/leon/Projects/avr/app/count/build/src && /usr/bin/avr-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/leon/Projects/avr/app/count/src/main.cpp > CMakeFiles/ssdmain-atmega328.elf.dir/main.cpp.i

src/CMakeFiles/ssdmain-atmega328.elf.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ssdmain-atmega328.elf.dir/main.cpp.s"
	cd /home/leon/Projects/avr/app/count/build/src && /usr/bin/avr-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/leon/Projects/avr/app/count/src/main.cpp -o CMakeFiles/ssdmain-atmega328.elf.dir/main.cpp.s

src/CMakeFiles/ssdmain-atmega328.elf.dir/main.cpp.obj.requires:

.PHONY : src/CMakeFiles/ssdmain-atmega328.elf.dir/main.cpp.obj.requires

src/CMakeFiles/ssdmain-atmega328.elf.dir/main.cpp.obj.provides: src/CMakeFiles/ssdmain-atmega328.elf.dir/main.cpp.obj.requires
	$(MAKE) -f src/CMakeFiles/ssdmain-atmega328.elf.dir/build.make src/CMakeFiles/ssdmain-atmega328.elf.dir/main.cpp.obj.provides.build
.PHONY : src/CMakeFiles/ssdmain-atmega328.elf.dir/main.cpp.obj.provides

src/CMakeFiles/ssdmain-atmega328.elf.dir/main.cpp.obj.provides.build: src/CMakeFiles/ssdmain-atmega328.elf.dir/main.cpp.obj


# Object files for target ssdmain-atmega328.elf
ssdmain__atmega328_elf_OBJECTS = \
"CMakeFiles/ssdmain-atmega328.elf.dir/main.cpp.obj"

# External object files for target ssdmain-atmega328.elf
ssdmain__atmega328_elf_EXTERNAL_OBJECTS =

src/ssdmain-atmega328.elf: src/CMakeFiles/ssdmain-atmega328.elf.dir/main.cpp.obj
src/ssdmain-atmega328.elf: src/CMakeFiles/ssdmain-atmega328.elf.dir/build.make
src/ssdmain-atmega328.elf: lib/ssd1306/libssd1306-atmega328.a
src/ssdmain-atmega328.elf: lib/twi_master/libtwi_master-atmega328.a
src/ssdmain-atmega328.elf: src/CMakeFiles/ssdmain-atmega328.elf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/leon/Projects/avr/app/count/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ssdmain-atmega328.elf"
	cd /home/leon/Projects/avr/app/count/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ssdmain-atmega328.elf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/ssdmain-atmega328.elf.dir/build: src/ssdmain-atmega328.elf

.PHONY : src/CMakeFiles/ssdmain-atmega328.elf.dir/build

src/CMakeFiles/ssdmain-atmega328.elf.dir/requires: src/CMakeFiles/ssdmain-atmega328.elf.dir/main.cpp.obj.requires

.PHONY : src/CMakeFiles/ssdmain-atmega328.elf.dir/requires

src/CMakeFiles/ssdmain-atmega328.elf.dir/clean:
	cd /home/leon/Projects/avr/app/count/build/src && $(CMAKE_COMMAND) -P CMakeFiles/ssdmain-atmega328.elf.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/ssdmain-atmega328.elf.dir/clean

src/CMakeFiles/ssdmain-atmega328.elf.dir/depend:
	cd /home/leon/Projects/avr/app/count/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/leon/Projects/avr/app/count /home/leon/Projects/avr/app/count/src /home/leon/Projects/avr/app/count/build /home/leon/Projects/avr/app/count/build/src /home/leon/Projects/avr/app/count/build/src/CMakeFiles/ssdmain-atmega328.elf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/ssdmain-atmega328.elf.dir/depend

