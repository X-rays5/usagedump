cmake_minimum_required(VERSION 3.19)
project(usagedump)

set(CMAKE_CXX_STANDARD 20)

find_package(RapidJSON CONFIG REQUIRED)

add_executable(usagedump main.cpp cpu.hpp memory.hpp)

target_include_directories(usagedump PRIVATE ${RAPIDJSON_INCLUDE_DIRS})