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
CMAKE_SOURCE_DIR = /home/leon/Projects/avr/app/oled_viewfont

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/leon/Projects/avr/app/oled_viewfont/build

# Include any dependencies generated for this target.
include src/CMakeFiles/oledviewfont-atmega328p.elf.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/oledviewfont-atmega328p.elf.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/oledviewfont-atmega328p.elf.dir/flags.make

src/CMakeFiles/oledviewfont-atmega328p.elf.dir/oled_i2c_viewfont.cpp.obj: src/CMakeFiles/oledviewfont-atmega328p.elf.dir/flags.make
src/CMakeFiles/oledviewfont-atmega328p.elf.dir/oled_i2c_viewfont.cpp.obj: ../src/oled_i2c_viewfont.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/leon/Projects/avr/app/oled_viewfont/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/oledviewfont-atmega328p.elf.dir/oled_i2c_viewfont.cpp.obj"
	cd /home/leon/Projects/avr/app/oled_viewfont/build/src && /usr/bin/avr-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/oledviewfont-atmega328p.elf.dir/oled_i2c_viewfont.cpp.obj -c /home/leon/Projects/avr/app/oled_viewfont/src/oled_i2c_viewfont.cpp

src/CMakeFiles/oledviewfont-atmega328p.elf.dir/oled_i2c_viewfont.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/oledviewfont-atmega328p.elf.dir/oled_i2c_viewfont.cpp.i"
	cd /home/leon/Projects/avr/app/oled_viewfont/build/src && /usr/bin/avr-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/leon/Projects/avr/app/oled_viewfont/src/oled_i2c_viewfont.cpp > CMakeFiles/oledviewfont-atmega328p.elf.dir/oled_i2c_viewfont.cpp.i

src/CMakeFiles/oledviewfont-atmega328p.elf.dir/oled_i2c_viewfont.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/oledviewfont-atmega328p.elf.dir/oled_i2c_viewfont.cpp.s"
	cd /home/leon/Projects/avr/app/oled_viewfont/build/src && /usr/bin/avr-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/leon/Projects/avr/app/oled_viewfont/src/oled_i2c_viewfont.cpp -o CMakeFiles/oledviewfont-atmega328p.elf.dir/oled_i2c_viewfont.cpp.s

src/CMakeFiles/oledviewfont-atmega328p.elf.dir/oled_i2c_viewfont.cpp.obj.requires:

.PHONY : src/CMakeFiles/oledviewfont-atmega328p.elf.dir/oled_i2c_viewfont.cpp.obj.requires

src/CMakeFiles/oledviewfont-atmega328p.elf.dir/oled_i2c_viewfont.cpp.obj.provides: src/CMakeFiles/oledviewfont-atmega328p.elf.dir/oled_i2c_viewfont.cpp.obj.requires
	$(MAKE) -f src/CMakeFiles/oledviewfont-atmega328p.elf.dir/build.make src/CMakeFiles/oledviewfont-atmega328p.elf.dir/oled_i2c_viewfont.cpp.obj.provides.build
.PHONY : src/CMakeFiles/oledviewfont-atmega328p.elf.dir/oled_i2c_viewfont.cpp.obj.provides

src/CMakeFiles/oledviewfont-atmega328p.elf.dir/oled_i2c_viewfont.cpp.obj.provides.build: src/CMakeFiles/oledviewfont-atmega328p.elf.dir/oled_i2c_viewfont.cpp.obj


# Object files for target oledviewfont-atmega328p.elf
oledviewfont__atmega328p_elf_OBJECTS = \
"CMakeFiles/oledviewfont-atmega328p.elf.dir/oled_i2c_viewfont.cpp.obj"

# External object files for target oledviewfont-atmega328p.elf
oledviewfont__atmega328p_elf_EXTERNAL_OBJECTS =

src/oledviewfont-atmega328p.elf: src/CMakeFiles/oledviewfont-atmega328p.elf.dir/oled_i2c_viewfont.cpp.obj
src/oledviewfont-atmega328p.elf: src/CMakeFiles/oledviewfont-atmega328p.elf.dir/build.make
src/oledviewfont-atmega328p.elf: lib/oled_i2c/liboled_i2c-atmega328p.a
src/oledviewfont-atmega328p.elf: src/CMakeFiles/oledviewfont-atmega328p.elf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/leon/Projects/avr/app/oled_viewfont/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable oledviewfont-atmega328p.elf"
	cd /home/leon/Projects/avr/app/oled_viewfont/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/oledviewfont-atmega328p.elf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/oledviewfont-atmega328p.elf.dir/build: src/oledviewfont-atmega328p.elf

.PHONY : src/CMakeFiles/oledviewfont-atmega328p.elf.dir/build

src/CMakeFiles/oledviewfont-atmega328p.elf.dir/requires: src/CMakeFiles/oledviewfont-atmega328p.elf.dir/oled_i2c_viewfont.cpp.obj.requires

.PHONY : src/CMakeFiles/oledviewfont-atmega328p.elf.dir/requires

src/CMakeFiles/oledviewfont-atmega328p.elf.dir/clean:
	cd /home/leon/Projects/avr/app/oled_viewfont/build/src && $(CMAKE_COMMAND) -P CMakeFiles/oledviewfont-atmega328p.elf.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/oledviewfont-atmega328p.elf.dir/clean

src/CMakeFiles/oledviewfont-atmega328p.elf.dir/depend:
	cd /home/leon/Projects/avr/app/oled_viewfont/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/leon/Projects/avr/app/oled_viewfont /home/leon/Projects/avr/app/oled_viewfont/src /home/leon/Projects/avr/app/oled_viewfont/build /home/leon/Projects/avr/app/oled_viewfont/build/src /home/leon/Projects/avr/app/oled_viewfont/build/src/CMakeFiles/oledviewfont-atmega328p.elf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/oledviewfont-atmega328p.elf.dir/depend
