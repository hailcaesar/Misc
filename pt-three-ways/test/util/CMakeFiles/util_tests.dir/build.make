# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.17.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.17.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/sebastianx/Testing/C++/Misc/pt-three-ways

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/sebastianx/Testing/C++/Misc/pt-three-ways

# Include any dependencies generated for this target.
include test/util/CMakeFiles/util_tests.dir/depend.make

# Include the progress variables for this target.
include test/util/CMakeFiles/util_tests.dir/progress.make

# Include the compile flags for this target's objects.
include test/util/CMakeFiles/util_tests.dir/flags.make

test/util/CMakeFiles/util_tests.dir/util_tests.cpp.o: test/util/CMakeFiles/util_tests.dir/flags.make
test/util/CMakeFiles/util_tests.dir/util_tests.cpp.o: test/util/util_tests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sebastianx/Testing/C++/Misc/pt-three-ways/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/util/CMakeFiles/util_tests.dir/util_tests.cpp.o"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/util && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/util_tests.dir/util_tests.cpp.o -c /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/util/util_tests.cpp

test/util/CMakeFiles/util_tests.dir/util_tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/util_tests.dir/util_tests.cpp.i"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/util && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/util/util_tests.cpp > CMakeFiles/util_tests.dir/util_tests.cpp.i

test/util/CMakeFiles/util_tests.dir/util_tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/util_tests.dir/util_tests.cpp.s"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/util && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/util/util_tests.cpp -o CMakeFiles/util_tests.dir/util_tests.cpp.s

test/util/CMakeFiles/util_tests.dir/ObjLoaderTests.cpp.o: test/util/CMakeFiles/util_tests.dir/flags.make
test/util/CMakeFiles/util_tests.dir/ObjLoaderTests.cpp.o: test/util/ObjLoaderTests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sebastianx/Testing/C++/Misc/pt-three-ways/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/util/CMakeFiles/util_tests.dir/ObjLoaderTests.cpp.o"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/util && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/util_tests.dir/ObjLoaderTests.cpp.o -c /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/util/ObjLoaderTests.cpp

test/util/CMakeFiles/util_tests.dir/ObjLoaderTests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/util_tests.dir/ObjLoaderTests.cpp.i"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/util && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/util/ObjLoaderTests.cpp > CMakeFiles/util_tests.dir/ObjLoaderTests.cpp.i

test/util/CMakeFiles/util_tests.dir/ObjLoaderTests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/util_tests.dir/ObjLoaderTests.cpp.s"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/util && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/util/ObjLoaderTests.cpp -o CMakeFiles/util_tests.dir/ObjLoaderTests.cpp.s

test/util/CMakeFiles/util_tests.dir/ArrayOutputTests.cpp.o: test/util/CMakeFiles/util_tests.dir/flags.make
test/util/CMakeFiles/util_tests.dir/ArrayOutputTests.cpp.o: test/util/ArrayOutputTests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sebastianx/Testing/C++/Misc/pt-three-ways/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object test/util/CMakeFiles/util_tests.dir/ArrayOutputTests.cpp.o"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/util && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/util_tests.dir/ArrayOutputTests.cpp.o -c /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/util/ArrayOutputTests.cpp

test/util/CMakeFiles/util_tests.dir/ArrayOutputTests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/util_tests.dir/ArrayOutputTests.cpp.i"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/util && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/util/ArrayOutputTests.cpp > CMakeFiles/util_tests.dir/ArrayOutputTests.cpp.i

test/util/CMakeFiles/util_tests.dir/ArrayOutputTests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/util_tests.dir/ArrayOutputTests.cpp.s"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/util && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/util/ArrayOutputTests.cpp -o CMakeFiles/util_tests.dir/ArrayOutputTests.cpp.s

# Object files for target util_tests
util_tests_OBJECTS = \
"CMakeFiles/util_tests.dir/util_tests.cpp.o" \
"CMakeFiles/util_tests.dir/ObjLoaderTests.cpp.o" \
"CMakeFiles/util_tests.dir/ArrayOutputTests.cpp.o"

# External object files for target util_tests
util_tests_EXTERNAL_OBJECTS =

bin/util_tests: test/util/CMakeFiles/util_tests.dir/util_tests.cpp.o
bin/util_tests: test/util/CMakeFiles/util_tests.dir/ObjLoaderTests.cpp.o
bin/util_tests: test/util/CMakeFiles/util_tests.dir/ArrayOutputTests.cpp.o
bin/util_tests: test/util/CMakeFiles/util_tests.dir/build.make
bin/util_tests: lib/libutil.a
bin/util_tests: lib/libmath.a
bin/util_tests: /Users/sebastianx/.conan/data/date/2.4.1/bincrafters/stable/package/2dc1828fba0450ea29af0550264baf795e452ce6/lib/libtz.a
bin/util_tests: test/util/CMakeFiles/util_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/sebastianx/Testing/C++/Misc/pt-three-ways/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ../../bin/util_tests"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/util && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/util_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/util/CMakeFiles/util_tests.dir/build: bin/util_tests

.PHONY : test/util/CMakeFiles/util_tests.dir/build

test/util/CMakeFiles/util_tests.dir/clean:
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/util && $(CMAKE_COMMAND) -P CMakeFiles/util_tests.dir/cmake_clean.cmake
.PHONY : test/util/CMakeFiles/util_tests.dir/clean

test/util/CMakeFiles/util_tests.dir/depend:
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/sebastianx/Testing/C++/Misc/pt-three-ways /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/util /Users/sebastianx/Testing/C++/Misc/pt-three-ways /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/util /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/util/CMakeFiles/util_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/util/CMakeFiles/util_tests.dir/depend

