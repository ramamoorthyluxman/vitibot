cmake_minimum_required(VERSION 3.10)

project(radar)

set(CMAKE_CXX_STANDARD 14)

add_library(radarlib src/radar.cpp)

target_include_directories(radarlib PUBLIC include)

add_executable(radar src/main.cpp)

target_link_libraries(radar PUBLIC radarlib stdc++fs)