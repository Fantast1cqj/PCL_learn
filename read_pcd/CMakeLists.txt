cmake_minimum_required(VERSION 2.8 FATAL_ERROR)
project(pcd_read)
project(pcd_read_practice)

find_package(PCL REQUIRED)
include_directories(${PCL_INCLUDE_DIRS})
link_directories(${PCL_LIBRARY_DIRS})
add_definitions(${PCL_DEFINITIONS})

add_executable(pcd_read pcd_read.cpp)
add_executable(pcd_read_practice pcd_read_practice.cpp)

target_link_libraries(pcd_read ${PCL_LIBRARIES})
target_link_libraries(pcd_read_practice ${PCL_LIBRARIES})