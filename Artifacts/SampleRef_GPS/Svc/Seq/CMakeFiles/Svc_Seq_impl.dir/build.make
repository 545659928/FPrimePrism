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

# Utility rule file for Svc_Seq_impl.

# Include any custom commands dependencies for this target.
include F-Prime/Svc/Seq/CMakeFiles/Svc_Seq_impl.dir/compiler_depend.make

# Include the progress variables for this target.
include F-Prime/Svc/Seq/CMakeFiles/Svc_Seq_impl.dir/progress.make

F-Prime/Svc/Seq/CMakeFiles/Svc_Seq_impl: F-Prime/Svc/Seq/CmdSeqCancelPortAi.xml
F-Prime/Svc/Seq/CMakeFiles/Svc_Seq_impl: F-Prime/Svc/Seq/CmdSeqInPortAi.xml
F-Prime/Svc/Seq/CMakeFiles/Svc_Seq_impl: F-Prime/Svc/Seq/CmdSeqCancelPortAc.cpp
F-Prime/Svc/Seq/CMakeFiles/Svc_Seq_impl: F-Prime/Svc/Seq/CmdSeqCancelPortAc.hpp
F-Prime/Svc/Seq/CMakeFiles/Svc_Seq_impl: F-Prime/Svc/Seq/CmdSeqInPortAc.cpp
F-Prime/Svc/Seq/CMakeFiles/Svc_Seq_impl: F-Prime/Svc/Seq/CmdSeqInPortAc.hpp

F-Prime/Svc/Seq/CmdSeqCancelPortAc.cpp: /home/fprime/fprime/Svc/Seq/Seq.fpp
F-Prime/Svc/Seq/CmdSeqCancelPortAc.cpp: lib/Linux/libFw_Types.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/fprime/fprime/Ref/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating CmdSeqCancelPortAc.cpp, CmdSeqCancelPortAc.hpp, CmdSeqInPortAc.cpp, CmdSeqInPortAc.hpp"
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/Seq && /home/fprime/fprime/Ref/env/bin/fpp-to-cpp -d /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/Seq -i /home/fprime/fprime/Fw/Types/Types.fpp /home/fprime/fprime/Svc/Seq/Seq.fpp -p /home/fprime/fprime,/home/fprime/fprime/Ref/build-fprime-automatic-native

F-Prime/Svc/Seq/CmdSeqCancelPortAc.hpp: F-Prime/Svc/Seq/CmdSeqCancelPortAc.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate F-Prime/Svc/Seq/CmdSeqCancelPortAc.hpp

F-Prime/Svc/Seq/CmdSeqInPortAc.cpp: F-Prime/Svc/Seq/CmdSeqCancelPortAc.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate F-Prime/Svc/Seq/CmdSeqInPortAc.cpp

F-Prime/Svc/Seq/CmdSeqInPortAc.hpp: F-Prime/Svc/Seq/CmdSeqCancelPortAc.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate F-Prime/Svc/Seq/CmdSeqInPortAc.hpp

F-Prime/Svc/Seq/CmdSeqCancelPortAi.xml: /home/fprime/fprime/Svc/Seq/Seq.fpp
F-Prime/Svc/Seq/CmdSeqCancelPortAi.xml: lib/Linux/libFw_Types.a
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/fprime/fprime/Ref/build-fprime-automatic-native/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating CmdSeqCancelPortAi.xml, CmdSeqInPortAi.xml"
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/Seq && /home/fprime/fprime/Ref/env/bin/fpp-to-xml -d /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/Seq -i /home/fprime/fprime/Fw/Types/Types.fpp /home/fprime/fprime/Svc/Seq/Seq.fpp -p /home/fprime/fprime

F-Prime/Svc/Seq/CmdSeqInPortAi.xml: F-Prime/Svc/Seq/CmdSeqCancelPortAi.xml
	@$(CMAKE_COMMAND) -E touch_nocreate F-Prime/Svc/Seq/CmdSeqInPortAi.xml

Svc_Seq_impl: F-Prime/Svc/Seq/CMakeFiles/Svc_Seq_impl
Svc_Seq_impl: F-Prime/Svc/Seq/CmdSeqCancelPortAc.cpp
Svc_Seq_impl: F-Prime/Svc/Seq/CmdSeqCancelPortAc.hpp
Svc_Seq_impl: F-Prime/Svc/Seq/CmdSeqCancelPortAi.xml
Svc_Seq_impl: F-Prime/Svc/Seq/CmdSeqInPortAc.cpp
Svc_Seq_impl: F-Prime/Svc/Seq/CmdSeqInPortAc.hpp
Svc_Seq_impl: F-Prime/Svc/Seq/CmdSeqInPortAi.xml
Svc_Seq_impl: F-Prime/Svc/Seq/CMakeFiles/Svc_Seq_impl.dir/build.make
.PHONY : Svc_Seq_impl

# Rule to build all files generated by this target.
F-Prime/Svc/Seq/CMakeFiles/Svc_Seq_impl.dir/build: Svc_Seq_impl
.PHONY : F-Prime/Svc/Seq/CMakeFiles/Svc_Seq_impl.dir/build

F-Prime/Svc/Seq/CMakeFiles/Svc_Seq_impl.dir/clean:
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/Seq && $(CMAKE_COMMAND) -P CMakeFiles/Svc_Seq_impl.dir/cmake_clean.cmake
.PHONY : F-Prime/Svc/Seq/CMakeFiles/Svc_Seq_impl.dir/clean

F-Prime/Svc/Seq/CMakeFiles/Svc_Seq_impl.dir/depend:
	cd /home/fprime/fprime/Ref/build-fprime-automatic-native && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fprime/fprime/Ref /home/fprime/fprime/Svc/Seq /home/fprime/fprime/Ref/build-fprime-automatic-native /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/Seq /home/fprime/fprime/Ref/build-fprime-automatic-native/F-Prime/Svc/Seq/CMakeFiles/Svc_Seq_impl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : F-Prime/Svc/Seq/CMakeFiles/Svc_Seq_impl.dir/depend

