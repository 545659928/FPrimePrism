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
include F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/compiler_depend.make

# Include the progress variables for this target.
include F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/progress.make

# Include the compile flags for this target's objects.
include F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/flags.make

F-Prime/Svc/BufferAccumulator/BufferAccumulatorComponentAi.xml: /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/BufferAccumulator/BufferAccumulator.fpp
F-Prime/Svc/BufferAccumulator/BufferAccumulatorComponentAi.xml: /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/BufferAccumulator/Commands.fppi
F-Prime/Svc/BufferAccumulator/BufferAccumulatorComponentAi.xml: /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/BufferAccumulator/Events.fppi
F-Prime/Svc/BufferAccumulator/BufferAccumulatorComponentAi.xml: /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/BufferAccumulator/Telemetry.fppi
F-Prime/Svc/BufferAccumulator/BufferAccumulatorComponentAi.xml: lib/Linux/libFw_Buffer.a
F-Prime/Svc/BufferAccumulator/BufferAccumulatorComponentAi.xml: lib/Linux/libFw_Cmd.a
F-Prime/Svc/BufferAccumulator/BufferAccumulatorComponentAi.xml: lib/Linux/libFw_Log.a
F-Prime/Svc/BufferAccumulator/BufferAccumulatorComponentAi.xml: lib/Linux/libFw_Tlm.a
F-Prime/Svc/BufferAccumulator/BufferAccumulatorComponentAi.xml: lib/Linux/libSvc_Ping.a
F-Prime/Svc/BufferAccumulator/BufferAccumulatorComponentAi.xml: lib/Linux/libFw_CompQueued.a
F-Prime/Svc/BufferAccumulator/BufferAccumulatorComponentAi.xml: lib/Linux/libOs.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating BufferAccumulatorComponentAi.xml, BufferAccumulator_BlockModeEnumAi.xml, BufferAccumulator_OpStateEnumAi.xml"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator && /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/env1/bin/fpp-to-xml -d /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator -i /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Fw/Buffer/Buffer.fpp,/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Fw/Cmd/Cmd.fpp,/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Fw/Log/Log.fpp,/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Fw/Time/Time.fpp,/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Fw/Tlm/Tlm.fpp,/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/Ping/Ping.fpp,/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/config/FpConfig.fpp /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/BufferAccumulator/BufferAccumulator.fpp -p /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime,/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world

F-Prime/Svc/BufferAccumulator/BufferAccumulator_BlockModeEnumAi.xml: F-Prime/Svc/BufferAccumulator/BufferAccumulatorComponentAi.xml
	@$(CMAKE_COMMAND) -E touch_nocreate F-Prime/Svc/BufferAccumulator/BufferAccumulator_BlockModeEnumAi.xml

F-Prime/Svc/BufferAccumulator/BufferAccumulator_OpStateEnumAi.xml: F-Prime/Svc/BufferAccumulator/BufferAccumulatorComponentAi.xml
	@$(CMAKE_COMMAND) -E touch_nocreate F-Prime/Svc/BufferAccumulator/BufferAccumulator_OpStateEnumAi.xml

F-Prime/Svc/BufferAccumulator/BufferAccumulator_BlockModeEnumAc.cpp: /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/BufferAccumulator/BufferAccumulator.fpp
F-Prime/Svc/BufferAccumulator/BufferAccumulator_BlockModeEnumAc.cpp: /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/BufferAccumulator/Commands.fppi
F-Prime/Svc/BufferAccumulator/BufferAccumulator_BlockModeEnumAc.cpp: /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/BufferAccumulator/Events.fppi
F-Prime/Svc/BufferAccumulator/BufferAccumulator_BlockModeEnumAc.cpp: /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/BufferAccumulator/Telemetry.fppi
F-Prime/Svc/BufferAccumulator/BufferAccumulator_BlockModeEnumAc.cpp: lib/Linux/libFw_Buffer.a
F-Prime/Svc/BufferAccumulator/BufferAccumulator_BlockModeEnumAc.cpp: lib/Linux/libFw_Cmd.a
F-Prime/Svc/BufferAccumulator/BufferAccumulator_BlockModeEnumAc.cpp: lib/Linux/libFw_Log.a
F-Prime/Svc/BufferAccumulator/BufferAccumulator_BlockModeEnumAc.cpp: lib/Linux/libFw_Tlm.a
F-Prime/Svc/BufferAccumulator/BufferAccumulator_BlockModeEnumAc.cpp: lib/Linux/libSvc_Ping.a
F-Prime/Svc/BufferAccumulator/BufferAccumulator_BlockModeEnumAc.cpp: lib/Linux/libFw_CompQueued.a
F-Prime/Svc/BufferAccumulator/BufferAccumulator_BlockModeEnumAc.cpp: lib/Linux/libOs.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating BufferAccumulator_BlockModeEnumAc.cpp, BufferAccumulator_BlockModeEnumAc.hpp, BufferAccumulator_OpStateEnumAc.cpp, BufferAccumulator_OpStateEnumAc.hpp"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator && /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/env1/bin/fpp-to-cpp -d /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator -i /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Fw/Buffer/Buffer.fpp,/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Fw/Cmd/Cmd.fpp,/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Fw/Log/Log.fpp,/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Fw/Time/Time.fpp,/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Fw/Tlm/Tlm.fpp,/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/Ping/Ping.fpp,/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/config/FpConfig.fpp /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/BufferAccumulator/BufferAccumulator.fpp -p /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime,/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world,/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native

