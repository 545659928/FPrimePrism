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
include F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/compiler_depend.make

# Include the progress variables for this target.
include F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/progress.make

# Include the compile flags for this target's objects.
include F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/flags.make

F-Prime/Svc/ActiveTextLogger/ActiveTextLoggerComponentAc.hpp: F-Prime/Svc/ActiveTextLogger/ActiveTextLoggerComponentAi.xml
F-Prime/Svc/ActiveTextLogger/ActiveTextLoggerComponentAc.hpp: /home/fprime/fprime/config/AcConstants.ini
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/fprime/fprime/Ref/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ActiveTextLoggerComponentAc.hpp, ActiveTextLoggerComponentAc.cpp"
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveTextLogger && /snap/cmake/1299/bin/cmake -E env PYTHONPATH=/home/fprime/fprime/Autocoders/Python/src:/home/fprime/fprime/Autocoders/Python/utils BUILD_ROOT=/home/fprime/fprime:/home/fprime/fprime/Ref/build-fprime-automatic-native:/home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime FPRIME_AC_CONSTANTS_FILE=/home/fprime/fprime/config/AcConstants.ini PYTHON_AUTOCODER_DIR=/home/fprime/fprime/Autocoders/Python /home/fprime/fprime/Ref/env/bin/python3 /home/fprime/fprime/Autocoders/Python/bin/codegen.py -p /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveTextLogger --build_root /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveTextLogger/ActiveTextLoggerComponentAi.xml

F-Prime/Svc/ActiveTextLogger/ActiveTextLoggerComponentAc.cpp: F-Prime/Svc/ActiveTextLogger/ActiveTextLoggerComponentAc.hpp
	@$(CMAKE_COMMAND) -E touch_nocreate F-Prime/Svc/ActiveTextLogger/ActiveTextLoggerComponentAc.cpp

F-Prime/Svc/ActiveTextLogger/ActiveTextLoggerComponentAi.xml: /home/fprime/fprime/Svc/ActiveTextLogger/ActiveTextLogger.fpp
F-Prime/Svc/ActiveTextLogger/ActiveTextLoggerComponentAi.xml: lib/Linux/libFw_Log.a
F-Prime/Svc/ActiveTextLogger/ActiveTextLoggerComponentAi.xml: lib/Linux/libFw_CompQueued.a
F-Prime/Svc/ActiveTextLogger/ActiveTextLoggerComponentAi.xml: lib/Linux/libOs.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/fprime/fprime/Ref/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating ActiveTextLoggerComponentAi.xml"
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveTextLogger && /home/fprime/fprime/Ref/env/bin/fpp-to-xml -d /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveTextLogger -i /home/fprime/fprime/Fw/Log/Log.fpp,/home/fprime/fprime/Fw/Time/Time.fpp,/home/fprime/fprime/config/FpConfig.fpp /home/fprime/fprime/Svc/ActiveTextLogger/ActiveTextLogger.fpp -p /home/fprime/fprime

F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/ActiveTextLoggerImpl.cpp.o: F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/flags.make
F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/ActiveTextLoggerImpl.cpp.o: /home/fprime/fprime/Svc/ActiveTextLogger/ActiveTextLoggerImpl.cpp
F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/ActiveTextLoggerImpl.cpp.o: F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fprime/fprime/Ref/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/ActiveTextLoggerImpl.cpp.o"
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveTextLogger && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x5cb1c1da -DASSERT_RELATIVE_PATH='"Svc/ActiveTextLogger/ActiveTextLoggerImpl.cpp"' -MD -MT F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/ActiveTextLoggerImpl.cpp.o -MF CMakeFiles/Svc_ActiveTextLogger.dir/ActiveTextLoggerImpl.cpp.o.d -o CMakeFiles/Svc_ActiveTextLogger.dir/ActiveTextLoggerImpl.cpp.o -c /home/fprime/fprime/Svc/ActiveTextLogger/ActiveTextLoggerImpl.cpp

F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/ActiveTextLoggerImpl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Svc_ActiveTextLogger.dir/ActiveTextLoggerImpl.cpp.i"
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveTextLogger && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x5cb1c1da -DASSERT_RELATIVE_PATH='"Svc/ActiveTextLogger/ActiveTextLoggerImpl.cpp"' -E /home/fprime/fprime/Svc/ActiveTextLogger/ActiveTextLoggerImpl.cpp > CMakeFiles/Svc_ActiveTextLogger.dir/ActiveTextLoggerImpl.cpp.i

F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/ActiveTextLoggerImpl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Svc_ActiveTextLogger.dir/ActiveTextLoggerImpl.cpp.s"
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveTextLogger && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x5cb1c1da -DASSERT_RELATIVE_PATH='"Svc/ActiveTextLogger/ActiveTextLoggerImpl.cpp"' -S /home/fprime/fprime/Svc/ActiveTextLogger/ActiveTextLoggerImpl.cpp -o CMakeFiles/Svc_ActiveTextLogger.dir/ActiveTextLoggerImpl.cpp.s

F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/LogFile.cpp.o: F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/flags.make
F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/LogFile.cpp.o: /home/fprime/fprime/Svc/ActiveTextLogger/LogFile.cpp
F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/LogFile.cpp.o: F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fprime/fprime/Ref/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/LogFile.cpp.o"
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveTextLogger && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x40a4dbad -DASSERT_RELATIVE_PATH='"Svc/ActiveTextLogger/LogFile.cpp"' -MD -MT F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/LogFile.cpp.o -MF CMakeFiles/Svc_ActiveTextLogger.dir/LogFile.cpp.o.d -o CMakeFiles/Svc_ActiveTextLogger.dir/LogFile.cpp.o -c /home/fprime/fprime/Svc/ActiveTextLogger/LogFile.cpp

