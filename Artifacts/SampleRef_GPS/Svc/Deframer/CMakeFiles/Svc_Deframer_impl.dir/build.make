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

# Utility rule file for Svc_Deframer_impl.

# Include any custom commands dependencies for this target.
include F-Prime/Svc/Deframer/CMakeFiles/Svc_Deframer_impl.dir/compiler_depend.make

# Include the progress variables for this target.
include F-Prime/Svc/Deframer/CMakeFiles/Svc_Deframer_impl.dir/progress.make

F-Prime/Svc/Deframer/CMakeFiles/Svc_Deframer_impl: F-Prime/Svc/Deframer/DeframerComponentAi.xml
F-Prime/Svc/Deframer/CMakeFiles/Svc_Deframer_impl: /home/fprime/fprime/Svc/Deframer/DeframerComponentImpl.hpp-template
F-Prime/Svc/Deframer/CMakeFiles/Svc_Deframer_impl: /home/fprime/fprime/Svc/Deframer/DeframerComponentImpl.cpp-template

F-Prime/Svc/Deframer/DeframerComponentAi.xml: /home/fprime/fprime/Svc/Deframer/Deframer.fpp
F-Prime/Svc/Deframer/DeframerComponentAi.xml: lib/Linux/libDrv_ByteStreamDriverModel.a
F-Prime/Svc/Deframer/DeframerComponentAi.xml: lib/Linux/libFw_Cmd.a
F-Prime/Svc/Deframer/DeframerComponentAi.xml: lib/Linux/libFw_Com.a
F-Prime/Svc/Deframer/DeframerComponentAi.xml: lib/Linux/libSvc_Sched.a
F-Prime/Svc/Deframer/DeframerComponentAi.xml: lib/Linux/libOs.a
F-Prime/Svc/Deframer/DeframerComponentAi.xml: lib/Linux/libFw_Comp.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/fprime/fprime/Ref/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating DeframerComponentAi.xml"
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/Deframer && /home/fprime/fprime/Ref/env/bin/fpp-to-xml -d /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/Deframer -i /home/fprime/fprime/Drv/ByteStreamDriverModel/ByteStreamDriverModel.fpp,/home/fprime/fprime/Fw/Buffer/Buffer.fpp,/home/fprime/fprime/Fw/Cmd/Cmd.fpp,/home/fprime/fprime/Fw/Com/Com.fpp,/home/fprime/fprime/Svc/Sched/Sched.fpp,/home/fprime/fprime/config/FpConfig.fpp /home/fprime/fprime/Svc/Deframer/Deframer.fpp -p /home/fprime/fprime

/home/fprime/fprime/Svc/Deframer/DeframerComponentImpl.hpp-template: F-Prime/Svc/Deframer/DeframerComponentAi.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/fprime/fprime/Ref/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating /home/fprime/fprime/Svc/Deframer/DeframerComponentImpl.hpp-template, /home/fprime/fprime/Svc/Deframer/DeframerComponentImpl.cpp-template"
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/Deframer && /snap/cmake/1299/bin/cmake -E env PYTHONPATH=/home/fprime/fprime/Autocoders/Python/src:/home/fprime/fprime/Autocoders/Python/utils BUILD_ROOT=/home/fprime/fprime:/home/fprime/fprime/Ref/build-fprime-automatic-native:/home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime FPRIME_AC_CONSTANTS_FILE=/home/fprime/fprime/config/AcConstants.ini PYTHON_AUTOCODER_DIR=/home/fprime/fprime/Autocoders/Python /home/fprime/fprime/Ref/env/bin/python3 /home/fprime/fprime/Autocoders/Python/bin/codegen.py -p /home/fprime/fprime/Svc/Deframer --build_root -t /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/Deframer/DeframerComponentAi.xml

/home/fprime/fprime/Svc/Deframer/DeframerComponentImpl.cpp-template: /home/fprime/fprime/Svc/Deframer/DeframerComponentImpl.hpp-template
	@$(CMAKE_COMMAND) -E touch_nocreate /home/fprime/fprime/Svc/Deframer/DeframerComponentImpl.cpp-template

Svc_Deframer_impl: F-Prime/Svc/Deframer/CMakeFiles/Svc_Deframer_impl
Svc_Deframer_impl: F-Prime/Svc/Deframer/DeframerComponentAi.xml
Svc_Deframer_impl: /home/fprime/fprime/Svc/Deframer/DeframerComponentImpl.cpp-template
Svc_Deframer_impl: /home/fprime/fprime/Svc/Deframer/DeframerComponentImpl.hpp-template
Svc_Deframer_impl: F-Prime/Svc/Deframer/CMakeFiles/Svc_Deframer_impl.dir/build.make
.PHONY : Svc_Deframer_impl

# Rule to build all files generated by this target.
F-Prime/Svc/Deframer/CMakeFiles/Svc_Deframer_impl.dir/build: Svc_Deframer_impl
.PHONY : F-Prime/Svc/Deframer/CMakeFiles/Svc_Deframer_impl.dir/build

F-Prime/Svc/Deframer/CMakeFiles/Svc_Deframer_impl.dir/clean:
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/Deframer && $(CMAKE_COMMAND) -P CMakeFiles/Svc_Deframer_impl.dir/cmake_clean.cmake
.PHONY : F-Prime/Svc/Deframer/CMakeFiles/Svc_Deframer_impl.dir/clean

F-Prime/Svc/Deframer/CMakeFiles/Svc_Deframer_impl.dir/depend:
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fprime/fprime/Ref /home/fprime/fprime/Svc/Deframer /home/fprime/fprime/Ref/build-fprime-automatic-native /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/Deframer /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/Deframer/CMakeFiles/Svc_Deframer_impl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : F-Prime/Svc/Deframer/CMakeFiles/Svc_Deframer_impl.dir/depend

