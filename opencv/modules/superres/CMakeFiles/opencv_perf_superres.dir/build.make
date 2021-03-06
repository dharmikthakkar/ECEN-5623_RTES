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
include modules/superres/CMakeFiles/opencv_perf_superres.dir/depend.make

# Include the progress variables for this target.
include modules/superres/CMakeFiles/opencv_perf_superres.dir/progress.make

# Include the compile flags for this target's objects.
include modules/superres/CMakeFiles/opencv_perf_superres.dir/flags.make

modules/superres/CMakeFiles/opencv_perf_superres.dir/perf/perf_main.cpp.o: modules/superres/CMakeFiles/opencv_perf_superres.dir/flags.make
modules/superres/CMakeFiles/opencv_perf_superres.dir/perf/perf_main.cpp.o: opencv/modules/superres/perf/perf_main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /var/www/yoda/opencv/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/superres/CMakeFiles/opencv_perf_superres.dir/perf/perf_main.cpp.o"
	cd /var/www/yoda/opencv/modules/superres && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -include "/var/www/yoda/opencv/modules/superres/perf_precomp.hpp"  -Winvalid-pch  -o CMakeFiles/opencv_perf_superres.dir/perf/perf_main.cpp.o -c /var/www/yoda/opencv/opencv/modules/superres/perf/perf_main.cpp

modules/superres/CMakeFiles/opencv_perf_superres.dir/perf/perf_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_perf_superres.dir/perf/perf_main.cpp.i"
	cd /var/www/yoda/opencv/modules/superres && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -include "/var/www/yoda/opencv/modules/superres/perf_precomp.hpp"  -Winvalid-pch  -E /var/www/yoda/opencv/opencv/modules/superres/perf/perf_main.cpp > CMakeFiles/opencv_perf_superres.dir/perf/perf_main.cpp.i

modules/superres/CMakeFiles/opencv_perf_superres.dir/perf/perf_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_perf_superres.dir/perf/perf_main.cpp.s"
	cd /var/www/yoda/opencv/modules/superres && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -include "/var/www/yoda/opencv/modules/superres/perf_precomp.hpp"  -Winvalid-pch  -S /var/www/yoda/opencv/opencv/modules/superres/perf/perf_main.cpp -o CMakeFiles/opencv_perf_superres.dir/perf/perf_main.cpp.s

modules/superres/CMakeFiles/opencv_perf_superres.dir/perf/perf_main.cpp.o.requires:
.PHONY : modules/superres/CMakeFiles/opencv_perf_superres.dir/perf/perf_main.cpp.o.requires

modules/superres/CMakeFiles/opencv_perf_superres.dir/perf/perf_main.cpp.o.provides: modules/superres/CMakeFiles/opencv_perf_superres.dir/perf/perf_main.cpp.o.requires
	$(MAKE) -f modules/superres/CMakeFiles/opencv_perf_superres.dir/build.make modules/superres/CMakeFiles/opencv_perf_superres.dir/perf/perf_main.cpp.o.provides.build
.PHONY : modules/superres/CMakeFiles/opencv_perf_superres.dir/perf/perf_main.cpp.o.provides

modules/superres/CMakeFiles/opencv_perf_superres.dir/perf/perf_main.cpp.o.provides.build: modules/superres/CMakeFiles/opencv_perf_superres.dir/perf/perf_main.cpp.o

modules/superres/CMakeFiles/opencv_perf_superres.dir/perf/perf_superres.cpp.o: modules/superres/CMakeFiles/opencv_perf_superres.dir/flags.make
modules/superres/CMakeFiles/opencv_perf_superres.dir/perf/perf_superres.cpp.o: opencv/modules/superres/perf/perf_superres.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /var/www/yoda/opencv/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/superres/CMakeFiles/opencv_perf_superres.dir/perf/perf_superres.cpp.o"
	cd /var/www/yoda/opencv/modules/superres && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -include "/var/www/yoda/opencv/modules/superres/perf_precomp.hpp"  -Winvalid-pch  -o CMakeFiles/opencv_perf_superres.dir/perf/perf_superres.cpp.o -c /var/www/yoda/opencv/opencv/modules/superres/perf/perf_superres.cpp

modules/superres/CMakeFiles/opencv_perf_superres.dir/perf/perf_superres.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_perf_superres.dir/perf/perf_superres.cpp.i"
	cd /var/www/yoda/opencv/modules/superres && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -include "/var/www/yoda/opencv/modules/superres/perf_precomp.hpp"  -Winvalid-pch  -E /var/www/yoda/opencv/opencv/modules/superres/perf/perf_superres.cpp > CMakeFiles/opencv_perf_superres.dir/perf/perf_superres.cpp.i

modules/superres/CMakeFiles/opencv_perf_superres.dir/perf/perf_superres.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_perf_superres.dir/perf/perf_superres.cpp.s"
	cd /var/www/yoda/opencv/modules/superres && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -include "/var/www/yoda/opencv/modules/superres/perf_precomp.hpp"  -Winvalid-pch  -S /var/www/yoda/opencv/opencv/modules/superres/perf/perf_superres.cpp -o CMakeFiles/opencv_perf_superres.dir/perf/perf_superres.cpp.s

