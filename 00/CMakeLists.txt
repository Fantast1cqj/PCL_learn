cmake_minimum_required(VERSION 2.6 FATAL_ERROR)

project(pcl_version)
project(write2pcd)


find_package(PCL REQUIRED)

include_directories(${PCL_INCLUDE_DIRS})

link_directories(${PCL_LIBRARY_DIRS})

add_definitions(${PCL_DEFINITIONS})

add_executable(pcl_version pcl_version.cpp)
add_executable(write2pcd write2pcd.cpp)


target_link_libraries(pcl_version ${PCL_LIBRARIES})
target_link_libraries(write2pcd ${PCL_LIBRARIES})
