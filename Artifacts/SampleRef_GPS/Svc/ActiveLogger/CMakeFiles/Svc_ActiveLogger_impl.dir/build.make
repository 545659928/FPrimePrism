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

# Utility rule file for Svc_ActiveLogger_impl.

# Include any custom commands dependencies for this target.
include F-Prime/Svc/ActiveLogger/CMakeFiles/Svc_ActiveLogger_impl.dir/compiler_depend.make

# Include the progress variables for this target.
include F-Prime/Svc/ActiveLogger/CMakeFiles/Svc_ActiveLogger_impl.dir/progress.make

F-Prime/Svc/ActiveLogger/CMakeFiles/Svc_ActiveLogger_impl: F-Prime/Svc/ActiveLogger/ActiveLoggerComponentAi.xml
F-Prime/Svc/ActiveLogger/CMakeFiles/Svc_ActiveLogger_impl: F-Prime/Svc/ActiveLogger/ActiveLogger_EnabledEnumAi.xml
F-Prime/Svc/ActiveLogger/CMakeFiles/Svc_ActiveLogger_impl: F-Prime/Svc/ActiveLogger/ActiveLogger_FilterSeverityEnumAi.xml
F-Prime/Svc/ActiveLogger/CMakeFiles/Svc_ActiveLogger_impl: F-Prime/Svc/ActiveLogger/ActiveLogger_EnabledEnumAc.cpp
F-Prime/Svc/ActiveLogger/CMakeFiles/Svc_ActiveLogger_impl: F-Prime/Svc/ActiveLogger/ActiveLogger_EnabledEnumAc.hpp
F-Prime/Svc/ActiveLogger/CMakeFiles/Svc_ActiveLogger_impl: F-Prime/Svc/ActiveLogger/ActiveLogger_FilterSeverityEnumAc.cpp
F-Prime/Svc/ActiveLogger/CMakeFiles/Svc_ActiveLogger_impl: F-Prime/Svc/ActiveLogger/ActiveLogger_FilterSeverityEnumAc.hpp
F-Prime/Svc/ActiveLogger/CMakeFiles/Svc_ActiveLogger_impl: /home/fprime/fprime/Svc/ActiveLogger/ActiveLoggerComponentImpl.hpp-template
F-Prime/Svc/ActiveLogger/CMakeFiles/Svc_ActiveLogger_impl: /home/fprime/fprime/Svc/ActiveLogger/ActiveLoggerComponentImpl.cpp-template

F-Prime/Svc/ActiveLogger/ActiveLoggerComponentAi.xml: /home/fprime/fprime/Svc/ActiveLogger/ActiveLogger.fpp
F-Prime/Svc/ActiveLogger/ActiveLoggerComponentAi.xml: lib/Linux/libFw_Cmd.a
F-Prime/Svc/ActiveLogger/ActiveLoggerComponentAi.xml: lib/Linux/libFw_Com.a
F-Prime/Svc/ActiveLogger/ActiveLoggerComponentAi.xml: lib/Linux/libFw_Log.a
F-Prime/Svc/ActiveLogger/ActiveLoggerComponentAi.xml: lib/Linux/libFw_Time.a
F-Prime/Svc/ActiveLogger/ActiveLoggerComponentAi.xml: lib/Linux/libSvc_Fatal.a
F-Prime/Svc/ActiveLogger/ActiveLoggerComponentAi.xml: lib/Linux/libSvc_Ping.a
F-Prime/Svc/ActiveLogger/ActiveLoggerComponentAi.xml: lib/Linux/libFw_CompQueued.a
F-Prime/Svc/ActiveLogger/ActiveLoggerComponentAi.xml: lib/Linux/libOs.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/fprime/fprime/Ref/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating ActiveLoggerComponentAi.xml, ActiveLogger_EnabledEnumAi.xml, ActiveLogger_FilterSeverityEnumAi.xml"
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveLogger && /home/fprime/fprime/Ref/env/bin/fpp-to-xml -d /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveLogger -i /home/fprime/fprime/Fw/Cmd/Cmd.fpp,/home/fprime/fprime/Fw/Com/Com.fpp,/home/fprime/fprime/Fw/Log/Log.fpp,/home/fprime/fprime/Fw/Time/Time.fpp,/home/fprime/fprime/Svc/Fatal/Fatal.fpp,/home/fprime/fprime/Svc/Ping/Ping.fpp,/home/fprime/fprime/config/FpConfig.fpp /home/fprime/fprime/Svc/ActiveLogger/ActiveLogger.fpp -p /home/fprime/fprime

