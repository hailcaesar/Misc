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
include src/main/CMakeFiles/raw_to_png.dir/depend.make

# Include the progress variables for this target.
include src/main/CMakeFiles/raw_to_png.dir/progress.make

# Include the compile flags for this target's objects.
include src/main/CMakeFiles/raw_to_png.dir/flags.make

src/main/CMakeFiles/raw_to_png.dir/raw_to_png.cpp.o: src/main/CMakeFiles/raw_to_png.dir/flags.make
src/main/CMakeFiles/raw_to_png.dir/raw_to_png.cpp.o: src/main/raw_to_png.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sebastianx/Testing/C++/Misc/pt-three-ways/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/main/CMakeFiles/raw_to_png.dir/raw_to_png.cpp.o"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/src/main && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/raw_to_png.dir/raw_to_png.cpp.o -c /Users/sebastianx/Testing/C++/Misc/pt-three-ways/src/main/raw_to_png.cpp

src/main/CMakeFiles/raw_to_png.dir/raw_to_png.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raw_to_png.dir/raw_to_png.cpp.i"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/src/main && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sebastianx/Testing/C++/Misc/pt-three-ways/src/main/raw_to_png.cpp > CMakeFiles/raw_to_png.dir/raw_to_png.cpp.i

src/main/CMakeFiles/raw_to_png.dir/raw_to_png.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raw_to_png.dir/raw_to_png.cpp.s"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/src/main && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sebastianx/Testing/C++/Misc/pt-three-ways/src/main/raw_to_png.cpp -o CMakeFiles/raw_to_png.dir/raw_to_png.cpp.s

src/main/CMakeFiles/raw_to_png.dir/PngWriter.cpp.o: src/main/CMakeFiles/raw_to_png.dir/flags.make
src/main/CMakeFiles/raw_to_png.dir/PngWriter.cpp.o: src/main/PngWriter.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/sebastianx/Testing/C++/Misc/pt-three-ways/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/main/CMakeFiles/raw_to_png.dir/PngWriter.cpp.o"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/src/main && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/raw_to_png.dir/PngWriter.cpp.o -c /Users/sebastianx/Testing/C++/Misc/pt-three-ways/src/main/PngWriter.cpp

src/main/CMakeFiles/raw_to_png.dir/PngWriter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/raw_to_png.dir/PngWriter.cpp.i"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/src/main && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/sebastianx/Testing/C++/Misc/pt-three-ways/src/main/PngWriter.cpp > CMakeFiles/raw_to_png.dir/PngWriter.cpp.i

src/main/CMakeFiles/raw_to_png.dir/PngWriter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/raw_to_png.dir/PngWriter.cpp.s"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/src/main && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/sebastianx/Testing/C++/Misc/pt-three-ways/src/main/PngWriter.cpp -o CMakeFiles/raw_to_png.dir/PngWriter.cpp.s

# Object files for target raw_to_png
raw_to_png_OBJECTS = \
"CMakeFiles/raw_to_png.dir/raw_to_png.cpp.o" \
"CMakeFiles/raw_to_png.dir/PngWriter.cpp.o"

# External object files for target raw_to_png
raw_to_png_EXTERNAL_OBJECTS =

bin/raw_to_png: src/main/CMakeFiles/raw_to_png.dir/raw_to_png.cpp.o
bin/raw_to_png: src/main/CMakeFiles/raw_to_png.dir/PngWriter.cpp.o
bin/raw_to_png: src/main/CMakeFiles/raw_to_png.dir/build.make
bin/raw_to_png: lib/libmath.a
bin/raw_to_png: lib/libutil.a
bin/raw_to_png: lib/libmath.a
bin/raw_to_png: /Users/sebastianx/.conan/data/date/2.4.1/bincrafters/stable/package/2dc1828fba0450ea29af0550264baf795e452ce6/lib/libtz.a
bin/raw_to_png: /Users/sebastianx/.conan/data/libpng/1.6.37/bincrafters/stable/package/eb50d18a5a5d59bd0c332464a4c348ab65e353bf/lib/libpng16.a
bin/raw_to_png: /Users/sebastianx/.conan/data/zlib/1.2.11/conan/stable/package/f74366f76f700cc6e991285892ad7a23c30e6d47/lib/libz.a
bin/raw_to_png: src/main/CMakeFiles/raw_to_png.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/sebastianx/Testing/C++/Misc/pt-three-ways/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../../bin/raw_to_png"
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/src/main && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/raw_to_png.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/main/CMakeFiles/raw_to_png.dir/build: bin/raw_to_png

.PHONY : src/main/CMakeFiles/raw_to_png.dir/build

src/main/CMakeFiles/raw_to_png.dir/clean:
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways/src/main && $(CMAKE_COMMAND) -P CMakeFiles/raw_to_png.dir/cmake_clean.cmake
.PHONY : src/main/CMakeFiles/raw_to_png.dir/clean

src/main/CMakeFiles/raw_to_png.dir/depend:
	cd /Users/sebastianx/Testing/C++/Misc/pt-three-ways && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/sebastianx/Testing/C++/Misc/pt-three-ways /Users/sebastianx/Testing/C++/Misc/pt-three-ways/src/main /Users/sebastianx/Testing/C++/Misc/pt-three-ways /Users/sebastianx/Testing/C++/Misc/pt-three-ways/src/main /Users/sebastianx/Testing/C++/Misc/pt-three-ways/src/main/CMakeFiles/raw_to_png.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/main/CMakeFiles/raw_to_png.dir/depend