F-Prime/Svc/BufferAccumulator/BufferAccumulator_BlockModeEnumAc.hpp: F-Prime/Svc/BufferAccumulator/BufferAccumulator_BlockModeEnumAc.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate F-Prime/Svc/BufferAccumulator/BufferAccumulator_BlockModeEnumAc.hpp

F-Prime/Svc/BufferAccumulator/BufferAccumulator_OpStateEnumAc.cpp: F-Prime/Svc/BufferAccumulator/BufferAccumulator_BlockModeEnumAc.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate F-Prime/Svc/BufferAccumulator/BufferAccumulator_OpStateEnumAc.cpp

F-Prime/Svc/BufferAccumulator/BufferAccumulator_OpStateEnumAc.hpp: F-Prime/Svc/BufferAccumulator/BufferAccumulator_BlockModeEnumAc.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate F-Prime/Svc/BufferAccumulator/BufferAccumulator_OpStateEnumAc.hpp

F-Prime/Svc/BufferAccumulator/BufferAccumulatorComponentAc.hpp: F-Prime/Svc/BufferAccumulator/BufferAccumulatorComponentAi.xml
F-Prime/Svc/BufferAccumulator/BufferAccumulatorComponentAc.hpp: /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/config/AcConstants.ini
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating BufferAccumulatorComponentAc.hpp, BufferAccumulatorComponentAc.cpp"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator && /snap/cmake/1299/bin/cmake -E env PYTHONPATH=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Autocoders/Python/src:/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Autocoders/Python/utils BUILD_ROOT=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime:/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world:/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native:/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime FPRIME_AC_CONSTANTS_FILE=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/config/AcConstants.ini PYTHON_AUTOCODER_DIR=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Autocoders/Python /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/env1/bin/python3 /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Autocoders/Python/bin/codegen.py -p /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator --build_root /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator/BufferAccumulatorComponentAi.xml

F-Prime/Svc/BufferAccumulator/BufferAccumulatorComponentAc.cpp: F-Prime/Svc/BufferAccumulator/BufferAccumulatorComponentAc.hpp
	@$(CMAKE_COMMAND) -E touch_nocreate F-Prime/Svc/BufferAccumulator/BufferAccumulatorComponentAc.cpp

F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator.cpp.o: F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/flags.make
F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator.cpp.o: /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/BufferAccumulator/BufferAccumulator.cpp
F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator.cpp.o: F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator.cpp.o"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x1845990d -DASSERT_RELATIVE_PATH='"Svc/BufferAccumulator/BufferAccumulator.cpp"' -MD -MT F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator.cpp.o -MF CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator.cpp.o.d -o CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator.cpp.o -c /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/BufferAccumulator/BufferAccumulator.cpp

F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator.cpp.i"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x1845990d -DASSERT_RELATIVE_PATH='"Svc/BufferAccumulator/BufferAccumulator.cpp"' -E /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/BufferAccumulator/BufferAccumulator.cpp > CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator.cpp.i

F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator.cpp.s"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x1845990d -DASSERT_RELATIVE_PATH='"Svc/BufferAccumulator/BufferAccumulator.cpp"' -S /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/BufferAccumulator/BufferAccumulator.cpp -o CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator.cpp.s

