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

# Utility rule file for pch_Generate_opencv_video.

# Include the progress variables for this target.
include modules/video/CMakeFiles/pch_Generate_opencv_video.dir/progress.make

modules/video/CMakeFiles/pch_Generate_opencv_video: modules/video/precomp.hpp.gch/opencv_video_Release.gch

modules/video/precomp.hpp.gch/opencv_video_Release.gch: opencv/modules/video/src/precomp.hpp
modules/video/precomp.hpp.gch/opencv_video_Release.gch: modules/video/precomp.hpp
modules/video/precomp.hpp.gch/opencv_video_Release.gch: lib/libopencv_video_pch_dephelp.a
	$(CMAKE_COMMAND) -E cmake_progress_report /var/www/yoda/opencv/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating precomp.hpp.gch/opencv_video_Release.gch"
	cd /var/www/yoda/opencv/modules/video && /usr/bin/cmake -E make_directory /var/www/yoda/opencv/modules/video/precomp.hpp.gch
	cd /var/www/yoda/opencv/modules/video && /usr/bin/c++ -O3 -DNDEBUG -DNDEBUG -fPIC "-D__OPENCV_BUILD=1" "-D_USE_MATH_DEFINES" "-D__STDC_CONSTANT_MACROS" "-D__STDC_LIMIT_MACROS" -I"/var/www/yoda/opencv" -I"/var/www/yoda/opencv" -I"/var/www/yoda/opencv" -I"/var/www/yoda/opencv" -I"/var/www/yoda/opencv/opencv/modules/video/include" -I"/var/www/yoda/opencv/opencv/modules/video/src" -I"/var/www/yoda/opencv/modules/video" -I"/var/www/yoda/opencv/opencv/modules/core/include" -I"/var/www/yoda/opencv/opencv/modules/imgproc/include" -fsigned-char -W -Wall -Werror=return-type -Werror=non-virtual-dtor -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Wundef -Winit-self -Wpointer-arith -Wshadow -Wsign-promo -Wno-narrowing -Wno-delete-non-virtual-dtor -Wno-comment -fdiagnostics-show-option -pthread -fomit-frame-pointer -ffunction-sections -mfp16-format=ieee -fvisibility=hidden -fvisibility-inlines-hidden -DCVAPI_EXPORTS -x c++-header -o /var/www/yoda/opencv/modules/video/precomp.hpp.gch/opencv_video_Release.gch /var/www/yoda/opencv/modules/video/precomp.hpp

modules/video/precomp.hpp: opencv/modules/video/src/precomp.hpp
	$(CMAKE_COMMAND) -E cmake_progress_report /var/www/yoda/opencv/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating precomp.hpp"
	cd /var/www/yoda/opencv/modules/video && /usr/bin/cmake -E copy_if_different /var/www/yoda/opencv/opencv/modules/video/src/precomp.hpp /var/www/yoda/opencv/modules/video/precomp.hpp

pch_Generate_opencv_video: modules/video/CMakeFiles/pch_Generate_opencv_video
pch_Generate_opencv_video: modules/video/precomp.hpp.gch/opencv_video_Release.gch
pch_Generate_opencv_video: modules/video/precomp.hpp
pch_Generate_opencv_video: modules/video/CMakeFiles/pch_Generate_opencv_video.dir/build.make
.PHONY : pch_Generate_opencv_video

# Rule to build all files generated by this target.
modules/video/CMakeFiles/pch_Generate_opencv_video.dir/build: pch_Generate_opencv_video
.PHONY : modules/video/CMakeFiles/pch_Generate_opencv_video.dir/build

modules/video/CMakeFiles/pch_Generate_opencv_video.dir/clean:
	cd /var/www/yoda/opencv/modules/video && $(CMAKE_COMMAND) -P CMakeFiles/pch_Generate_opencv_video.dir/cmake_clean.cmake
.PHONY : modules/video/CMakeFiles/pch_Generate_opencv_video.dir/clean

modules/video/CMakeFiles/pch_Generate_opencv_video.dir/depend:
	cd /var/www/yoda/opencv && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /var/www/yoda/opencv/opencv /var/www/yoda/opencv/opencv/modules/video /var/www/yoda/opencv /var/www/yoda/opencv/modules/video /var/www/yoda/opencv/modules/video/CMakeFiles/pch_Generate_opencv_video.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/video/CMakeFiles/pch_Generate_opencv_video.dir/depend

