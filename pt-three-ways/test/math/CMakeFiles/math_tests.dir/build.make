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
include test/math/CMakeFiles/math_tests.dir/depend.make

# Include the progress variables for this target.
include test/math/CMakeFiles/math_tests.dir/progress.make

# Include the compile flags for this target's objects.
include test/math/CMakeFiles/math_tests.dir/flags.make

test/math/CMakeFiles/math_tests.dir/math_tests.cpp.o: test/math/CMakeFiles/math_tests.dir/flags.make
test/math/CMakeFiles/math_tests.dir/math_tests.cpp.o: test/math/math_tests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sebastianx/Testing/C++/Misc/pt-three-ways/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/math/CMakeFiles/math_tests.dir/math_tests.cpp.o"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/math_tests.dir/math_tests.cpp.o -c /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math/math_tests.cpp

test/math/CMakeFiles/math_tests.dir/math_tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/math_tests.dir/math_tests.cpp.i"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math/math_tests.cpp > CMakeFiles/math_tests.dir/math_tests.cpp.i

test/math/CMakeFiles/math_tests.dir/math_tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/math_tests.dir/math_tests.cpp.s"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math/math_tests.cpp -o CMakeFiles/math_tests.dir/math_tests.cpp.s

test/math/CMakeFiles/math_tests.dir/Vec3Tests.cpp.o: test/math/CMakeFiles/math_tests.dir/flags.make
test/math/CMakeFiles/math_tests.dir/Vec3Tests.cpp.o: test/math/Vec3Tests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sebastianx/Testing/C++/Misc/pt-three-ways/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/math/CMakeFiles/math_tests.dir/Vec3Tests.cpp.o"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/math_tests.dir/Vec3Tests.cpp.o -c /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math/Vec3Tests.cpp

test/math/CMakeFiles/math_tests.dir/Vec3Tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/math_tests.dir/Vec3Tests.cpp.i"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math/Vec3Tests.cpp > CMakeFiles/math_tests.dir/Vec3Tests.cpp.i

test/math/CMakeFiles/math_tests.dir/Vec3Tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/math_tests.dir/Vec3Tests.cpp.s"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math/Vec3Tests.cpp -o CMakeFiles/math_tests.dir/Vec3Tests.cpp.s

test/math/CMakeFiles/math_tests.dir/Norm3Tests.cpp.o: test/math/CMakeFiles/math_tests.dir/flags.make
test/math/CMakeFiles/math_tests.dir/Norm3Tests.cpp.o: test/math/Norm3Tests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sebastianx/Testing/C++/Misc/pt-three-ways/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object test/math/CMakeFiles/math_tests.dir/Norm3Tests.cpp.o"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/math_tests.dir/Norm3Tests.cpp.o -c /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math/Norm3Tests.cpp

test/math/CMakeFiles/math_tests.dir/Norm3Tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/math_tests.dir/Norm3Tests.cpp.i"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math/Norm3Tests.cpp > CMakeFiles/math_tests.dir/Norm3Tests.cpp.i

test/math/CMakeFiles/math_tests.dir/Norm3Tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/math_tests.dir/Norm3Tests.cpp.s"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math/Norm3Tests.cpp -o CMakeFiles/math_tests.dir/Norm3Tests.cpp.s

test/math/CMakeFiles/math_tests.dir/RayTests.cpp.o: test/math/CMakeFiles/math_tests.dir/flags.make
test/math/CMakeFiles/math_tests.dir/RayTests.cpp.o: test/math/RayTests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sebastianx/Testing/C++/Misc/pt-three-ways/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object test/math/CMakeFiles/math_tests.dir/RayTests.cpp.o"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/math_tests.dir/RayTests.cpp.o -c /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math/RayTests.cpp

test/math/CMakeFiles/math_tests.dir/RayTests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/math_tests.dir/RayTests.cpp.i"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math/RayTests.cpp > CMakeFiles/math_tests.dir/RayTests.cpp.i

test/math/CMakeFiles/math_tests.dir/RayTests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/math_tests.dir/RayTests.cpp.s"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math/RayTests.cpp -o CMakeFiles/math_tests.dir/RayTests.cpp.s

test/math/CMakeFiles/math_tests.dir/OrthoNormalBasisTests.cpp.o: test/math/CMakeFiles/math_tests.dir/flags.make
test/math/CMakeFiles/math_tests.dir/OrthoNormalBasisTests.cpp.o: test/math/OrthoNormalBasisTests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sebastianx/Testing/C++/Misc/pt-three-ways/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object test/math/CMakeFiles/math_tests.dir/OrthoNormalBasisTests.cpp.o"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/math_tests.dir/OrthoNormalBasisTests.cpp.o -c /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math/OrthoNormalBasisTests.cpp

test/math/CMakeFiles/math_tests.dir/OrthoNormalBasisTests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/math_tests.dir/OrthoNormalBasisTests.cpp.i"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math/OrthoNormalBasisTests.cpp > CMakeFiles/math_tests.dir/OrthoNormalBasisTests.cpp.i

test/math/CMakeFiles/math_tests.dir/OrthoNormalBasisTests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/math_tests.dir/OrthoNormalBasisTests.cpp.s"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math/OrthoNormalBasisTests.cpp -o CMakeFiles/math_tests.dir/OrthoNormalBasisTests.cpp.s

# Object files for target math_tests
math_tests_OBJECTS = \
"CMakeFiles/math_tests.dir/math_tests.cpp.o" \
"CMakeFiles/math_tests.dir/Vec3Tests.cpp.o" \
"CMakeFiles/math_tests.dir/Norm3Tests.cpp.o" \
"CMakeFiles/math_tests.dir/RayTests.cpp.o" \
"CMakeFiles/math_tests.dir/OrthoNormalBasisTests.cpp.o"

# External object files for target math_tests
math_tests_EXTERNAL_OBJECTS =

bin/math_tests: test/math/CMakeFiles/math_tests.dir/math_tests.cpp.o
bin/math_tests: test/math/CMakeFiles/math_tests.dir/Vec3Tests.cpp.o
bin/math_tests: test/math/CMakeFiles/math_tests.dir/Norm3Tests.cpp.o
bin/math_tests: test/math/CMakeFiles/math_tests.dir/RayTests.cpp.o
bin/math_tests: test/math/CMakeFiles/math_tests.dir/OrthoNormalBasisTests.cpp.o
bin/math_tests: test/math/CMakeFiles/math_tests.dir/build.make
bin/math_tests: lib/libmath.a
bin/math_tests: test/math/CMakeFiles/math_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/sebastianx/Testing/C++/Misc/pt-three-ways/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable ../../bin/math_tests"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/math_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/math/CMakeFiles/math_tests.dir/build: bin/math_tests

.PHONY : test/math/CMakeFiles/math_tests.dir/build

test/math/CMakeFiles/math_tests.dir/clean:
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math && $(CMAKE_COMMAND) -P CMakeFiles/math_tests.dir/cmake_clean.cmake
.PHONY : test/math/CMakeFiles/math_tests.dir/clean

test/math/CMakeFiles/math_tests.dir/depend:
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/sebastianx/Testing/C++/Misc/pt-three-ways /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math /Users/sebastianx/Testing/C++/Misc/pt-three-ways /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/math/CMakeFiles/math_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/math/CMakeFiles/math_tests.dir/depend

