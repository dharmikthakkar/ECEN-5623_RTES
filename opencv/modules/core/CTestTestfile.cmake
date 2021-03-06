# CMake generated Testfile for 
# Source directory: /var/www/yoda/opencv/opencv/modules/core
# Build directory: /var/www/yoda/opencv/modules/core
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(opencv_test_core "/var/www/yoda/opencv/bin/opencv_test_core" "--gtest_output=xml:opencv_test_core.xml")
SET_TESTS_PROPERTIES(opencv_test_core PROPERTIES  LABELS "Main;opencv_core;Accuracy" WORKING_DIRECTORY "/var/www/yoda/opencv/test-reports/accuracy")
ADD_TEST(opencv_perf_core "/var/www/yoda/opencv/bin/opencv_perf_core" "--gtest_output=xml:opencv_perf_core.xml")
SET_TESTS_PROPERTIES(opencv_perf_core PROPERTIES  LABELS "Main;opencv_core;Performance" WORKING_DIRECTORY "/var/www/yoda/opencv/test-reports/performance")
ADD_TEST(opencv_sanity_core "/var/www/yoda/opencv/bin/opencv_perf_core" "--gtest_output=xml:opencv_perf_core.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
SET_TESTS_PROPERTIES(opencv_sanity_core PROPERTIES  LABELS "Main;opencv_core;Sanity" WORKING_DIRECTORY "/var/www/yoda/opencv/test-reports/sanity")
