# CMake generated Testfile for 
# Source directory: /var/www/yoda/opencv/opencv/modules/flann
# Build directory: /var/www/yoda/opencv/modules/flann
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(opencv_test_flann "/var/www/yoda/opencv/bin/opencv_test_flann" "--gtest_output=xml:opencv_test_flann.xml")
SET_TESTS_PROPERTIES(opencv_test_flann PROPERTIES  LABELS "Main;opencv_flann;Accuracy" WORKING_DIRECTORY "/var/www/yoda/opencv/test-reports/accuracy")
