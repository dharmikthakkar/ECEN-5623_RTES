# CMake generated Testfile for 
# Source directory: /var/www/yoda/opencv/opencv/modules/ml
# Build directory: /var/www/yoda/opencv/modules/ml
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(opencv_test_ml "/var/www/yoda/opencv/bin/opencv_test_ml" "--gtest_output=xml:opencv_test_ml.xml")
SET_TESTS_PROPERTIES(opencv_test_ml PROPERTIES  LABELS "Main;opencv_ml;Accuracy" WORKING_DIRECTORY "/var/www/yoda/opencv/test-reports/accuracy")
