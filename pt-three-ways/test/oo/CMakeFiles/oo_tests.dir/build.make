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
include test/oo/CMakeFiles/oo_tests.dir/depend.make

# Include the progress variables for this target.
include test/oo/CMakeFiles/oo_tests.dir/progress.make

# Include the compile flags for this target's objects.
include test/oo/CMakeFiles/oo_tests.dir/flags.make

test/oo/CMakeFiles/oo_tests.dir/oo_tests.cpp.o: test/oo/CMakeFiles/oo_tests.dir/flags.make
test/oo/CMakeFiles/oo_tests.dir/oo_tests.cpp.o: test/oo/oo_tests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sebastianx/Testing/C++/Misc/pt-three-ways/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/oo/CMakeFiles/oo_tests.dir/oo_tests.cpp.o"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/oo && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/oo_tests.dir/oo_tests.cpp.o -c /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/oo/oo_tests.cpp

test/oo/CMakeFiles/oo_tests.dir/oo_tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/oo_tests.dir/oo_tests.cpp.i"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/oo && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/oo/oo_tests.cpp > CMakeFiles/oo_tests.dir/oo_tests.cpp.i

test/oo/CMakeFiles/oo_tests.dir/oo_tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/oo_tests.dir/oo_tests.cpp.s"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/oo && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/oo/oo_tests.cpp -o CMakeFiles/oo_tests.dir/oo_tests.cpp.s

test/oo/CMakeFiles/oo_tests.dir/TriangleTests.cpp.o: test/oo/CMakeFiles/oo_tests.dir/flags.make
test/oo/CMakeFiles/oo_tests.dir/TriangleTests.cpp.o: test/oo/TriangleTests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sebastianx/Testing/C++/Misc/pt-three-ways/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/oo/CMakeFiles/oo_tests.dir/TriangleTests.cpp.o"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/oo && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/oo_tests.dir/TriangleTests.cpp.o -c /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/oo/TriangleTests.cpp

test/oo/CMakeFiles/oo_tests.dir/TriangleTests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/oo_tests.dir/TriangleTests.cpp.i"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/oo && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/oo/TriangleTests.cpp > CMakeFiles/oo_tests.dir/TriangleTests.cpp.i

test/oo/CMakeFiles/oo_tests.dir/TriangleTests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/oo_tests.dir/TriangleTests.cpp.s"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/oo && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/oo/TriangleTests.cpp -o CMakeFiles/oo_tests.dir/TriangleTests.cpp.s

test/oo/CMakeFiles/oo_tests.dir/SphereTests.cpp.o: test/oo/CMakeFiles/oo_tests.dir/flags.make
test/oo/CMakeFiles/oo_tests.dir/SphereTests.cpp.o: test/oo/SphereTests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sebastianx/Testing/C++/Misc/pt-three-ways/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object test/oo/CMakeFiles/oo_tests.dir/SphereTests.cpp.o"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/oo && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/oo_tests.dir/SphereTests.cpp.o -c /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/oo/SphereTests.cpp

test/oo/CMakeFiles/oo_tests.dir/SphereTests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/oo_tests.dir/SphereTests.cpp.i"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/oo && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/oo/SphereTests.cpp > CMakeFiles/oo_tests.dir/SphereTests.cpp.i

test/oo/CMakeFiles/oo_tests.dir/SphereTests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/oo_tests.dir/SphereTests.cpp.s"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/oo && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/oo/SphereTests.cpp -o CMakeFiles/oo_tests.dir/SphereTests.cpp.s

test/oo/CMakeFiles/oo_tests.dir/RendererTests.cpp.o: test/oo/CMakeFiles/oo_tests.dir/flags.make
test/oo/CMakeFiles/oo_tests.dir/RendererTests.cpp.o: test/oo/RendererTests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sebastianx/Testing/C++/Misc/pt-three-ways/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object test/oo/CMakeFiles/oo_tests.dir/RendererTests.cpp.o"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/oo && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/oo_tests.dir/RendererTests.cpp.o -c /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/oo/RendererTests.cpp

test/oo/CMakeFiles/oo_tests.dir/RendererTests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/oo_tests.dir/RendererTests.cpp.i"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/oo && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/oo/RendererTests.cpp > CMakeFiles/oo_tests.dir/RendererTests.cpp.i

test/oo/CMakeFiles/oo_tests.dir/RendererTests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/oo_tests.dir/RendererTests.cpp.s"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/oo && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/oo/RendererTests.cpp -o CMakeFiles/oo_tests.dir/RendererTests.cpp.s

# Object files for target oo_tests
oo_tests_OBJECTS = \
"CMakeFiles/oo_tests.dir/oo_tests.cpp.o" \
"CMakeFiles/oo_tests.dir/TriangleTests.cpp.o" \
"CMakeFiles/oo_tests.dir/SphereTests.cpp.o" \
"CMakeFiles/oo_tests.dir/RendererTests.cpp.o"

# External object files for target oo_tests
oo_tests_EXTERNAL_OBJECTS =

bin/oo_tests: test/oo/CMakeFiles/oo_tests.dir/oo_tests.cpp.o
bin/oo_tests: test/oo/CMakeFiles/oo_tests.dir/TriangleTests.cpp.o
bin/oo_tests: test/oo/CMakeFiles/oo_tests.dir/SphereTests.cpp.o
bin/oo_tests: test/oo/CMakeFiles/oo_tests.dir/RendererTests.cpp.o
bin/oo_tests: test/oo/CMakeFiles/oo_tests.dir/build.make
bin/oo_tests: lib/liboo.a
bin/oo_tests: lib/libutil.a
bin/oo_tests: lib/libmath.a
bin/oo_tests: /Users/sebastianx/.conan/data/date/2.4.1/bincrafters/stable/package/2dc1828fba0450ea29af0550264baf795e452ce6/lib/libtz.a
bin/oo_tests: test/oo/CMakeFiles/oo_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/sebastianx/Testing/C++/Misc/pt-three-ways/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable ../../bin/oo_tests"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/oo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/oo_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/oo/CMakeFiles/oo_tests.dir/build: bin/oo_tests

.PHONY : test/oo/CMakeFiles/oo_tests.dir/build

test/oo/CMakeFiles/oo_tests.dir/clean:
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/oo && $(CMAKE_COMMAND) -P CMakeFiles/oo_tests.dir/cmake_clean.cmake
.PHONY : test/oo/CMakeFiles/oo_tests.dir/clean

test/oo/CMakeFiles/oo_tests.dir/depend:
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/sebastianx/Testing/C++/Misc/pt-three-ways /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/oo /Users/sebastianx/Testing/C++/Misc/pt-three-ways /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/oo /Users/sebastianx/Testing/C++/Misc/pt-three-ways/test/oo/CMakeFiles/oo_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/oo/CMakeFiles/oo_tests.dir/depend
