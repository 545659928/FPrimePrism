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
CMAKE_SOURCE_DIR = /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native

# Include any dependencies generated for this target.
include F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/compiler_depend.make

# Include the progress variables for this target.
include F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/progress.make

# Include the compile flags for this target's objects.
include F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/flags.make

F-Prime/Svc/StaticMemory/StaticMemoryComponentAc.hpp: F-Prime/Svc/StaticMemory/StaticMemoryComponentAi.xml
F-Prime/Svc/StaticMemory/StaticMemoryComponentAc.hpp: /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/config/AcConstants.ini
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating StaticMemoryComponentAc.hpp, StaticMemoryComponentAc.cpp"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/StaticMemory && /snap/cmake/1299/bin/cmake -E env PYTHONPATH=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Autocoders/Python/src:/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Autocoders/Python/utils BUILD_ROOT=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime:/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world:/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native:/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime FPRIME_AC_CONSTANTS_FILE=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/config/AcConstants.ini PYTHON_AUTOCODER_DIR=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Autocoders/Python /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/env1/bin/python3 /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Autocoders/Python/bin/codegen.py -p /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/StaticMemory --build_root /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/StaticMemory/StaticMemoryComponentAi.xml

F-Prime/Svc/StaticMemory/StaticMemoryComponentAc.cpp: F-Prime/Svc/StaticMemory/StaticMemoryComponentAc.hpp
	@$(CMAKE_COMMAND) -E touch_nocreate F-Prime/Svc/StaticMemory/StaticMemoryComponentAc.cpp

F-Prime/Svc/StaticMemory/StaticMemoryComponentAi.xml: /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/StaticMemory/StaticMemory.fpp
F-Prime/Svc/StaticMemory/StaticMemoryComponentAi.xml: lib/Linux/libFw_Buffer.a
F-Prime/Svc/StaticMemory/StaticMemoryComponentAi.xml: lib/Linux/libOs.a
F-Prime/Svc/StaticMemory/StaticMemoryComponentAi.xml: lib/Linux/libFw_Comp.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating StaticMemoryComponentAi.xml"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/StaticMemory && /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/env1/bin/fpp-to-xml -d /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/StaticMemory -i /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Fw/Buffer/Buffer.fpp,/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/config/AcConstants.fpp /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/StaticMemory/StaticMemory.fpp -p /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime,/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world

F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/StaticMemoryComponentImpl.cpp.o: F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/flags.make
F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/StaticMemoryComponentImpl.cpp.o: /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/StaticMemory/StaticMemoryComponentImpl.cpp
F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/StaticMemoryComponentImpl.cpp.o: F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/StaticMemoryComponentImpl.cpp.o"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/StaticMemory && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x3a85d046 -DASSERT_RELATIVE_PATH='"Svc/StaticMemory/StaticMemoryComponentImpl.cpp"' -MD -MT F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/StaticMemoryComponentImpl.cpp.o -MF CMakeFiles/Svc_StaticMemory.dir/StaticMemoryComponentImpl.cpp.o.d -o CMakeFiles/Svc_StaticMemory.dir/StaticMemoryComponentImpl.cpp.o -c /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/StaticMemory/StaticMemoryComponentImpl.cpp

F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/StaticMemoryComponentImpl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Svc_StaticMemory.dir/StaticMemoryComponentImpl.cpp.i"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/StaticMemory && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x3a85d046 -DASSERT_RELATIVE_PATH='"Svc/StaticMemory/StaticMemoryComponentImpl.cpp"' -E /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/StaticMemory/StaticMemoryComponentImpl.cpp > CMakeFiles/Svc_StaticMemory.dir/StaticMemoryComponentImpl.cpp.i

F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/StaticMemoryComponentImpl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Svc_StaticMemory.dir/StaticMemoryComponentImpl.cpp.s"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/StaticMemory && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x3a85d046 -DASSERT_RELATIVE_PATH='"Svc/StaticMemory/StaticMemoryComponentImpl.cpp"' -S /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/StaticMemory/StaticMemoryComponentImpl.cpp -o CMakeFiles/Svc_StaticMemory.dir/StaticMemoryComponentImpl.cpp.s