F-Prime/Svc/ActiveLogger/ActiveLogger_EnabledEnumAi.xml: F-Prime/Svc/ActiveLogger/ActiveLoggerComponentAi.xml
	@$(CMAKE_COMMAND) -E touch_nocreate F-Prime/Svc/ActiveLogger/ActiveLogger_EnabledEnumAi.xml

F-Prime/Svc/ActiveLogger/ActiveLogger_FilterSeverityEnumAi.xml: F-Prime/Svc/ActiveLogger/ActiveLoggerComponentAi.xml
	@$(CMAKE_COMMAND) -E touch_nocreate F-Prime/Svc/ActiveLogger/ActiveLogger_FilterSeverityEnumAi.xml

F-Prime/Svc/ActiveLogger/ActiveLogger_EnabledEnumAc.cpp: /home/fprime/fprime/Svc/ActiveLogger/ActiveLogger.fpp
F-Prime/Svc/ActiveLogger/ActiveLogger_EnabledEnumAc.cpp: lib/Linux/libFw_Cmd.a
F-Prime/Svc/ActiveLogger/ActiveLogger_EnabledEnumAc.cpp: lib/Linux/libFw_Com.a
F-Prime/Svc/ActiveLogger/ActiveLogger_EnabledEnumAc.cpp: lib/Linux/libFw_Log.a
F-Prime/Svc/ActiveLogger/ActiveLogger_EnabledEnumAc.cpp: lib/Linux/libFw_Time.a
F-Prime/Svc/ActiveLogger/ActiveLogger_EnabledEnumAc.cpp: lib/Linux/libSvc_Fatal.a
F-Prime/Svc/ActiveLogger/ActiveLogger_EnabledEnumAc.cpp: lib/Linux/libSvc_Ping.a
F-Prime/Svc/ActiveLogger/ActiveLogger_EnabledEnumAc.cpp: lib/Linux/libFw_CompQueued.a
F-Prime/Svc/ActiveLogger/ActiveLogger_EnabledEnumAc.cpp: lib/Linux/libOs.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/fprime/fprime/Ref/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating ActiveLogger_EnabledEnumAc.cpp, ActiveLogger_EnabledEnumAc.hpp, ActiveLogger_FilterSeverityEnumAc.cpp, ActiveLogger_FilterSeverityEnumAc.hpp"
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveLogger && /home/fprime/fprime/Ref/env/bin/fpp-to-cpp -d /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveLogger -i /home/fprime/fprime/Fw/Cmd/Cmd.fpp,/home/fprime/fprime/Fw/Com/Com.fpp,/home/fprime/fprime/Fw/Log/Log.fpp,/home/fprime/fprime/Fw/Time/Time.fpp,/home/fprime/fprime/Svc/Fatal/Fatal.fpp,/home/fprime/fprime/Svc/Ping/Ping.fpp,/home/fprime/fprime/config/FpConfig.fpp /home/fprime/fprime/Svc/ActiveLogger/ActiveLogger.fpp -p /home/fprime/fprime,/home/fprime/fprime/Ref/build-fprime-automatic-native

F-Prime/Svc/ActiveLogger/ActiveLogger_EnabledEnumAc.hpp: F-Prime/Svc/ActiveLogger/ActiveLogger_EnabledEnumAc.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate F-Prime/Svc/ActiveLogger/ActiveLogger_EnabledEnumAc.hpp

F-Prime/Svc/ActiveLogger/ActiveLogger_FilterSeverityEnumAc.cpp: F-Prime/Svc/ActiveLogger/ActiveLogger_EnabledEnumAc.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate F-Prime/Svc/ActiveLogger/ActiveLogger_FilterSeverityEnumAc.cpp

F-Prime/Svc/ActiveLogger/ActiveLogger_FilterSeverityEnumAc.hpp: F-Prime/Svc/ActiveLogger/ActiveLogger_EnabledEnumAc.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate F-Prime/Svc/ActiveLogger/ActiveLogger_FilterSeverityEnumAc.hpp

