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
CMAKE_SOURCE_DIR = /home/yiweizou/vscode/case2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yiweizou/vscode/case2/build

# Include any dependencies generated for this target.
include bin/CMakeFiles/test.dir/depend.make

# Include the progress variables for this target.
include bin/CMakeFiles/test.dir/progress.make

# Include the compile flags for this target's objects.
include bin/CMakeFiles/test.dir/flags.make

bin/CMakeFiles/test.dir/test.o: bin/CMakeFiles/test.dir/flags.make
bin/CMakeFiles/test.dir/test.o: ../src/test.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yiweizou/vscode/case2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object bin/CMakeFiles/test.dir/test.o"
	cd /home/yiweizou/vscode/case2/build/bin && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test.dir/test.o   -c /home/yiweizou/vscode/case2/src/test.c

bin/CMakeFiles/test.dir/test.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test.dir/test.i"
	cd /home/yiweizou/vscode/case2/build/bin && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yiweizou/vscode/case2/src/test.c > CMakeFiles/test.dir/test.i

bin/CMakeFiles/test.dir/test.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test.dir/test.s"
	cd /home/yiweizou/vscode/case2/build/bin && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yiweizou/vscode/case2/src/test.c -o CMakeFiles/test.dir/test.s

bin/CMakeFiles/test.dir/test.o.requires:

.PHONY : bin/CMakeFiles/test.dir/test.o.requires

bin/CMakeFiles/test.dir/test.o.provides: bin/CMakeFiles/test.dir/test.o.requires
	$(MAKE) -f bin/CMakeFiles/test.dir/build.make bin/CMakeFiles/test.dir/test.o.provides.build
.PHONY : bin/CMakeFiles/test.dir/test.o.provides

bin/CMakeFiles/test.dir/test.o.provides.build: bin/CMakeFiles/test.dir/test.o


# Object files for target test
test_OBJECTS = \
"CMakeFiles/test.dir/test.o"

# External object files for target test
test_EXTERNAL_OBJECTS =

bin/test: bin/CMakeFiles/test.dir/test.o
bin/test: bin/CMakeFiles/test.dir/build.make
bin/test: bin/CMakeFiles/test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yiweizou/vscode/case2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable test"
	cd /home/yiweizou/vscode/case2/build/bin && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
bin/CMakeFiles/test.dir/build: bin/test

.PHONY : bin/CMakeFiles/test.dir/build

bin/CMakeFiles/test.dir/requires: bin/CMakeFiles/test.dir/test.o.requires

.PHONY : bin/CMakeFiles/test.dir/requires

bin/CMakeFiles/test.dir/clean:
	cd /home/yiweizou/vscode/case2/build/bin && $(CMAKE_COMMAND) -P CMakeFiles/test.dir/cmake_clean.cmake
.PHONY : bin/CMakeFiles/test.dir/clean

bin/CMakeFiles/test.dir/depend:
	cd /home/yiweizou/vscode/case2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yiweizou/vscode/case2 /home/yiweizou/vscode/case2/src /home/yiweizou/vscode/case2/build /home/yiweizou/vscode/case2/build/bin /home/yiweizou/vscode/case2/build/bin/CMakeFiles/test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : bin/CMakeFiles/test.dir/depend

