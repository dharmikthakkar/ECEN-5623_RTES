# CMake generated Testfile for 
# Source directory: /var/www/yoda/opencv/opencv/modules/highgui
# Build directory: /var/www/yoda/opencv/modules/highgui
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
ADD_TEST(opencv_test_highgui "/var/www/yoda/opencv/bin/opencv_test_highgui" "--gtest_output=xml:opencv_test_highgui.xml")
SET_TESTS_PROPERTIES(opencv_test_highgui PROPERTIES  LABELS "Main;opencv_highgui;Accuracy" WORKING_DIRECTORY "/var/www/yoda/opencv/test-reports/accuracy")