/home/fprime/fprime/Svc/ActiveLogger/ActiveLoggerComponentImpl.hpp-template: F-Prime/Svc/ActiveLogger/ActiveLoggerComponentAi.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/fprime/fprime/Ref/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating /home/fprime/fprime/Svc/ActiveLogger/ActiveLoggerComponentImpl.hpp-template, /home/fprime/fprime/Svc/ActiveLogger/ActiveLoggerComponentImpl.cpp-template"
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveLogger && /snap/cmake/1299/bin/cmake -E env PYTHONPATH=/home/fprime/fprime/Autocoders/Python/src:/home/fprime/fprime/Autocoders/Python/utils BUILD_ROOT=/home/fprime/fprime:/home/fprime/fprime/Ref/build-fprime-automatic-native:/home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime FPRIME_AC_CONSTANTS_FILE=/home/fprime/fprime/config/AcConstants.ini PYTHON_AUTOCODER_DIR=/home/fprime/fprime/Autocoders/Python /home/fprime/fprime/Ref/env/bin/python3 /home/fprime/fprime/Autocoders/Python/bin/codegen.py -p /home/fprime/fprime/Svc/ActiveLogger --build_root -t /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveLogger/ActiveLoggerComponentAi.xml

/home/fprime/fprime/Svc/ActiveLogger/ActiveLoggerComponentImpl.cpp-template: /home/fprime/fprime/Svc/ActiveLogger/ActiveLoggerComponentImpl.hpp-template
	@$(CMAKE_COMMAND) -E touch_nocreate /home/fprime/fprime/Svc/ActiveLogger/ActiveLoggerComponentImpl.cpp-template

Svc_ActiveLogger_impl: F-Prime/Svc/ActiveLogger/ActiveLoggerComponentAi.xml
Svc_ActiveLogger_impl: F-Prime/Svc/ActiveLogger/ActiveLogger_EnabledEnumAc.cpp
Svc_ActiveLogger_impl: F-Prime/Svc/ActiveLogger/ActiveLogger_EnabledEnumAc.hpp
Svc_ActiveLogger_impl: F-Prime/Svc/ActiveLogger/ActiveLogger_EnabledEnumAi.xml
Svc_ActiveLogger_impl: F-Prime/Svc/ActiveLogger/ActiveLogger_FilterSeverityEnumAc.cpp
Svc_ActiveLogger_impl: F-Prime/Svc/ActiveLogger/ActiveLogger_FilterSeverityEnumAc.hpp
Svc_ActiveLogger_impl: F-Prime/Svc/ActiveLogger/ActiveLogger_FilterSeverityEnumAi.xml
Svc_ActiveLogger_impl: F-Prime/Svc/ActiveLogger/CMakeFiles/Svc_ActiveLogger_impl
Svc_ActiveLogger_impl: /home/fprime/fprime/Svc/ActiveLogger/ActiveLoggerComponentImpl.cpp-template
Svc_ActiveLogger_impl: /home/fprime/fprime/Svc/ActiveLogger/ActiveLoggerComponentImpl.hpp-template
Svc_ActiveLogger_impl: F-Prime/Svc/ActiveLogger/CMakeFiles/Svc_ActiveLogger_impl.dir/build.make
.PHONY : Svc_ActiveLogger_impl

# Rule to build all files generated by this target.
F-Prime/Svc/ActiveLogger/CMakeFiles/Svc_ActiveLogger_impl.dir/build: Svc_ActiveLogger_impl
.PHONY : F-Prime/Svc/ActiveLogger/CMakeFiles/Svc_ActiveLogger_impl.dir/build

F-Prime/Svc/ActiveLogger/CMakeFiles/Svc_ActiveLogger_impl.dir/clean:
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveLogger && $(CMAKE_COMMAND) -P CMakeFiles/Svc_ActiveLogger_impl.dir/cmake_clean.cmake
.PHONY : F-Prime/Svc/ActiveLogger/CMakeFiles/Svc_ActiveLogger_impl.dir/clean

F-Prime/Svc/ActiveLogger/CMakeFiles/Svc_ActiveLogger_impl.dir/depend:
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fprime/fprime/Ref /home/fprime/fprime/Svc/ActiveLogger /home/fprime/fprime/Ref/build-fprime-automatic-native /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveLogger /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/ActiveLogger/CMakeFiles/Svc_ActiveLogger_impl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : F-Prime/Svc/ActiveLogger/CMakeFiles/Svc_ActiveLogger_impl.dir/depend

