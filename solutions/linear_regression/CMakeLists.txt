# CMakeLists.txt

cmake_minimum_required(VERSION 3.10)

project(LinearRegression)

set(CMAKE_CXX_STANDARD 14)

add_library(linear_regression_lib src/LinearRegression.cpp)

target_include_directories(linear_regression_lib PUBLIC include)

add_executable(linear_regression src/main.cpp)

target_link_libraries(linear_regression PUBLIC linear_regression_lib stdc++fs)