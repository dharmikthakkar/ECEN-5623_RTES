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

# Utility rule file for pch_Generate_opencv_perf_calib3d.

# Include the progress variables for this target.
include modules/calib3d/CMakeFiles/pch_Generate_opencv_perf_calib3d.dir/progress.make

modules/calib3d/CMakeFiles/pch_Generate_opencv_perf_calib3d: modules/calib3d/perf_precomp.hpp.gch/opencv_perf_calib3d_Release.gch

modules/calib3d/perf_precomp.hpp.gch/opencv_perf_calib3d_Release.gch: opencv/modules/calib3d/perf/perf_precomp.hpp
modules/calib3d/perf_precomp.hpp.gch/opencv_perf_calib3d_Release.gch: modules/calib3d/perf_precomp.hpp
modules/calib3d/perf_precomp.hpp.gch/opencv_perf_calib3d_Release.gch: lib/libopencv_perf_calib3d_pch_dephelp.a
	$(CMAKE_COMMAND) -E cmake_progress_report /var/www/yoda/opencv/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating perf_precomp.hpp.gch/opencv_perf_calib3d_Release.gch"
	cd /var/www/yoda/opencv/modules/calib3d && /usr/bin/cmake -E make_directory /var/www/yoda/opencv/modules/calib3d/perf_precomp.hpp.gch
	cd /var/www/yoda/opencv/modules/calib3d && /usr/bin/c++ -O3 -DNDEBUG -DNDEBUG "-D__OPENCV_BUILD=1" "-D_USE_MATH_DEFINES" "-D__STDC_CONSTANT_MACROS" "-D__STDC_LIMIT_MACROS" -I"/var/www/yoda/opencv" -I"/var/www/yoda/opencv" -I"/var/www/yoda/opencv" -I"/var/www/yoda/opencv" -I"/var/www/yoda/opencv/opencv/modules/ts/include" -I"/var/www/yoda/opencv/opencv/modules/calib3d/include" -I"/var/www/yoda/opencv/opencv/modules/imgcodecs/include" -I"/var/www/yoda/opencv/opencv/modules/core/include" -I"/var/www/yoda/opencv/opencv/modules/flann/include" -I"/var/www/yoda/opencv/opencv/modules/imgproc/include" -I"/var/www/yoda/opencv/opencv/modules/imgcodecs/include" -I"/var/www/yoda/opencv/opencv/modules/videoio/include" -I"/var/www/yoda/opencv/opencv/modules/highgui/include" -I"/var/www/yoda/opencv/opencv/modules/features2d/include" -I"/var/www/yoda/opencv/opencv/modules/core/include" -I"/var/www/yoda/opencv/opencv/modules/imgproc/include" -I"/var/www/yoda/opencv/opencv/modules/imgcodecs/include" -I"/var/www/yoda/opencv/opencv/modules/videoio/include" -I"/var/www/yoda/opencv/opencv/modules/highgui/include" -I"/var/www/yoda/opencv/opencv/modules/calib3d/perf" -fsigned-char -W -Wall -Werror=return-type -Werror=non-virtual-dtor -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Wundef -Winit-self -Wpointer-arith -Wshadow -Wsign-promo -Wno-narrowing -Wno-delete-non-virtual-dtor -Wno-comment -fdiagnostics-show-option -pthread -fomit-frame-pointer -ffunction-sections -mfp16-format=ieee -fvisibility=hidden -fvisibility-inlines-hidden -x c++-header -o /var/www/yoda/opencv/modules/calib3d/perf_precomp.hpp.gch/opencv_perf_calib3d_Release.gch /var/www/yoda/opencv/modules/calib3d/perf_precomp.hpp

modules/calib3d/perf_precomp.hpp: opencv/modules/calib3d/perf/perf_precomp.hpp
	$(CMAKE_COMMAND) -E cmake_progress_report /var/www/yoda/opencv/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating perf_precomp.hpp"
	cd /var/www/yoda/opencv/modules/calib3d && /usr/bin/cmake -E copy_if_different /var/www/yoda/opencv/opencv/modules/calib3d/perf/perf_precomp.hpp /var/www/yoda/opencv/modules/calib3d/perf_precomp.hpp

pch_Generate_opencv_perf_calib3d: modules/calib3d/CMakeFiles/pch_Generate_opencv_perf_calib3d
pch_Generate_opencv_perf_calib3d: modules/calib3d/perf_precomp.hpp.gch/opencv_perf_calib3d_Release.gch
pch_Generate_opencv_perf_calib3d: modules/calib3d/perf_precomp.hpp
pch_Generate_opencv_perf_calib3d: modules/calib3d/CMakeFiles/pch_Generate_opencv_perf_calib3d.dir/build.make
.PHONY : pch_Generate_opencv_perf_calib3d

# Rule to build all files generated by this target.
modules/calib3d/CMakeFiles/pch_Generate_opencv_perf_calib3d.dir/build: pch_Generate_opencv_perf_calib3d
.PHONY : modules/calib3d/CMakeFiles/pch_Generate_opencv_perf_calib3d.dir/build

modules/calib3d/CMakeFiles/pch_Generate_opencv_perf_calib3d.dir/clean:
	cd /var/www/yoda/opencv/modules/calib3d && $(CMAKE_COMMAND) -P CMakeFiles/pch_Generate_opencv_perf_calib3d.dir/cmake_clean.cmake
.PHONY : modules/calib3d/CMakeFiles/pch_Generate_opencv_perf_calib3d.dir/clean

modules/calib3d/CMakeFiles/pch_Generate_opencv_perf_calib3d.dir/depend:
	cd /var/www/yoda/opencv && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /var/www/yoda/opencv/opencv /var/www/yoda/opencv/opencv/modules/calib3d /var/www/yoda/opencv /var/www/yoda/opencv/modules/calib3d /var/www/yoda/opencv/modules/calib3d/CMakeFiles/pch_Generate_opencv_perf_calib3d.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/calib3d/CMakeFiles/pch_Generate_opencv_perf_calib3d.dir/depend

