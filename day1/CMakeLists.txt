cmake_minimum_required(VERSION 3.10)

option(TESTING "Testing" OFF)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

set(project_name AoC_2019)
project(${project_name} VERSION 0.0.1 DESCRIPTION "Advent Of Code 2019" LANGUAGES CXX)

set( includes ${CMAKE_CURRENT_SOURCE_DIR}/include )

#find_package( raylib REQUIRED)

# ----- 6. Compile

# MY_SOURCES is defined to be a list of all the source files for my game 
# DON'T ADD THE SOURCES BY HAND, they are already added with this macro
file(GLOB_RECURSE MY_SOURCES CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp")
file(GLOB_RECURSE MY_HEADERS CONFIGURE_DEPENDS "${CMAKE_CURRENT_SOURCE_DIR}/include/*.hpp")

if(TESTING)
    configure_file(input/example.txt input/aoc.txt COPYONLY)
else()
    configure_file(input/input.txt input/aoc.txt COPYONLY)
endif()

add_executable( ${project_name} ${MY_HEADERS} ${MY_SOURCES})
target_include_directories( ${project_name} PUBLIC ${includes} ) 
#target_link_libraries(${project_name} raylib)
