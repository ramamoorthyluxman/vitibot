# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/mnt/f/phd/Curriculum/jobs/vitibot/Test technique ingé ROS/Test technique ingé ROS/solutions/linear_regression"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/mnt/f/phd/Curriculum/jobs/vitibot/Test technique ingé ROS/Test technique ingé ROS/solutions/linear_regression/build"

# Include any dependencies generated for this target.
include CMakeFiles/linear_regression_lib.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/linear_regression_lib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/linear_regression_lib.dir/flags.make

CMakeFiles/linear_regression_lib.dir/src/LinearRegression.cpp.o: CMakeFiles/linear_regression_lib.dir/flags.make
CMakeFiles/linear_regression_lib.dir/src/LinearRegression.cpp.o: ../src/LinearRegression.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/f/phd/Curriculum/jobs/vitibot/Test technique ingé ROS/Test technique ingé ROS/solutions/linear_regression/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/linear_regression_lib.dir/src/LinearRegression.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/linear_regression_lib.dir/src/LinearRegression.cpp.o -c "/mnt/f/phd/Curriculum/jobs/vitibot/Test technique ingé ROS/Test technique ingé ROS/solutions/linear_regression/src/LinearRegression.cpp"

CMakeFiles/linear_regression_lib.dir/src/LinearRegression.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/linear_regression_lib.dir/src/LinearRegression.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/mnt/f/phd/Curriculum/jobs/vitibot/Test technique ingé ROS/Test technique ingé ROS/solutions/linear_regression/src/LinearRegression.cpp" > CMakeFiles/linear_regression_lib.dir/src/LinearRegression.cpp.i

CMakeFiles/linear_regression_lib.dir/src/LinearRegression.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/linear_regression_lib.dir/src/LinearRegression.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/mnt/f/phd/Curriculum/jobs/vitibot/Test technique ingé ROS/Test technique ingé ROS/solutions/linear_regression/src/LinearRegression.cpp" -o CMakeFiles/linear_regression_lib.dir/src/LinearRegression.cpp.s

# Object files for target linear_regression_lib
linear_regression_lib_OBJECTS = \
"CMakeFiles/linear_regression_lib.dir/src/LinearRegression.cpp.o"

# External object files for target linear_regression_lib
linear_regression_lib_EXTERNAL_OBJECTS =

liblinear_regression_lib.a: CMakeFiles/linear_regression_lib.dir/src/LinearRegression.cpp.o
liblinear_regression_lib.a: CMakeFiles/linear_regression_lib.dir/build.make
liblinear_regression_lib.a: CMakeFiles/linear_regression_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/mnt/f/phd/Curriculum/jobs/vitibot/Test technique ingé ROS/Test technique ingé ROS/solutions/linear_regression/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library liblinear_regression_lib.a"
	$(CMAKE_COMMAND) -P CMakeFiles/linear_regression_lib.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/linear_regression_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/linear_regression_lib.dir/build: liblinear_regression_lib.a

.PHONY : CMakeFiles/linear_regression_lib.dir/build

CMakeFiles/linear_regression_lib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/linear_regression_lib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/linear_regression_lib.dir/clean

CMakeFiles/linear_regression_lib.dir/depend:
	cd "/mnt/f/phd/Curriculum/jobs/vitibot/Test technique ingé ROS/Test technique ingé ROS/solutions/linear_regression/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/mnt/f/phd/Curriculum/jobs/vitibot/Test technique ingé ROS/Test technique ingé ROS/solutions/linear_regression" "/mnt/f/phd/Curriculum/jobs/vitibot/Test technique ingé ROS/Test technique ingé ROS/solutions/linear_regression" "/mnt/f/phd/Curriculum/jobs/vitibot/Test technique ingé ROS/Test technique ingé ROS/solutions/linear_regression/build" "/mnt/f/phd/Curriculum/jobs/vitibot/Test technique ingé ROS/Test technique ingé ROS/solutions/linear_regression/build" "/mnt/f/phd/Curriculum/jobs/vitibot/Test technique ingé ROS/Test technique ingé ROS/solutions/linear_regression/build/CMakeFiles/linear_regression_lib.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/linear_regression_lib.dir/depend
