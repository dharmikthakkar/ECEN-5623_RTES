# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /var/www/yoda/opencv/opencv

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /var/www/yoda/opencv

# Include any dependencies generated for this target.
include modules/videoio/CMakeFiles/opencv_test_videoio.dir/depend.make

# Include the progress variables for this target.
include modules/videoio/CMakeFiles/opencv_test_videoio.dir/progress.make

# Include the compile flags for this target's objects.
include modules/videoio/CMakeFiles/opencv_test_videoio.dir/flags.make

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.o: modules/videoio/CMakeFiles/opencv_test_videoio.dir/flags.make
modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.o: opencv/modules/videoio/test/test_video_io.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /var/www/yoda/opencv/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.o"
	cd /var/www/yoda/opencv/modules/videoio && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -include "/var/www/yoda/opencv/modules/videoio/test_precomp.hpp"  -Winvalid-pch  -o CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.o -c /var/www/yoda/opencv/opencv/modules/videoio/test/test_video_io.cpp

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.i"
	cd /var/www/yoda/opencv/modules/videoio && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -include "/var/www/yoda/opencv/modules/videoio/test_precomp.hpp"  -Winvalid-pch  -E /var/www/yoda/opencv/opencv/modules/videoio/test/test_video_io.cpp > CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.i

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.s"
	cd /var/www/yoda/opencv/modules/videoio && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -include "/var/www/yoda/opencv/modules/videoio/test_precomp.hpp"  -Winvalid-pch  -S /var/www/yoda/opencv/opencv/modules/videoio/test/test_video_io.cpp -o CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.s

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.o.requires:
.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.o.requires

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.o.provides: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.o.requires
	$(MAKE) -f modules/videoio/CMakeFiles/opencv_test_videoio.dir/build.make modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.o.provides.build
.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.o.provides

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.o.provides.build: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.o

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_pos.cpp.o: modules/videoio/CMakeFiles/opencv_test_videoio.dir/flags.make
modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_pos.cpp.o: opencv/modules/videoio/test/test_video_pos.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /var/www/yoda/opencv/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_pos.cpp.o"
	cd /var/www/yoda/opencv/modules/videoio && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -include "/var/www/yoda/opencv/modules/videoio/test_precomp.hpp"  -Winvalid-pch  -o CMakeFiles/opencv_test_videoio.dir/test/test_video_pos.cpp.o -c /var/www/yoda/opencv/opencv/modules/videoio/test/test_video_pos.cpp

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_pos.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_videoio.dir/test/test_video_pos.cpp.i"
	cd /var/www/yoda/opencv/modules/videoio && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -include "/var/www/yoda/opencv/modules/videoio/test_precomp.hpp"  -Winvalid-pch  -E /var/www/yoda/opencv/opencv/modules/videoio/test/test_video_pos.cpp > CMakeFiles/opencv_test_videoio.dir/test/test_video_pos.cpp.i

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_pos.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_videoio.dir/test/test_video_pos.cpp.s"
	cd /var/www/yoda/opencv/modules/videoio && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -include "/var/www/yoda/opencv/modules/videoio/test_precomp.hpp"  -Winvalid-pch  -S /var/www/yoda/opencv/opencv/modules/videoio/test/test_video_pos.cpp -o CMakeFiles/opencv_test_videoio.dir/test/test_video_pos.cpp.s

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_pos.cpp.o.requires:
.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_pos.cpp.o.requires

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_pos.cpp.o.provides: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_pos.cpp.o.requires
	$(MAKE) -f modules/videoio/CMakeFiles/opencv_test_videoio.dir/build.make modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_pos.cpp.o.provides.build
.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_pos.cpp.o.provides

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_pos.cpp.o.provides.build: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_pos.cpp.o

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_positioning.cpp.o: modules/videoio/CMakeFiles/opencv_test_videoio.dir/flags.make
modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_positioning.cpp.o: opencv/modules/videoio/test/test_positioning.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /var/www/yoda/opencv/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_positioning.cpp.o"
	cd /var/www/yoda/opencv/modules/videoio && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -include "/var/www/yoda/opencv/modules/videoio/test_precomp.hpp"  -Winvalid-pch  -o CMakeFiles/opencv_test_videoio.dir/test/test_positioning.cpp.o -c /var/www/yoda/opencv/opencv/modules/videoio/test/test_positioning.cpp

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_positioning.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_videoio.dir/test/test_positioning.cpp.i"
	cd /var/www/yoda/opencv/modules/videoio && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -include "/var/www/yoda/opencv/modules/videoio/test_precomp.hpp"  -Winvalid-pch  -E /var/www/yoda/opencv/opencv/modules/videoio/test/test_positioning.cpp > CMakeFiles/opencv_test_videoio.dir/test/test_positioning.cpp.i

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_positioning.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_videoio.dir/test/test_positioning.cpp.s"
	cd /var/www/yoda/opencv/modules/videoio && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -include "/var/www/yoda/opencv/modules/videoio/test_precomp.hpp"  -Winvalid-pch  -S /var/www/yoda/opencv/opencv/modules/videoio/test/test_positioning.cpp -o CMakeFiles/opencv_test_videoio.dir/test/test_positioning.cpp.s

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_positioning.cpp.o.requires:
.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_positioning.cpp.o.requires

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_positioning.cpp.o.provides: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_positioning.cpp.o.requires
	$(MAKE) -f modules/videoio/CMakeFiles/opencv_test_videoio.dir/build.make modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_positioning.cpp.o.provides.build
