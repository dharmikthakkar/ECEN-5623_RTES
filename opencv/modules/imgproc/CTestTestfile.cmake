# CMake generated Testfile for 
# Source directory: /var/www/yoda/opencv/opencv/modules/imgproc
# Build directory: /var/www/yoda/opencv/modules/imgproc
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(opencv_test_imgproc "/var/www/yoda/opencv/bin/opencv_test_imgproc" "--gtest_output=xml:opencv_test_imgproc.xml")
SET_TESTS_PROPERTIES(opencv_test_imgproc PROPERTIES  LABELS "Main;opencv_imgproc;Accuracy" WORKING_DIRECTORY "/var/www/yoda/opencv/test-reports/accuracy")
ADD_TEST(opencv_perf_imgproc "/var/www/yoda/opencv/bin/opencv_perf_imgproc" "--gtest_output=xml:opencv_perf_imgproc.xml")
SET_TESTS_PROPERTIES(opencv_perf_imgproc PROPERTIES  LABELS "Main;opencv_imgproc;Performance" WORKING_DIRECTORY "/var/www/yoda/opencv/test-reports/performance")
ADD_TEST(opencv_sanity_imgproc "/var/www/yoda/opencv/bin/opencv_perf_imgproc" "--gtest_output=xml:opencv_perf_imgproc.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
SET_TESTS_PROPERTIES(opencv_sanity_imgproc PROPERTIES  LABELS "Main;opencv_imgproc;Sanity" WORKING_DIRECTORY "/var/www/yoda/opencv/test-reports/sanity")
