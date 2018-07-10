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
include lib/oled_i2c/CMakeFiles/oled_i2c-atmega328p.dir/depend.make

# Include the progress variables for this target.
include lib/oled_i2c/CMakeFiles/oled_i2c-atmega328p.dir/progress.make

# Include the compile flags for this target's objects.
include lib/oled_i2c/CMakeFiles/oled_i2c-atmega328p.dir/flags.make

lib/oled_i2c/CMakeFiles/oled_i2c-atmega328p.dir/oled_i2c.cpp.obj: lib/oled_i2c/CMakeFiles/oled_i2c-atmega328p.dir/flags.make
lib/oled_i2c/CMakeFiles/oled_i2c-atmega328p.dir/oled_i2c.cpp.obj: ../lib/oled_i2c/oled_i2c.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/leon/Projects/avr/app/oled_viewfont/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/oled_i2c/CMakeFiles/oled_i2c-atmega328p.dir/oled_i2c.cpp.obj"
	cd /home/leon/Projects/avr/app/oled_viewfont/build/lib/oled_i2c && /usr/bin/avr-g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/oled_i2c-atmega328p.dir/oled_i2c.cpp.obj -c /home/leon/Projects/avr/app/oled_viewfont/lib/oled_i2c/oled_i2c.cpp

lib/oled_i2c/CMakeFiles/oled_i2c-atmega328p.dir/oled_i2c.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/oled_i2c-atmega328p.dir/oled_i2c.cpp.i"
	cd /home/leon/Projects/avr/app/oled_viewfont/build/lib/oled_i2c && /usr/bin/avr-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/leon/Projects/avr/app/oled_viewfont/lib/oled_i2c/oled_i2c.cpp > CMakeFiles/oled_i2c-atmega328p.dir/oled_i2c.cpp.i

lib/oled_i2c/CMakeFiles/oled_i2c-atmega328p.dir/oled_i2c.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/oled_i2c-atmega328p.dir/oled_i2c.cpp.s"
	cd /home/leon/Projects/avr/app/oled_viewfont/build/lib/oled_i2c && /usr/bin/avr-g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/leon/Projects/avr/app/oled_viewfont/lib/oled_i2c/oled_i2c.cpp -o CMakeFiles/oled_i2c-atmega328p.dir/oled_i2c.cpp.s

lib/oled_i2c/CMakeFiles/oled_i2c-atmega328p.dir/oled_i2c.cpp.obj.requires:

.PHONY : lib/oled_i2c/CMakeFiles/oled_i2c-atmega328p.dir/oled_i2c.cpp.obj.requires

lib/oled_i2c/CMakeFiles/oled_i2c-atmega328p.dir/oled_i2c.cpp.obj.provides: lib/oled_i2c/CMakeFiles/oled_i2c-atmega328p.dir/oled_i2c.cpp.obj.requires
	$(MAKE) -f lib/oled_i2c/CMakeFiles/oled_i2c-atmega328p.dir/build.make lib/oled_i2c/CMakeFiles/oled_i2c-atmega328p.dir/oled_i2c.cpp.obj.provides.build
.PHONY : lib/oled_i2c/CMakeFiles/oled_i2c-atmega328p.dir/oled_i2c.cpp.obj.provides

lib/oled_i2c/CMakeFiles/oled_i2c-atmega328p.dir/oled_i2c.cpp.obj.provides.build: lib/oled_i2c/CMakeFiles/oled_i2c-atmega328p.dir/oled_i2c.cpp.obj


# Object files for target oled_i2c-atmega328p
oled_i2c__atmega328p_OBJECTS = \
"CMakeFiles/oled_i2c-atmega328p.dir/oled_i2c.cpp.obj"

# External object files for target oled_i2c-atmega328p
oled_i2c__atmega328p_EXTERNAL_OBJECTS =

lib/oled_i2c/liboled_i2c-atmega328p.a: lib/oled_i2c/CMakeFiles/oled_i2c-atmega328p.dir/oled_i2c.cpp.obj
lib/oled_i2c/liboled_i2c-atmega328p.a: lib/oled_i2c/CMakeFiles/oled_i2c-atmega328p.dir/build.make
lib/oled_i2c/liboled_i2c-atmega328p.a: lib/oled_i2c/CMakeFiles/oled_i2c-atmega328p.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/leon/Projects/avr/app/oled_viewfont/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library liboled_i2c-atmega328p.a"
	cd /home/leon/Projects/avr/app/oled_viewfont/build/lib/oled_i2c && $(CMAKE_COMMAND) -P CMakeFiles/oled_i2c-atmega328p.dir/cmake_clean_target.cmake
	cd /home/leon/Projects/avr/app/oled_viewfont/build/lib/oled_i2c && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/oled_i2c-atmega328p.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/oled_i2c/CMakeFiles/oled_i2c-atmega328p.dir/build: lib/oled_i2c/liboled_i2c-atmega328p.a

.PHONY : lib/oled_i2c/CMakeFiles/oled_i2c-atmega328p.dir/build

lib/oled_i2c/CMakeFiles/oled_i2c-atmega328p.dir/requires: lib/oled_i2c/CMakeFiles/oled_i2c-atmega328p.dir/oled_i2c.cpp.obj.requires

.PHONY : lib/oled_i2c/CMakeFiles/oled_i2c-atmega328p.dir/requires

lib/oled_i2c/CMakeFiles/oled_i2c-atmega328p.dir/clean:
	cd /home/leon/Projects/avr/app/oled_viewfont/build/lib/oled_i2c && $(CMAKE_COMMAND) -P CMakeFiles/oled_i2c-atmega328p.dir/cmake_clean.cmake
.PHONY : lib/oled_i2c/CMakeFiles/oled_i2c-atmega328p.dir/clean

lib/oled_i2c/CMakeFiles/oled_i2c-atmega328p.dir/depend:
	cd /home/leon/Projects/avr/app/oled_viewfont/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/leon/Projects/avr/app/oled_viewfont /home/leon/Projects/avr/app/oled_viewfont/lib/oled_i2c /home/leon/Projects/avr/app/oled_viewfont/build /home/leon/Projects/avr/app/oled_viewfont/build/lib/oled_i2c /home/leon/Projects/avr/app/oled_viewfont/build/lib/oled_i2c/CMakeFiles/oled_i2c-atmega328p.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/oled_i2c/CMakeFiles/oled_i2c-atmega328p.dir/depend
