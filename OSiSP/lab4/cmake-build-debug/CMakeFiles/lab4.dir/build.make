# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_COMMAND = /home/ilya/clion/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/ilya/clion/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ilya/bsuir-labs/OSiSP/lab4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ilya/bsuir-labs/OSiSP/lab4/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/lab4.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lab4.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lab4.dir/flags.make

CMakeFiles/lab4.dir/main.c.o: CMakeFiles/lab4.dir/flags.make
CMakeFiles/lab4.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilya/bsuir-labs/OSiSP/lab4/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/lab4.dir/main.c.o"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/lab4.dir/main.c.o   -c /home/ilya/bsuir-labs/OSiSP/lab4/main.c

CMakeFiles/lab4.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/lab4.dir/main.c.i"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ilya/bsuir-labs/OSiSP/lab4/main.c > CMakeFiles/lab4.dir/main.c.i

CMakeFiles/lab4.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/lab4.dir/main.c.s"
	/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ilya/bsuir-labs/OSiSP/lab4/main.c -o CMakeFiles/lab4.dir/main.c.s

CMakeFiles/lab4.dir/main.c.o.requires:

.PHONY : CMakeFiles/lab4.dir/main.c.o.requires

CMakeFiles/lab4.dir/main.c.o.provides: CMakeFiles/lab4.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/lab4.dir/build.make CMakeFiles/lab4.dir/main.c.o.provides.build
.PHONY : CMakeFiles/lab4.dir/main.c.o.provides

CMakeFiles/lab4.dir/main.c.o.provides.build: CMakeFiles/lab4.dir/main.c.o


# Object files for target lab4
lab4_OBJECTS = \
"CMakeFiles/lab4.dir/main.c.o"

# External object files for target lab4
lab4_EXTERNAL_OBJECTS =

lab4: CMakeFiles/lab4.dir/main.c.o
lab4: CMakeFiles/lab4.dir/build.make
lab4: CMakeFiles/lab4.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ilya/bsuir-labs/OSiSP/lab4/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable lab4"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lab4.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lab4.dir/build: lab4

.PHONY : CMakeFiles/lab4.dir/build

CMakeFiles/lab4.dir/requires: CMakeFiles/lab4.dir/main.c.o.requires

.PHONY : CMakeFiles/lab4.dir/requires

CMakeFiles/lab4.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lab4.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lab4.dir/clean

CMakeFiles/lab4.dir/depend:
	cd /home/ilya/bsuir-labs/OSiSP/lab4/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ilya/bsuir-labs/OSiSP/lab4 /home/ilya/bsuir-labs/OSiSP/lab4 /home/ilya/bsuir-labs/OSiSP/lab4/cmake-build-debug /home/ilya/bsuir-labs/OSiSP/lab4/cmake-build-debug /home/ilya/bsuir-labs/OSiSP/lab4/cmake-build-debug/CMakeFiles/lab4.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lab4.dir/depend

