# CMake generated Testfile for 
# Source directory: /Volumes/Lexar/cgal-playground/examples/ex1
# Build directory: /Volumes/Lexar/cgal-playground/examples/ex1
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(compilation_of__ex1 "/opt/local/bin/cmake" "--build" "/Volumes/Lexar/cgal-playground/examples/ex1" "--target" "ex1")
set_tests_properties(compilation_of__ex1 PROPERTIES  FIXTURES_SETUP "ex1" LABELS "ex1")
add_test(execution___of__ex1 "/Volumes/Lexar/cgal-playground/examples/ex1/ex1")
set_tests_properties(execution___of__ex1 PROPERTIES  DEPENDS "compilation_of__ex1" FIXTURES_REQUIRED "ex1;ex1" LABELS "ex1" WORKING_DIRECTORY "/Volumes/Lexar/cgal-playground/examples/ex1/__exec_test_dir")
add_test(ex1_SetupFixture "/opt/local/bin/cmake" "-E" "copy_directory" "/Volumes/Lexar/cgal-playground/examples/ex1" "/Volumes/Lexar/cgal-playground/examples/ex1/__exec_test_dir")
set_tests_properties(ex1_SetupFixture PROPERTIES  FIXTURES_SETUP "ex1" LABELS "ex1")
add_test(ex1_CleanupFixture "/opt/local/bin/cmake" "-E" "remove_directory" "/Volumes/Lexar/cgal-playground/examples/ex1/__exec_test_dir")
set_tests_properties(ex1_CleanupFixture PROPERTIES  FIXTURES_CLEANUP "ex1" LABELS "ex1")