F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/StaticMemoryComponentAc.cpp.o: F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/flags.make
F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/StaticMemoryComponentAc.cpp.o: F-Prime/Svc/StaticMemory/StaticMemoryComponentAc.cpp
F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/StaticMemoryComponentAc.cpp.o: F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/StaticMemoryComponentAc.cpp.o"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/StaticMemory && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0xef67c461 -DASSERT_RELATIVE_PATH='"build-fprime-automatic-native/F-Prime/Svc/StaticMemory/StaticMemoryComponentAc.cpp"' -MD -MT F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/StaticMemoryComponentAc.cpp.o -MF CMakeFiles/Svc_StaticMemory.dir/StaticMemoryComponentAc.cpp.o.d -o CMakeFiles/Svc_StaticMemory.dir/StaticMemoryComponentAc.cpp.o -c /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/StaticMemory/StaticMemoryComponentAc.cpp

F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/StaticMemoryComponentAc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Svc_StaticMemory.dir/StaticMemoryComponentAc.cpp.i"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/StaticMemory && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0xef67c461 -DASSERT_RELATIVE_PATH='"build-fprime-automatic-native/F-Prime/Svc/StaticMemory/StaticMemoryComponentAc.cpp"' -E /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/StaticMemory/StaticMemoryComponentAc.cpp > CMakeFiles/Svc_StaticMemory.dir/StaticMemoryComponentAc.cpp.i

F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/StaticMemoryComponentAc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Svc_StaticMemory.dir/StaticMemoryComponentAc.cpp.s"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/StaticMemory && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0xef67c461 -DASSERT_RELATIVE_PATH='"build-fprime-automatic-native/F-Prime/Svc/StaticMemory/StaticMemoryComponentAc.cpp"' -S /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/StaticMemory/StaticMemoryComponentAc.cpp -o CMakeFiles/Svc_StaticMemory.dir/StaticMemoryComponentAc.cpp.s

# Object files for target Svc_StaticMemory
Svc_StaticMemory_OBJECTS = \
"CMakeFiles/Svc_StaticMemory.dir/StaticMemoryComponentImpl.cpp.o" \
"CMakeFiles/Svc_StaticMemory.dir/StaticMemoryComponentAc.cpp.o"

# External object files for target Svc_StaticMemory
Svc_StaticMemory_EXTERNAL_OBJECTS =

lib/Linux/libSvc_StaticMemory.a: F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/StaticMemoryComponentImpl.cpp.o
lib/Linux/libSvc_StaticMemory.a: F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/StaticMemoryComponentAc.cpp.o
lib/Linux/libSvc_StaticMemory.a: F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/build.make
lib/Linux/libSvc_StaticMemory.a: F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library ../../../lib/Linux/libSvc_StaticMemory.a"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/StaticMemory && $(CMAKE_COMMAND) -P CMakeFiles/Svc_StaticMemory.dir/cmake_clean_target.cmake
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/StaticMemory && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Svc_StaticMemory.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/build: lib/Linux/libSvc_StaticMemory.a
.PHONY : F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/build

F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/clean:
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/StaticMemory && $(CMAKE_COMMAND) -P CMakeFiles/Svc_StaticMemory.dir/cmake_clean.cmake
.PHONY : F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/clean

F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/depend: F-Prime/Svc/StaticMemory/StaticMemoryComponentAc.cpp
F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/depend: F-Prime/Svc/StaticMemory/StaticMemoryComponentAc.hpp
F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/depend: F-Prime/Svc/StaticMemory/StaticMemoryComponentAi.xml
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/StaticMemory /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/StaticMemory /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : F-Prime/Svc/StaticMemory/CMakeFiles/Svc_StaticMemory.dir/depend

