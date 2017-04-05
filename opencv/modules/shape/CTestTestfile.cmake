# CMake generated Testfile for 
# Source directory: /var/www/yoda/opencv/opencv/modules/shape
# Build directory: /var/www/yoda/opencv/modules/shape
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(opencv_test_shape "/var/www/yoda/opencv/bin/opencv_test_shape" "--gtest_output=xml:opencv_test_shape.xml")
SET_TESTS_PROPERTIES(opencv_test_shape PROPERTIES  LABELS "Main;opencv_shape;Accuracy" WORKING_DIRECTORY "/var/www/yoda/opencv/test-reports/accuracy")
