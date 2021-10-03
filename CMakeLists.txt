cmake_minimum_required(VERSION 3.17)
project(hello)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_VERBOSE_MAKEFILE 1)


set(CMAKE_CXX_FLAGS_DEBUG "-O0 -g")
set(CMAKE_CXX_FLAGS_RELEASE "-O3 -Werror -Wall -Wextra")

set(SOURCE_FILES hello.cpp)

add_executable(make_template ${SOURCE_FILES})