F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/LogFile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Svc_ActiveTextLogger.dir/LogFile.cpp.i"
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveTextLogger && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x40a4dbad -DASSERT_RELATIVE_PATH='"Svc/ActiveTextLogger/LogFile.cpp"' -E /home/fprime/fprime/Svc/ActiveTextLogger/LogFile.cpp > CMakeFiles/Svc_ActiveTextLogger.dir/LogFile.cpp.i

F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/LogFile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Svc_ActiveTextLogger.dir/LogFile.cpp.s"
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveTextLogger && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x40a4dbad -DASSERT_RELATIVE_PATH='"Svc/ActiveTextLogger/LogFile.cpp"' -S /home/fprime/fprime/Svc/ActiveTextLogger/LogFile.cpp -o CMakeFiles/Svc_ActiveTextLogger.dir/LogFile.cpp.s

F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/ActiveTextLoggerComponentAc.cpp.o: F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/flags.make
F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/ActiveTextLoggerComponentAc.cpp.o: F-Prime/Svc/ActiveTextLogger/ActiveTextLoggerComponentAc.cpp
F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/ActiveTextLoggerComponentAc.cpp.o: F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/fprime/fprime/Ref/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/ActiveTextLoggerComponentAc.cpp.o"
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveTextLogger && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x42240606 -DASSERT_RELATIVE_PATH='"Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveTextLogger/ActiveTextLoggerComponentAc.cpp"' -MD -MT F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/ActiveTextLoggerComponentAc.cpp.o -MF CMakeFiles/Svc_ActiveTextLogger.dir/ActiveTextLoggerComponentAc.cpp.o.d -o CMakeFiles/Svc_ActiveTextLogger.dir/ActiveTextLoggerComponentAc.cpp.o -c /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveTextLogger/ActiveTextLoggerComponentAc.cpp

F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/ActiveTextLoggerComponentAc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Svc_ActiveTextLogger.dir/ActiveTextLoggerComponentAc.cpp.i"
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveTextLogger && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x42240606 -DASSERT_RELATIVE_PATH='"Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveTextLogger/ActiveTextLoggerComponentAc.cpp"' -E /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveTextLogger/ActiveTextLoggerComponentAc.cpp > CMakeFiles/Svc_ActiveTextLogger.dir/ActiveTextLoggerComponentAc.cpp.i

F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/ActiveTextLoggerComponentAc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Svc_ActiveTextLogger.dir/ActiveTextLoggerComponentAc.cpp.s"
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveTextLogger && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -DASSERT_FILE_ID=0x42240606 -DASSERT_RELATIVE_PATH='"Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveTextLogger/ActiveTextLoggerComponentAc.cpp"' -S /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveTextLogger/ActiveTextLoggerComponentAc.cpp -o CMakeFiles/Svc_ActiveTextLogger.dir/ActiveTextLoggerComponentAc.cpp.s

# Object files for target Svc_ActiveTextLogger
Svc_ActiveTextLogger_OBJECTS = \
"CMakeFiles/Svc_ActiveTextLogger.dir/ActiveTextLoggerImpl.cpp.o" \
"CMakeFiles/Svc_ActiveTextLogger.dir/LogFile.cpp.o" \
"CMakeFiles/Svc_ActiveTextLogger.dir/ActiveTextLoggerComponentAc.cpp.o"

# External object files for target Svc_ActiveTextLogger
Svc_ActiveTextLogger_EXTERNAL_OBJECTS =

lib/Linux/libSvc_ActiveTextLogger.a: F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/ActiveTextLoggerImpl.cpp.o
lib/Linux/libSvc_ActiveTextLogger.a: F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/LogFile.cpp.o
lib/Linux/libSvc_ActiveTextLogger.a: F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/ActiveTextLoggerComponentAc.cpp.o
lib/Linux/libSvc_ActiveTextLogger.a: F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/build.make
lib/Linux/libSvc_ActiveTextLogger.a: F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/fprime/fprime/Ref/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX static library ../../../lib/Linux/libSvc_ActiveTextLogger.a"
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveTextLogger && $(CMAKE_COMMAND) -P CMakeFiles/Svc_ActiveTextLogger.dir/cmake_clean_target.cmake
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveTextLogger && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Svc_ActiveTextLogger.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/build: lib/Linux/libSvc_ActiveTextLogger.a
.PHONY : F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/build

F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/clean:
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveTextLogger && $(CMAKE_COMMAND) -P CMakeFiles/Svc_ActiveTextLogger.dir/cmake_clean.cmake
.PHONY : F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/clean

F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/depend: F-Prime/Svc/ActiveTextLogger/ActiveTextLoggerComponentAc.cpp
F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/depend: F-Prime/Svc/ActiveTextLogger/ActiveTextLoggerComponentAc.hpp
F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/depend: F-Prime/Svc/ActiveTextLogger/ActiveTextLoggerComponentAi.xml
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fprime/fprime/Ref /home/fprime/fprime/Svc/ActiveTextLogger /home/fprime/fprime/Ref/build-fprime-automatic-native /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveTextLogger /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : F-Prime/Svc/ActiveTextLogger/CMakeFiles/Svc_ActiveTextLogger.dir/depend

