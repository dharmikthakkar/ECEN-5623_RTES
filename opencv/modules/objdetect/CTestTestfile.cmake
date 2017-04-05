# CMake generated Testfile for 
# Source directory: /var/www/yoda/opencv/opencv/modules/objdetect
# Build directory: /var/www/yoda/opencv/modules/objdetect
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(opencv_test_objdetect "/var/www/yoda/opencv/bin/opencv_test_objdetect" "--gtest_output=xml:opencv_test_objdetect.xml")
SET_TESTS_PROPERTIES(opencv_test_objdetect PROPERTIES  LABELS "Main;opencv_objdetect;Accuracy" WORKING_DIRECTORY "/var/www/yoda/opencv/test-reports/accuracy")
ADD_TEST(opencv_perf_objdetect "/var/www/yoda/opencv/bin/opencv_perf_objdetect" "--gtest_output=xml:opencv_perf_objdetect.xml")
SET_TESTS_PROPERTIES(opencv_perf_objdetect PROPERTIES  LABELS "Main;opencv_objdetect;Performance" WORKING_DIRECTORY "/var/www/yoda/opencv/test-reports/performance")
ADD_TEST(opencv_sanity_objdetect "/var/www/yoda/opencv/bin/opencv_perf_objdetect" "--gtest_output=xml:opencv_perf_objdetect.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
SET_TESTS_PROPERTIES(opencv_sanity_objdetect PROPERTIES  LABELS "Main;opencv_objdetect;Sanity" WORKING_DIRECTORY "/var/www/yoda/opencv/test-reports/sanity")
