# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /usr/local/lib/python3.5/dist-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /usr/local/lib/python3.5/dist-packages/cmake/data/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jack/workspace/c++

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jack/workspace/c++/build

# Include any dependencies generated for this target.
include template/CMakeFiles/template.dir/depend.make

# Include the progress variables for this target.
include template/CMakeFiles/template.dir/progress.make

# Include the compile flags for this target's objects.
include template/CMakeFiles/template.dir/flags.make

template/CMakeFiles/template.dir/main.cpp.o: template/CMakeFiles/template.dir/flags.make
template/CMakeFiles/template.dir/main.cpp.o: ../template/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jack/workspace/c++/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object template/CMakeFiles/template.dir/main.cpp.o"
	cd /home/jack/workspace/c++/build/template && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/template.dir/main.cpp.o -c /home/jack/workspace/c++/template/main.cpp

template/CMakeFiles/template.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/template.dir/main.cpp.i"
	cd /home/jack/workspace/c++/build/template && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jack/workspace/c++/template/main.cpp > CMakeFiles/template.dir/main.cpp.i

template/CMakeFiles/template.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/template.dir/main.cpp.s"
	cd /home/jack/workspace/c++/build/template && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jack/workspace/c++/template/main.cpp -o CMakeFiles/template.dir/main.cpp.s

# Object files for target template
template_OBJECTS = \
"CMakeFiles/template.dir/main.cpp.o"

# External object files for target template
template_EXTERNAL_OBJECTS =

template/template: template/CMakeFiles/template.dir/main.cpp.o
template/template: template/CMakeFiles/template.dir/build.make
template/template: template/CMakeFiles/template.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jack/workspace/c++/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable template"
	cd /home/jack/workspace/c++/build/template && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/template.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
template/CMakeFiles/template.dir/build: template/template

.PHONY : template/CMakeFiles/template.dir/build

template/CMakeFiles/template.dir/clean:
	cd /home/jack/workspace/c++/build/template && $(CMAKE_COMMAND) -P CMakeFiles/template.dir/cmake_clean.cmake
.PHONY : template/CMakeFiles/template.dir/clean

template/CMakeFiles/template.dir/depend:
	cd /home/jack/workspace/c++/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jack/workspace/c++ /home/jack/workspace/c++/template /home/jack/workspace/c++/build /home/jack/workspace/c++/build/template /home/jack/workspace/c++/build/template/CMakeFiles/template.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : template/CMakeFiles/template.dir/depend