modules/superres/CMakeFiles/opencv_perf_superres.dir/perf/perf_superres.cpp.o.requires:
.PHONY : modules/superres/CMakeFiles/opencv_perf_superres.dir/perf/perf_superres.cpp.o.requires

modules/superres/CMakeFiles/opencv_perf_superres.dir/perf/perf_superres.cpp.o.provides: modules/superres/CMakeFiles/opencv_perf_superres.dir/perf/perf_superres.cpp.o.requires
	$(MAKE) -f modules/superres/CMakeFiles/opencv_perf_superres.dir/build.make modules/superres/CMakeFiles/opencv_perf_superres.dir/perf/perf_superres.cpp.o.provides.build
.PHONY : modules/superres/CMakeFiles/opencv_perf_superres.dir/perf/perf_superres.cpp.o.provides

modules/superres/CMakeFiles/opencv_perf_superres.dir/perf/perf_superres.cpp.o.provides.build: modules/superres/CMakeFiles/opencv_perf_superres.dir/perf/perf_superres.cpp.o

# Object files for target opencv_perf_superres
opencv_perf_superres_OBJECTS = \
"CMakeFiles/opencv_perf_superres.dir/perf/perf_main.cpp.o" \
"CMakeFiles/opencv_perf_superres.dir/perf/perf_superres.cpp.o"

# External object files for target opencv_perf_superres
opencv_perf_superres_EXTERNAL_OBJECTS =

bin/opencv_perf_superres: modules/superres/CMakeFiles/opencv_perf_superres.dir/perf/perf_main.cpp.o
bin/opencv_perf_superres: modules/superres/CMakeFiles/opencv_perf_superres.dir/perf/perf_superres.cpp.o
bin/opencv_perf_superres: modules/superres/CMakeFiles/opencv_perf_superres.dir/build.make
bin/opencv_perf_superres: lib/libopencv_ts.a
bin/opencv_perf_superres: lib/libopencv_superres.so.3.2.0
bin/opencv_perf_superres: lib/libopencv_imgcodecs.so.3.2.0
bin/opencv_perf_superres: lib/libopencv_core.so.3.2.0
bin/opencv_perf_superres: lib/libopencv_imgproc.so.3.2.0
bin/opencv_perf_superres: lib/libopencv_video.so.3.2.0
bin/opencv_perf_superres: lib/libopencv_imgcodecs.so.3.2.0
bin/opencv_perf_superres: lib/libopencv_videoio.so.3.2.0
bin/opencv_perf_superres: lib/libopencv_core.so.3.2.0
bin/opencv_perf_superres: lib/libopencv_imgproc.so.3.2.0
bin/opencv_perf_superres: lib/libopencv_imgcodecs.so.3.2.0
bin/opencv_perf_superres: lib/libopencv_videoio.so.3.2.0
bin/opencv_perf_superres: lib/libopencv_highgui.so.3.2.0
bin/opencv_perf_superres: lib/libopencv_core.so.3.2.0
bin/opencv_perf_superres: lib/libopencv_imgproc.so.3.2.0
bin/opencv_perf_superres: lib/libopencv_video.so.3.2.0
bin/opencv_perf_superres: lib/libopencv_imgcodecs.so.3.2.0
bin/opencv_perf_superres: lib/libopencv_videoio.so.3.2.0
bin/opencv_perf_superres: 3rdparty/lib/libtegra_hal.a
bin/opencv_perf_superres: lib/libopencv_imgcodecs.so.3.2.0
bin/opencv_perf_superres: lib/libopencv_imgproc.so.3.2.0
bin/opencv_perf_superres: lib/libopencv_core.so.3.2.0
bin/opencv_perf_superres: modules/superres/CMakeFiles/opencv_perf_superres.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/opencv_perf_superres"
	cd /var/www/yoda/opencv/modules/superres && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_perf_superres.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/superres/CMakeFiles/opencv_perf_superres.dir/build: bin/opencv_perf_superres
.PHONY : modules/superres/CMakeFiles/opencv_perf_superres.dir/build

modules/superres/CMakeFiles/opencv_perf_superres.dir/requires: modules/superres/CMakeFiles/opencv_perf_superres.dir/perf/perf_main.cpp.o.requires
modules/superres/CMakeFiles/opencv_perf_superres.dir/requires: modules/superres/CMakeFiles/opencv_perf_superres.dir/perf/perf_superres.cpp.o.requires
.PHONY : modules/superres/CMakeFiles/opencv_perf_superres.dir/requires

modules/superres/CMakeFiles/opencv_perf_superres.dir/clean:
	cd /var/www/yoda/opencv/modules/superres && $(CMAKE_COMMAND) -P CMakeFiles/opencv_perf_superres.dir/cmake_clean.cmake
.PHONY : modules/superres/CMakeFiles/opencv_perf_superres.dir/clean

modules/superres/CMakeFiles/opencv_perf_superres.dir/depend:
	cd /var/www/yoda/opencv && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /var/www/yoda/opencv/opencv /var/www/yoda/opencv/opencv/modules/superres /var/www/yoda/opencv /var/www/yoda/opencv/modules/superres /var/www/yoda/opencv/modules/superres/CMakeFiles/opencv_perf_superres.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/superres/CMakeFiles/opencv_perf_superres.dir/depend

