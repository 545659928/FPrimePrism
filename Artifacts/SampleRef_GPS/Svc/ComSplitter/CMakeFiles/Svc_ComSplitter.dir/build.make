# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /snap/cmake/1299/bin/cmake

# The command to remove a file.
RM = /snap/cmake/1299/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/fprime/fprime/Ref

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/fprime/fprime/Ref/build-fprime-automatic-native

# Include any dependencies generated for this target.
include F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/compiler_depend.make

# Include the progress variables for this target.
include F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/progress.make

# Include the compile flags for this target's objects.
include F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/flags.make

F-Prime/Svc/ComSplitter/ComSplitterComponentAc.hpp: F-Prime/Svc/ComSplitter/ComSplitterComponentAi.xml
F-Prime/Svc/ComSplitter/ComSplitterComponentAc.hpp: /home/fprime/fprime/config/AcConstants.ini
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/fprime/fprime/Ref/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ComSplitterComponentAc.hpp, ComSplitterComponentAc.cpp"
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ComSplitter && /snap/cmake/1299/bin/cmake -E env PYTHONPATH=/home/fprime/fprime/Autocoders/Python/src:/home/fprime/fprime/Autocoders/Python/utils BUILD_ROOT=/home/fprime/fprime:/home/fprime/fprime/Ref/build-fprime-automatic-native:/home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime FPRIME_AC_CONSTANTS_FILE=/home/fprime/fprime/config/AcConstants.ini PYTHON_AUTOCODER_DIR=/home/fprime/fprime/Autocoders/Python /home/fprime/fprime/Ref/env/bin/python3 /home/fprime/fprime/Autocoders/Python/bin/codegen.py -p /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ComSplitter --build_root /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ComSplitter/ComSplitterComponentAi.xml

F-Prime/Svc/ComSplitter/ComSplitterComponentAc.cpp: F-Prime/Svc/ComSplitter/ComSplitterComponentAc.hpp
	@$(CMAKE_COMMAND) -E touch_nocreate F-Prime/Svc/ComSplitter/ComSplitterComponentAc.cpp

F-Prime/Svc/ComSplitter/ComSplitterComponentAi.xml: /home/fprime/fprime/Svc/ComSplitter/ComSplitter.fpp
F-Prime/Svc/ComSplitter/ComSplitterComponentAi.xml: lib/Linux/libFw_Com.a
F-Prime/Svc/ComSplitter/ComSplitterComponentAi.xml: lib/Linux/libFw_Comp.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/fprime/fprime/Ref/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating ComSplitterComponentAi.xml"
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ComSplitter && /home/fprime/fprime/Ref/env/bin/fpp-to-xml -d /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ComSplitter -i /home/fprime/fprime/Fw/Com/Com.fpp /home/fprime/fprime/Svc/ComSplitter/ComSplitter.fpp -p /home/fprime/fprime

F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/ComSplitter.cpp.o: F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/flags.make
F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/ComSplitter.cpp.o: /home/fprime/fprime/Svc/ComSplitter/ComSplitter.cpp
F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/ComSplitter.cpp.o: F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fprime/fprime/Ref/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/ComSplitter.cpp.o"
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ComSplitter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0xfbec5090 -DASSERT_RELATIVE_PATH='"Svc/ComSplitter/ComSplitter.cpp"' -MD -MT F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/ComSplitter.cpp.o -MF CMakeFiles/Svc_ComSplitter.dir/ComSplitter.cpp.o.d -o CMakeFiles/Svc_ComSplitter.dir/ComSplitter.cpp.o -c /home/fprime/fprime/Svc/ComSplitter/ComSplitter.cpp

F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/ComSplitter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Svc_ComSplitter.dir/ComSplitter.cpp.i"
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ComSplitter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0xfbec5090 -DASSERT_RELATIVE_PATH='"Svc/ComSplitter/ComSplitter.cpp"' -E /home/fprime/fprime/Svc/ComSplitter/ComSplitter.cpp > CMakeFiles/Svc_ComSplitter.dir/ComSplitter.cpp.i

