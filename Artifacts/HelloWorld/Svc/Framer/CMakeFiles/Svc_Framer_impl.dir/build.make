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

# Utility rule file for Svc_Framer_impl.

# Include any custom commands dependencies for this target.
include F-Prime/Svc/Framer/CMakeFiles/Svc_Framer_impl.dir/compiler_depend.make

# Include the progress variables for this target.
include F-Prime/Svc/Framer/CMakeFiles/Svc_Framer_impl.dir/progress.make

F-Prime/Svc/Framer/CMakeFiles/Svc_Framer_impl: F-Prime/Svc/Framer/FramerComponentAi.xml
F-Prime/Svc/Framer/CMakeFiles/Svc_Framer_impl: /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/Framer/FramerComponentImpl.hpp-template
F-Prime/Svc/Framer/CMakeFiles/Svc_Framer_impl: /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/Framer/FramerComponentImpl.cpp-template

F-Prime/Svc/Framer/FramerComponentAi.xml: /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/Framer/Framer.fpp
F-Prime/Svc/Framer/FramerComponentAi.xml: lib/Linux/libDrv_ByteStreamDriverModel.a
F-Prime/Svc/Framer/FramerComponentAi.xml: lib/Linux/libFw_Buffer.a
F-Prime/Svc/Framer/FramerComponentAi.xml: lib/Linux/libFw_Com.a
F-Prime/Svc/Framer/FramerComponentAi.xml: lib/Linux/libFw_Ports_SuccessCondition.a
F-Prime/Svc/Framer/FramerComponentAi.xml: lib/Linux/libOs.a
F-Prime/Svc/Framer/FramerComponentAi.xml: lib/Linux/libFw_Comp.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating FramerComponentAi.xml"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/Framer && /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/env1/bin/fpp-to-xml -d /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/Framer -i /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Drv/ByteStreamDriverModel/ByteStreamDriverModel.fpp,/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Fw/Buffer/Buffer.fpp,/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Fw/Com/Com.fpp,/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Fw/Ports/SuccessCondition/SuccessCondition.fpp,/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Fw/Types/Types.fpp /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/Framer/Framer.fpp -p /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime,/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world

/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/Framer/FramerComponentImpl.hpp-template: F-Prime/Svc/Framer/FramerComponentAi.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/Framer/FramerComponentImpl.hpp-template, /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/Framer/FramerComponentImpl.cpp-template"
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/Framer && /snap/cmake/1299/bin/cmake -E env PYTHONPATH=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Autocoders/Python/src:/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Autocoders/Python/utils BUILD_ROOT=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime:/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world:/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native:/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime FPRIME_AC_CONSTANTS_FILE=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/config/AcConstants.ini PYTHON_AUTOCODER_DIR=/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Autocoders/Python /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/env1/bin/python3 /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Autocoders/Python/bin/codegen.py -p /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/Framer --build_root -t /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/Framer/FramerComponentAi.xml

/home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/Framer/FramerComponentImpl.cpp-template: /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/Framer/FramerComponentImpl.hpp-template
	@$(CMAKE_COMMAND) -E touch_nocreate /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/Framer/FramerComponentImpl.cpp-template

Svc_Framer_impl: F-Prime/Svc/Framer/CMakeFiles/Svc_Framer_impl
Svc_Framer_impl: F-Prime/Svc/Framer/FramerComponentAi.xml
Svc_Framer_impl: /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/Framer/FramerComponentImpl.cpp-template
Svc_Framer_impl: /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/Framer/FramerComponentImpl.hpp-template
Svc_Framer_impl: F-Prime/Svc/Framer/CMakeFiles/Svc_Framer_impl.dir/build.make
.PHONY : Svc_Framer_impl

# Rule to build all files generated by this target.
F-Prime/Svc/Framer/CMakeFiles/Svc_Framer_impl.dir/build: Svc_Framer_impl
.PHONY : F-Prime/Svc/Framer/CMakeFiles/Svc_Framer_impl.dir/build

F-Prime/Svc/Framer/CMakeFiles/Svc_Framer_impl.dir/clean:
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/Framer && $(CMAKE_COMMAND) -P CMakeFiles/Svc_Framer_impl.dir/cmake_clean.cmake
.PHONY : F-Prime/Svc/Framer/CMakeFiles/Svc_Framer_impl.dir/clean

F-Prime/Svc/Framer/CMakeFiles/Svc_Framer_impl.dir/depend:
	cd /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/fprime/Svc/Framer /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/Framer /home/toshi/Documents/univ/Lab/fprime/fprime-tutorial-hello-world/build-fprime-automatic-native/F-Prime/Svc/Framer/CMakeFiles/Svc_Framer_impl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : F-Prime/Svc/Framer/CMakeFiles/Svc_Framer_impl.dir/depend