F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/ArrayFIFOBuffer.cpp.o: F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/flags.make
F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/ArrayFIFOBuffer.cpp.o: /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/BufferAccumulator/ArrayFIFOBuffer.cpp
F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/ArrayFIFOBuffer.cpp.o: F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/ArrayFIFOBuffer.cpp.o"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x7497bd97 -DASSERT_RELATIVE_PATH='"Svc/BufferAccumulator/ArrayFIFOBuffer.cpp"' -MD -MT F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/ArrayFIFOBuffer.cpp.o -MF CMakeFiles/Svc_BufferAccumulator.dir/ArrayFIFOBuffer.cpp.o.d -o CMakeFiles/Svc_BufferAccumulator.dir/ArrayFIFOBuffer.cpp.o -c /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/BufferAccumulator/ArrayFIFOBuffer.cpp

F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/ArrayFIFOBuffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Svc_BufferAccumulator.dir/ArrayFIFOBuffer.cpp.i"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x7497bd97 -DASSERT_RELATIVE_PATH='"Svc/BufferAccumulator/ArrayFIFOBuffer.cpp"' -E /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/BufferAccumulator/ArrayFIFOBuffer.cpp > CMakeFiles/Svc_BufferAccumulator.dir/ArrayFIFOBuffer.cpp.i

F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/ArrayFIFOBuffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Svc_BufferAccumulator.dir/ArrayFIFOBuffer.cpp.s"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x7497bd97 -DASSERT_RELATIVE_PATH='"Svc/BufferAccumulator/ArrayFIFOBuffer.cpp"' -S /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/BufferAccumulator/ArrayFIFOBuffer.cpp -o CMakeFiles/Svc_BufferAccumulator.dir/ArrayFIFOBuffer.cpp.s

F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator_BlockModeEnumAc.cpp.o: F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/flags.make
F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator_BlockModeEnumAc.cpp.o: F-Prime/Svc/BufferAccumulator/BufferAccumulator_BlockModeEnumAc.cpp
F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator_BlockModeEnumAc.cpp.o: F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator_BlockModeEnumAc.cpp.o"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0xbde49242 -DASSERT_RELATIVE_PATH='"build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator/BufferAccumulator_BlockModeEnumAc.cpp"' -MD -MT F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator_BlockModeEnumAc.cpp.o -MF CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator_BlockModeEnumAc.cpp.o.d -o CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator_BlockModeEnumAc.cpp.o -c /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator/BufferAccumulator_BlockModeEnumAc.cpp

F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator_BlockModeEnumAc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator_BlockModeEnumAc.cpp.i"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0xbde49242 -DASSERT_RELATIVE_PATH='"build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator/BufferAccumulator_BlockModeEnumAc.cpp"' -E /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator/BufferAccumulator_BlockModeEnumAc.cpp > CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator_BlockModeEnumAc.cpp.i

F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator_BlockModeEnumAc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator_BlockModeEnumAc.cpp.s"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0xbde49242 -DASSERT_RELATIVE_PATH='"build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator/BufferAccumulator_BlockModeEnumAc.cpp"' -S /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator/BufferAccumulator_BlockModeEnumAc.cpp -o CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator_BlockModeEnumAc.cpp.s

F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator_OpStateEnumAc.cpp.o: F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/flags.make
F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator_OpStateEnumAc.cpp.o: F-Prime/Svc/BufferAccumulator/BufferAccumulator_OpStateEnumAc.cpp
F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator_OpStateEnumAc.cpp.o: F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator_OpStateEnumAc.cpp.o"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x84121d19 -DASSERT_RELATIVE_PATH='"build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator/BufferAccumulator_OpStateEnumAc.cpp"' -MD -MT F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator_OpStateEnumAc.cpp.o -MF CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator_OpStateEnumAc.cpp.o.d -o CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator_OpStateEnumAc.cpp.o -c /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator/BufferAccumulator_OpStateEnumAc.cpp

F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator_OpStateEnumAc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator_OpStateEnumAc.cpp.i"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x84121d19 -DASSERT_RELATIVE_PATH='"build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator/BufferAccumulator_OpStateEnumAc.cpp"' -E /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator/BufferAccumulator_OpStateEnumAc.cpp > CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator_OpStateEnumAc.cpp.i

F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator_OpStateEnumAc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator_OpStateEnumAc.cpp.s"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x84121d19 -DASSERT_RELATIVE_PATH='"build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator/BufferAccumulator_OpStateEnumAc.cpp"' -S /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator/BufferAccumulator_OpStateEnumAc.cpp -o CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator_OpStateEnumAc.cpp.s