F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/ComSplitter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Svc_ComSplitter.dir/ComSplitter.cpp.s"
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ComSplitter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0xfbec5090 -DASSERT_RELATIVE_PATH='"Svc/ComSplitter/ComSplitter.cpp"' -S /home/fprime/fprime/Svc/ComSplitter/ComSplitter.cpp -o CMakeFiles/Svc_ComSplitter.dir/ComSplitter.cpp.s

F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/ComSplitterComponentAc.cpp.o: F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/flags.make
F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/ComSplitterComponentAc.cpp.o: F-Prime/Svc/ComSplitter/ComSplitterComponentAc.cpp
F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/ComSplitterComponentAc.cpp.o: F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fprime/fprime/Ref/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/ComSplitterComponentAc.cpp.o"
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ComSplitter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x33594d8d -DASSERT_RELATIVE_PATH='"Ref/build-fprime-automatic-native/F-Prime/Svc/ComSplitter/ComSplitterComponentAc.cpp"' -MD -MT F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/ComSplitterComponentAc.cpp.o -MF CMakeFiles/Svc_ComSplitter.dir/ComSplitterComponentAc.cpp.o.d -o CMakeFiles/Svc_ComSplitter.dir/ComSplitterComponentAc.cpp.o -c /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ComSplitter/ComSplitterComponentAc.cpp

F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/ComSplitterComponentAc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Svc_ComSplitter.dir/ComSplitterComponentAc.cpp.i"
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ComSplitter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x33594d8d -DASSERT_RELATIVE_PATH='"Ref/build-fprime-automatic-native/F-Prime/Svc/ComSplitter/ComSplitterComponentAc.cpp"' -E /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ComSplitter/ComSplitterComponentAc.cpp > CMakeFiles/Svc_ComSplitter.dir/ComSplitterComponentAc.cpp.i

F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/ComSplitterComponentAc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Svc_ComSplitter.dir/ComSplitterComponentAc.cpp.s"
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ComSplitter && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x33594d8d -DASSERT_RELATIVE_PATH='"Ref/build-fprime-automatic-native/F-Prime/Svc/ComSplitter/ComSplitterComponentAc.cpp"' -S /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ComSplitter/ComSplitterComponentAc.cpp -o CMakeFiles/Svc_ComSplitter.dir/ComSplitterComponentAc.cpp.s

# Object files for target Svc_ComSplitter
Svc_ComSplitter_OBJECTS = \
"CMakeFiles/Svc_ComSplitter.dir/ComSplitter.cpp.o" \
"CMakeFiles/Svc_ComSplitter.dir/ComSplitterComponentAc.cpp.o"

# External object files for target Svc_ComSplitter
Svc_ComSplitter_EXTERNAL_OBJECTS =

lib/Linux/libSvc_ComSplitter.a: F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/ComSplitter.cpp.o
lib/Linux/libSvc_ComSplitter.a: F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/ComSplitterComponentAc.cpp.o
lib/Linux/libSvc_ComSplitter.a: F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/build.make
lib/Linux/libSvc_ComSplitter.a: F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/fprime/fprime/Ref/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library ../../../lib/Linux/libSvc_ComSplitter.a"
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ComSplitter && $(CMAKE_COMMAND) -P CMakeFiles/Svc_ComSplitter.dir/cmake_clean_target.cmake
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ComSplitter && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Svc_ComSplitter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/build: lib/Linux/libSvc_ComSplitter.a
.PHONY : F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/build

F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/clean:
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ComSplitter && $(CMAKE_COMMAND) -P CMakeFiles/Svc_ComSplitter.dir/cmake_clean.cmake
.PHONY : F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/clean

F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/depend: F-Prime/Svc/ComSplitter/ComSplitterComponentAc.cpp
F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/depend: F-Prime/Svc/ComSplitter/ComSplitterComponentAc.hpp
F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/depend: F-Prime/Svc/ComSplitter/ComSplitterComponentAi.xml
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fprime/fprime/Ref /home/fprime/fprime/Svc/ComSplitter /home/fprime/fprime/Ref/build-fprime-automatic-native /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ComSplitter /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : F-Prime/Svc/ComSplitter/CMakeFiles/Svc_ComSplitter.dir/depend

