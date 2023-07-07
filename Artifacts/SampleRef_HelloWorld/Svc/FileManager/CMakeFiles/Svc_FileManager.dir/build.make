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
include F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/compiler_depend.make

# Include the progress variables for this target.
include F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/progress.make

# Include the compile flags for this target's objects.
include F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/flags.make

F-Prime/Svc/FileManager/FileManagerComponentAc.hpp: F-Prime/Svc/FileManager/FileManagerComponentAi.xml
F-Prime/Svc/FileManager/FileManagerComponentAc.hpp: /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/config/AcConstants.ini
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating FileManagerComponentAc.hpp, FileManagerComponentAc.cpp"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/FileManager && /snap/cmake/1299/bin/cmake -E env PYTHONPATH=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Autocoders/Python/src:/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Autocoders/Python/utils BUILD_ROOT=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime:/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world:/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native:/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime FPRIME_AC_CONSTANTS_FILE=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/config/AcConstants.ini PYTHON_AUTOCODER_DIR=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Autocoders/Python /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/env1/bin/python3 /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Autocoders/Python/bin/codegen.py -p /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/FileManager --build_root /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/FileManager/FileManagerComponentAi.xml

F-Prime/Svc/FileManager/FileManagerComponentAc.cpp: F-Prime/Svc/FileManager/FileManagerComponentAc.hpp
	@$(CMAKE_COMMAND) -E touch_nocreate F-Prime/Svc/FileManager/FileManagerComponentAc.cpp

F-Prime/Svc/FileManager/FileManagerComponentAi.xml: /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/FileManager/FileManager.fpp
F-Prime/Svc/FileManager/FileManagerComponentAi.xml: /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/FileManager/Commands.fppi
F-Prime/Svc/FileManager/FileManagerComponentAi.xml: /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/FileManager/Events.fppi
F-Prime/Svc/FileManager/FileManagerComponentAi.xml: /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/FileManager/Telemetry.fppi
F-Prime/Svc/FileManager/FileManagerComponentAi.xml: lib/Linux/libFw_Cmd.a
F-Prime/Svc/FileManager/FileManagerComponentAi.xml: lib/Linux/libFw_Log.a
F-Prime/Svc/FileManager/FileManagerComponentAi.xml: lib/Linux/libFw_Tlm.a
F-Prime/Svc/FileManager/FileManagerComponentAi.xml: lib/Linux/libSvc_Ping.a
F-Prime/Svc/FileManager/FileManagerComponentAi.xml: lib/Linux/libFw_CompQueued.a
F-Prime/Svc/FileManager/FileManagerComponentAi.xml: lib/Linux/libOs.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating FileManagerComponentAi.xml"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/FileManager && /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/env1/bin/fpp-to-xml -d /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/FileManager -i /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Fw/Cmd/Cmd.fpp,/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Fw/Log/Log.fpp,/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Fw/Time/Time.fpp,/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Fw/Tlm/Tlm.fpp,/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/Ping/Ping.fpp,/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/config/FpConfig.fpp /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/FileManager/FileManager.fpp -p /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime,/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world

F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/FileManager.cpp.o: F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/flags.make
F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/FileManager.cpp.o: /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/FileManager/FileManager.cpp
F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/FileManager.cpp.o: F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/FileManager.cpp.o"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/FileManager && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x6791a591 -DASSERT_RELATIVE_PATH='"Svc/FileManager/FileManager.cpp"' -MD -MT F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/FileManager.cpp.o -MF CMakeFiles/Svc_FileManager.dir/FileManager.cpp.o.d -o CMakeFiles/Svc_FileManager.dir/FileManager.cpp.o -c /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/FileManager/FileManager.cpp

F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/FileManager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Svc_FileManager.dir/FileManager.cpp.i"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/FileManager && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x6791a591 -DASSERT_RELATIVE_PATH='"Svc/FileManager/FileManager.cpp"' -E /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/FileManager/FileManager.cpp > CMakeFiles/Svc_FileManager.dir/FileManager.cpp.i

F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/FileManager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Svc_FileManager.dir/FileManager.cpp.s"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/FileManager && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x6791a591 -DASSERT_RELATIVE_PATH='"Svc/FileManager/FileManager.cpp"' -S /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/FileManager/FileManager.cpp -o CMakeFiles/Svc_FileManager.dir/FileManager.cpp.s

F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/FileManagerComponentAc.cpp.o: F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/flags.make
F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/FileManagerComponentAc.cpp.o: F-Prime/Svc/FileManager/FileManagerComponentAc.cpp
F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/FileManagerComponentAc.cpp.o: F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/FileManagerComponentAc.cpp.o"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/FileManager && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x01c9936e -DASSERT_RELATIVE_PATH='"build-fprime-automatic-native/F-Prime/Svc/FileManager/FileManagerComponentAc.cpp"' -MD -MT F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/FileManagerComponentAc.cpp.o -MF CMakeFiles/Svc_FileManager.dir/FileManagerComponentAc.cpp.o.d -o CMakeFiles/Svc_FileManager.dir/FileManagerComponentAc.cpp.o -c /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/FileManager/FileManagerComponentAc.cpp

F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/FileManagerComponentAc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Svc_FileManager.dir/FileManagerComponentAc.cpp.i"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/FileManager && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x01c9936e -DASSERT_RELATIVE_PATH='"build-fprime-automatic-native/F-Prime/Svc/FileManager/FileManagerComponentAc.cpp"' -E /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/FileManager/FileManagerComponentAc.cpp > CMakeFiles/Svc_FileManager.dir/FileManagerComponentAc.cpp.i

F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/FileManagerComponentAc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Svc_FileManager.dir/FileManagerComponentAc.cpp.s"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/FileManager && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x01c9936e -DASSERT_RELATIVE_PATH='"build-fprime-automatic-native/F-Prime/Svc/FileManager/FileManagerComponentAc.cpp"' -S /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/FileManager/FileManagerComponentAc.cpp -o CMakeFiles/Svc_FileManager.dir/FileManagerComponentAc.cpp.s

# Object files for target Svc_FileManager
Svc_FileManager_OBJECTS = \
"CMakeFiles/Svc_FileManager.dir/FileManager.cpp.o" \
"CMakeFiles/Svc_FileManager.dir/FileManagerComponentAc.cpp.o"

# External object files for target Svc_FileManager
Svc_FileManager_EXTERNAL_OBJECTS =

lib/Linux/libSvc_FileManager.a: F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/FileManager.cpp.o
lib/Linux/libSvc_FileManager.a: F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/FileManagerComponentAc.cpp.o
lib/Linux/libSvc_FileManager.a: F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/build.make
lib/Linux/libSvc_FileManager.a: F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library ../../../lib/Linux/libSvc_FileManager.a"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/FileManager && $(CMAKE_COMMAND) -P CMakeFiles/Svc_FileManager.dir/cmake_clean_target.cmake
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/FileManager && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Svc_FileManager.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/build: lib/Linux/libSvc_FileManager.a
.PHONY : F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/build

F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/clean:
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/FileManager && $(CMAKE_COMMAND) -P CMakeFiles/Svc_FileManager.dir/cmake_clean.cmake
.PHONY : F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/clean

F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/depend: F-Prime/Svc/FileManager/FileManagerComponentAc.cpp
F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/depend: F-Prime/Svc/FileManager/FileManagerComponentAc.hpp
F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/depend: F-Prime/Svc/FileManager/FileManagerComponentAi.xml
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/FileManager /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/FileManager /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : F-Prime/Svc/FileManager/CMakeFiles/Svc_FileManager.dir/depend