.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_positioning.cpp.o.provides

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_positioning.cpp.o.provides.build: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_positioning.cpp.o

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.o: modules/videoio/CMakeFiles/opencv_test_videoio.dir/flags.make
modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.o: opencv/modules/videoio/test/test_fourcc.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /var/www/yoda/opencv/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.o"
	cd /var/www/yoda/opencv/modules/videoio && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -include "/var/www/yoda/opencv/modules/videoio/test_precomp.hpp"  -Winvalid-pch  -o CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.o -c /var/www/yoda/opencv/opencv/modules/videoio/test/test_fourcc.cpp

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.i"
	cd /var/www/yoda/opencv/modules/videoio && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -include "/var/www/yoda/opencv/modules/videoio/test_precomp.hpp"  -Winvalid-pch  -E /var/www/yoda/opencv/opencv/modules/videoio/test/test_fourcc.cpp > CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.i

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.s"
	cd /var/www/yoda/opencv/modules/videoio && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -include "/var/www/yoda/opencv/modules/videoio/test_precomp.hpp"  -Winvalid-pch  -S /var/www/yoda/opencv/opencv/modules/videoio/test/test_fourcc.cpp -o CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.s

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.o.requires:
.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.o.requires

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.o.provides: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.o.requires
	$(MAKE) -f modules/videoio/CMakeFiles/opencv_test_videoio.dir/build.make modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.o.provides.build
.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.o.provides

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.o.provides.build: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.o

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.o: modules/videoio/CMakeFiles/opencv_test_videoio.dir/flags.make
modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.o: opencv/modules/videoio/test/test_ffmpeg.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /var/www/yoda/opencv/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.o"
	cd /var/www/yoda/opencv/modules/videoio && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -include "/var/www/yoda/opencv/modules/videoio/test_precomp.hpp"  -Winvalid-pch  -o CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.o -c /var/www/yoda/opencv/opencv/modules/videoio/test/test_ffmpeg.cpp

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.i"
	cd /var/www/yoda/opencv/modules/videoio && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -include "/var/www/yoda/opencv/modules/videoio/test_precomp.hpp"  -Winvalid-pch  -E /var/www/yoda/opencv/opencv/modules/videoio/test/test_ffmpeg.cpp > CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.i

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.s"
	cd /var/www/yoda/opencv/modules/videoio && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -include "/var/www/yoda/opencv/modules/videoio/test_precomp.hpp"  -Winvalid-pch  -S /var/www/yoda/opencv/opencv/modules/videoio/test/test_ffmpeg.cpp -o CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.s

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.o.requires:
.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.o.requires

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.o.provides: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.o.requires
	$(MAKE) -f modules/videoio/CMakeFiles/opencv_test_videoio.dir/build.make modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.o.provides.build