F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulatorComponentAc.cpp.o: F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/flags.make
F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulatorComponentAc.cpp.o: F-Prime/Svc/BufferAccumulator/BufferAccumulatorComponentAc.cpp
F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulatorComponentAc.cpp.o: F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulatorComponentAc.cpp.o"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x0156cfb5 -DASSERT_RELATIVE_PATH='"build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator/BufferAccumulatorComponentAc.cpp"' -MD -MT F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulatorComponentAc.cpp.o -MF CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulatorComponentAc.cpp.o.d -o CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulatorComponentAc.cpp.o -c /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator/BufferAccumulatorComponentAc.cpp

F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulatorComponentAc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulatorComponentAc.cpp.i"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x0156cfb5 -DASSERT_RELATIVE_PATH='"build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator/BufferAccumulatorComponentAc.cpp"' -E /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator/BufferAccumulatorComponentAc.cpp > CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulatorComponentAc.cpp.i

F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulatorComponentAc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulatorComponentAc.cpp.s"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x0156cfb5 -DASSERT_RELATIVE_PATH='"build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator/BufferAccumulatorComponentAc.cpp"' -S /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator/BufferAccumulatorComponentAc.cpp -o CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulatorComponentAc.cpp.s

# Object files for target Svc_BufferAccumulator
Svc_BufferAccumulator_OBJECTS = \
"CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator.cpp.o" \
"CMakeFiles/Svc_BufferAccumulator.dir/ArrayFIFOBuffer.cpp.o" \
"CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator_BlockModeEnumAc.cpp.o" \
"CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator_OpStateEnumAc.cpp.o" \
"CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulatorComponentAc.cpp.o"

# External object files for target Svc_BufferAccumulator
Svc_BufferAccumulator_EXTERNAL_OBJECTS =

lib/Linux/libSvc_BufferAccumulator.a: F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator.cpp.o
lib/Linux/libSvc_BufferAccumulator.a: F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/ArrayFIFOBuffer.cpp.o
lib/Linux/libSvc_BufferAccumulator.a: F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator_BlockModeEnumAc.cpp.o
lib/Linux/libSvc_BufferAccumulator.a: F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulator_OpStateEnumAc.cpp.o
lib/Linux/libSvc_BufferAccumulator.a: F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/BufferAccumulatorComponentAc.cpp.o
lib/Linux/libSvc_BufferAccumulator.a: F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/build.make
lib/Linux/libSvc_BufferAccumulator.a: F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX static library ../../../lib/Linux/libSvc_BufferAccumulator.a"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator && $(CMAKE_COMMAND) -P CMakeFiles/Svc_BufferAccumulator.dir/cmake_clean_target.cmake
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Svc_BufferAccumulator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/build: lib/Linux/libSvc_BufferAccumulator.a
.PHONY : F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/build

F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/clean:
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator && $(CMAKE_COMMAND) -P CMakeFiles/Svc_BufferAccumulator.dir/cmake_clean.cmake
.PHONY : F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/clean

F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/depend: F-Prime/Svc/BufferAccumulator/BufferAccumulatorComponentAc.cpp
F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/depend: F-Prime/Svc/BufferAccumulator/BufferAccumulatorComponentAc.hpp
F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/depend: F-Prime/Svc/BufferAccumulator/BufferAccumulatorComponentAi.xml
F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/depend: F-Prime/Svc/BufferAccumulator/BufferAccumulator_BlockModeEnumAc.cpp
F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/depend: F-Prime/Svc/BufferAccumulator/BufferAccumulator_BlockModeEnumAc.hpp
F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/depend: F-Prime/Svc/BufferAccumulator/BufferAccumulator_BlockModeEnumAi.xml
F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/depend: F-Prime/Svc/BufferAccumulator/BufferAccumulator_OpStateEnumAc.cpp
F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/depend: F-Prime/Svc/BufferAccumulator/BufferAccumulator_OpStateEnumAc.hpp
F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/depend: F-Prime/Svc/BufferAccumulator/BufferAccumulator_OpStateEnumAi.xml
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/BufferAccumulator /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : F-Prime/Svc/BufferAccumulator/CMakeFiles/Svc_BufferAccumulator.dir/depend

