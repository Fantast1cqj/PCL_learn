cmake_minimum_required(VERSION 2.6 FATAL_ERROR)

project(pcl_learn)

find_package(PCL REQUIRED)

include_directories(${PCL_INCLUDE_DIRS})

link_directories(${PCL_LIBRARY_DIRS})

add_definitions(${PCL_DEFINITIONS})

add_executable(pcl_learn pcl_learn.cpp)

target_link_libraries(pcl_learn ${PCL_LIBRARIES})