.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.o.provides

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.o.provides.build: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.o

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_basic_props.cpp.o: modules/videoio/CMakeFiles/opencv_test_videoio.dir/flags.make
modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_basic_props.cpp.o: opencv/modules/videoio/test/test_basic_props.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /var/www/yoda/opencv/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_basic_props.cpp.o"
	cd /var/www/yoda/opencv/modules/videoio && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -include "/var/www/yoda/opencv/modules/videoio/test_precomp.hpp"  -Winvalid-pch  -o CMakeFiles/opencv_test_videoio.dir/test/test_basic_props.cpp.o -c /var/www/yoda/opencv/opencv/modules/videoio/test/test_basic_props.cpp

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_basic_props.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_videoio.dir/test/test_basic_props.cpp.i"
	cd /var/www/yoda/opencv/modules/videoio && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -include "/var/www/yoda/opencv/modules/videoio/test_precomp.hpp"  -Winvalid-pch  -E /var/www/yoda/opencv/opencv/modules/videoio/test/test_basic_props.cpp > CMakeFiles/opencv_test_videoio.dir/test/test_basic_props.cpp.i

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_basic_props.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_videoio.dir/test/test_basic_props.cpp.s"
	cd /var/www/yoda/opencv/modules/videoio && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -include "/var/www/yoda/opencv/modules/videoio/test_precomp.hpp"  -Winvalid-pch  -S /var/www/yoda/opencv/opencv/modules/videoio/test/test_basic_props.cpp -o CMakeFiles/opencv_test_videoio.dir/test/test_basic_props.cpp.s

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_basic_props.cpp.o.requires:
.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_basic_props.cpp.o.requires

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_basic_props.cpp.o.provides: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_basic_props.cpp.o.requires
	$(MAKE) -f modules/videoio/CMakeFiles/opencv_test_videoio.dir/build.make modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_basic_props.cpp.o.provides.build
.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_basic_props.cpp.o.provides

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_basic_props.cpp.o.provides.build: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_basic_props.cpp.o

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.o: modules/videoio/CMakeFiles/opencv_test_videoio.dir/flags.make
modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.o: opencv/modules/videoio/test/test_main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /var/www/yoda/opencv/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.o"
	cd /var/www/yoda/opencv/modules/videoio && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -include "/var/www/yoda/opencv/modules/videoio/test_precomp.hpp"  -Winvalid-pch  -o CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.o -c /var/www/yoda/opencv/opencv/modules/videoio/test/test_main.cpp

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.i"
	cd /var/www/yoda/opencv/modules/videoio && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -include "/var/www/yoda/opencv/modules/videoio/test_precomp.hpp"  -Winvalid-pch  -E /var/www/yoda/opencv/opencv/modules/videoio/test/test_main.cpp > CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.i

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.s"
	cd /var/www/yoda/opencv/modules/videoio && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -include "/var/www/yoda/opencv/modules/videoio/test_precomp.hpp"  -Winvalid-pch  -S /var/www/yoda/opencv/opencv/modules/videoio/test/test_main.cpp -o CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.s

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.o.requires:
.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.o.requires

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.o.provides: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.o.requires
	$(MAKE) -f modules/videoio/CMakeFiles/opencv_test_videoio.dir/build.make modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.o.provides.build
.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.o.provides

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.o.provides.build: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.o

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_framecount.cpp.o: modules/videoio/CMakeFiles/opencv_test_videoio.dir/flags.make
modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_framecount.cpp.o: opencv/modules/videoio/test/test_framecount.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /var/www/yoda/opencv/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_framecount.cpp.o"
	cd /var/www/yoda/opencv/modules/videoio && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -include "/var/www/yoda/opencv/modules/videoio/test_precomp.hpp"  -Winvalid-pch  -o CMakeFiles/opencv_test_videoio.dir/test/test_framecount.cpp.o -c /var/www/yoda/opencv/opencv/modules/videoio/test/test_framecount.cpp

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_framecount.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_test_videoio.dir/test/test_framecount.cpp.i"
	cd /var/www/yoda/opencv/modules/videoio && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -include "/var/www/yoda/opencv/modules/videoio/test_precomp.hpp"  -Winvalid-pch  -E /var/www/yoda/opencv/opencv/modules/videoio/test/test_framecount.cpp > CMakeFiles/opencv_test_videoio.dir/test/test_framecount.cpp.i

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_framecount.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_test_videoio.dir/test/test_framecount.cpp.s"
	cd /var/www/yoda/opencv/modules/videoio && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -include "/var/www/yoda/opencv/modules/videoio/test_precomp.hpp"  -Winvalid-pch  -S /var/www/yoda/opencv/opencv/modules/videoio/test/test_framecount.cpp -o CMakeFiles/opencv_test_videoio.dir/test/test_framecount.cpp.s

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_framecount.cpp.o.requires:
.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_framecount.cpp.o.requires

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_framecount.cpp.o.provides: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_framecount.cpp.o.requires
	$(MAKE) -f modules/videoio/CMakeFiles/opencv_test_videoio.dir/build.make modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_framecount.cpp.o.provides.build
.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_framecount.cpp.o.provides

modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_framecount.cpp.o.provides.build: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_framecount.cpp.o

# Object files for target opencv_test_videoio
opencv_test_videoio_OBJECTS = \
"CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.o" \
"CMakeFiles/opencv_test_videoio.dir/test/test_video_pos.cpp.o" \
"CMakeFiles/opencv_test_videoio.dir/test/test_positioning.cpp.o" \
"CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.o" \
"CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.o" \
"CMakeFiles/opencv_test_videoio.dir/test/test_basic_props.cpp.o" \
"CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.o" \
"CMakeFiles/opencv_test_videoio.dir/test/test_framecount.cpp.o"

