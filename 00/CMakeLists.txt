cmake_minimum_required(VERSION 2.6 FATAL_ERROR)

# project(pcl_version)
# project(write2pcd)
# project(readpcd)

project(kdTree_write)
project(pcd_viewer)

find_package(PCL REQUIRED)

include_directories(${PCL_INCLUDE_DIRS})

link_directories(${PCL_LIBRARY_DIRS})

add_definitions(${PCL_DEFINITIONS})

# add_executable(pcl_version pcl_version.cpp)
# add_executable(write2pcd write2pcd.cpp)
# add_executable(readpcd src/readpcd.cpp)

add_executable(kdTree_write src/kdTree_write.cpp)
add_executable(pcd_viewer src/pcd_viewer.cpp)

# target_link_libraries(pcl_version ${PCL_LIBRARIES})
# target_link_libraries(write2pcd ${PCL_LIBRARIES})
# target_link_libraries(readpcd ${PCL_LIBRARIES})

target_link_libraries(kdTree_write ${PCL_LIBRARIES})
target_link_libraries(pcd_viewer ${PCL_LIBRARIES})