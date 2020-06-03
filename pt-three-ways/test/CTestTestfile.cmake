# CMake generated Testfile for 
# Source directory: /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test
# Build directory: /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(seed_tests "bash" "-c" "/Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/seed_tests.sh /Users/sebastianx/Testing/C++/Misc/pt-three-ways/bin/pt_three_ways /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test")
set_tests_properties(seed_tests PROPERTIES  WORKING_DIRECTORY "/Users/sebastianx/Testing/C++/Misc/pt-three-ways" _BACKTRACE_TRIPLES "/Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/CMakeLists.txt;7;add_test;/Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/CMakeLists.txt;0;")
subdirs("math")
subdirs("oo")
subdirs("fp")
subdirs("dod")
subdirs("util")