# External object files for target opencv_test_videoio
opencv_test_videoio_EXTERNAL_OBJECTS =

bin/opencv_test_videoio: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.o
bin/opencv_test_videoio: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_pos.cpp.o
bin/opencv_test_videoio: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_positioning.cpp.o
bin/opencv_test_videoio: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.o
bin/opencv_test_videoio: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.o
bin/opencv_test_videoio: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_basic_props.cpp.o
bin/opencv_test_videoio: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.o
bin/opencv_test_videoio: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_framecount.cpp.o
bin/opencv_test_videoio: modules/videoio/CMakeFiles/opencv_test_videoio.dir/build.make
bin/opencv_test_videoio: lib/libopencv_ts.a
bin/opencv_test_videoio: lib/libopencv_videoio.so.3.2.0
bin/opencv_test_videoio: lib/libopencv_imgcodecs.so.3.2.0
bin/opencv_test_videoio: lib/libopencv_videoio.so.3.2.0
bin/opencv_test_videoio: lib/libopencv_core.so.3.2.0
bin/opencv_test_videoio: lib/libopencv_imgproc.so.3.2.0
bin/opencv_test_videoio: lib/libopencv_imgcodecs.so.3.2.0
bin/opencv_test_videoio: lib/libopencv_core.so.3.2.0
bin/opencv_test_videoio: lib/libopencv_imgproc.so.3.2.0
bin/opencv_test_videoio: lib/libopencv_imgcodecs.so.3.2.0
bin/opencv_test_videoio: lib/libopencv_videoio.so.3.2.0
bin/opencv_test_videoio: lib/libopencv_highgui.so.3.2.0
bin/opencv_test_videoio: lib/libopencv_core.so.3.2.0
bin/opencv_test_videoio: lib/libopencv_imgproc.so.3.2.0
bin/opencv_test_videoio: lib/libopencv_imgcodecs.so.3.2.0
bin/opencv_test_videoio: lib/libopencv_videoio.so.3.2.0
bin/opencv_test_videoio: lib/libopencv_imgcodecs.so.3.2.0
bin/opencv_test_videoio: lib/libopencv_imgproc.so.3.2.0
bin/opencv_test_videoio: lib/libopencv_core.so.3.2.0
bin/opencv_test_videoio: 3rdparty/lib/libtegra_hal.a
bin/opencv_test_videoio: modules/videoio/CMakeFiles/opencv_test_videoio.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/opencv_test_videoio"
	cd /var/www/yoda/opencv/modules/videoio && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_test_videoio.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/videoio/CMakeFiles/opencv_test_videoio.dir/build: bin/opencv_test_videoio
.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/build

modules/videoio/CMakeFiles/opencv_test_videoio.dir/requires: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_io.cpp.o.requires
modules/videoio/CMakeFiles/opencv_test_videoio.dir/requires: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_video_pos.cpp.o.requires
modules/videoio/CMakeFiles/opencv_test_videoio.dir/requires: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_positioning.cpp.o.requires
modules/videoio/CMakeFiles/opencv_test_videoio.dir/requires: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_fourcc.cpp.o.requires
modules/videoio/CMakeFiles/opencv_test_videoio.dir/requires: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_ffmpeg.cpp.o.requires
modules/videoio/CMakeFiles/opencv_test_videoio.dir/requires: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_basic_props.cpp.o.requires
modules/videoio/CMakeFiles/opencv_test_videoio.dir/requires: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_main.cpp.o.requires
modules/videoio/CMakeFiles/opencv_test_videoio.dir/requires: modules/videoio/CMakeFiles/opencv_test_videoio.dir/test/test_framecount.cpp.o.requires
.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/requires

modules/videoio/CMakeFiles/opencv_test_videoio.dir/clean:
	cd /var/www/yoda/opencv/modules/videoio && $(CMAKE_COMMAND) -P CMakeFiles/opencv_test_videoio.dir/cmake_clean.cmake
.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/clean

modules/videoio/CMakeFiles/opencv_test_videoio.dir/depend:
	cd /var/www/yoda/opencv && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /var/www/yoda/opencv/opencv /var/www/yoda/opencv/opencv/modules/videoio /var/www/yoda/opencv /var/www/yoda/opencv/modules/videoio /var/www/yoda/opencv/modules/videoio/CMakeFiles/opencv_test_videoio.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/videoio/CMakeFiles/opencv_test_videoio.dir/depend

