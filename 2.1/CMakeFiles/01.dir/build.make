# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.9

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\IPS\Projects\CppDistro\cmake\bin\cmake.exe

# The command to remove a file.
RM = C:\IPS\Projects\CppDistro\cmake\bin\cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\IPS\Projects\CppDistro\sfml.5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\IPS\Projects\CppDistro\sfml.5

# Include any dependencies generated for this target.
include 01/CMakeFiles/01.dir/depend.make

# Include the progress variables for this target.
include 01/CMakeFiles/01.dir/progress.make

# Include the compile flags for this target's objects.
include 01/CMakeFiles/01.dir/flags.make

01/CMakeFiles/01.dir/main_01.cpp.obj: 01/CMakeFiles/01.dir/flags.make
01/CMakeFiles/01.dir/main_01.cpp.obj: 01/CMakeFiles/01.dir/includes_CXX.rsp
01/CMakeFiles/01.dir/main_01.cpp.obj: 01/main_01.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\IPS\Projects\CppDistro\sfml.5\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object 01/CMakeFiles/01.dir/main_01.cpp.obj"
	cd /d C:\IPS\Projects\CppDistro\sfml.5\01 && C:\IPS\Projects\CppDistro\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\01.dir\main_01.cpp.obj -c C:\IPS\Projects\CppDistro\sfml.5\01\main_01.cpp

01/CMakeFiles/01.dir/main_01.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/01.dir/main_01.cpp.i"
	cd /d C:\IPS\Projects\CppDistro\sfml.5\01 && C:\IPS\Projects\CppDistro\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\IPS\Projects\CppDistro\sfml.5\01\main_01.cpp > CMakeFiles\01.dir\main_01.cpp.i

01/CMakeFiles/01.dir/main_01.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/01.dir/main_01.cpp.s"
	cd /d C:\IPS\Projects\CppDistro\sfml.5\01 && C:\IPS\Projects\CppDistro\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\IPS\Projects\CppDistro\sfml.5\01\main_01.cpp -o CMakeFiles\01.dir\main_01.cpp.s

01/CMakeFiles/01.dir/main_01.cpp.obj.requires:

.PHONY : 01/CMakeFiles/01.dir/main_01.cpp.obj.requires

01/CMakeFiles/01.dir/main_01.cpp.obj.provides: 01/CMakeFiles/01.dir/main_01.cpp.obj.requires
	$(MAKE) -f 01\CMakeFiles\01.dir\build.make 01/CMakeFiles/01.dir/main_01.cpp.obj.provides.build
.PHONY : 01/CMakeFiles/01.dir/main_01.cpp.obj.provides

01/CMakeFiles/01.dir/main_01.cpp.obj.provides.build: 01/CMakeFiles/01.dir/main_01.cpp.obj


# Object files for target 01
01_OBJECTS = \
"CMakeFiles/01.dir/main_01.cpp.obj"

# External object files for target 01
01_EXTERNAL_OBJECTS =

01/01.exe: 01/CMakeFiles/01.dir/main_01.cpp.obj
01/01.exe: 01/CMakeFiles/01.dir/build.make
01/01.exe: C:/IPS/Projects/CppDistro/MinGW/lib/libsfml-window-s.a
01/01.exe: C:/IPS/Projects/CppDistro/MinGW/lib/libsfml-graphics-s.a
01/01.exe: C:/IPS/Projects/CppDistro/MinGW/lib/libsfml-system-s.a
01/01.exe: C:/IPS/Projects/CppDistro/MinGW/lib/libfreetype.a
01/01.exe: C:/IPS/Projects/CppDistro/MinGW/lib/libjpeg.a
01/01.exe: 01/CMakeFiles/01.dir/linklibs.rsp
01/01.exe: 01/CMakeFiles/01.dir/objects1.rsp
01/01.exe: 01/CMakeFiles/01.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\IPS\Projects\CppDistro\sfml.5\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 01.exe"
	cd /d C:\IPS\Projects\CppDistro\sfml.5\01 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\01.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
01/CMakeFiles/01.dir/build: 01/01.exe

.PHONY : 01/CMakeFiles/01.dir/build

01/CMakeFiles/01.dir/requires: 01/CMakeFiles/01.dir/main_01.cpp.obj.requires

.PHONY : 01/CMakeFiles/01.dir/requires

01/CMakeFiles/01.dir/clean:
	cd /d C:\IPS\Projects\CppDistro\sfml.5\01 && $(CMAKE_COMMAND) -P CMakeFiles\01.dir\cmake_clean.cmake
.PHONY : 01/CMakeFiles/01.dir/clean

01/CMakeFiles/01.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\IPS\Projects\CppDistro\sfml.5 C:\IPS\Projects\CppDistro\sfml.5\01 C:\IPS\Projects\CppDistro\sfml.5 C:\IPS\Projects\CppDistro\sfml.5\01 C:\IPS\Projects\CppDistro\sfml.5\01\CMakeFiles\01.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : 01/CMakeFiles/01.dir/depend

