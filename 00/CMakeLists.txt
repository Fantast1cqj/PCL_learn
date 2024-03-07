cmake_minimum_required(VERSION 2.6 FATAL_ERROR)

# project(pcl_version)
# project(write2pcd)
# project(readpcd)

# project(kdTree_write)
# project(pcd_viewer)
project(pcl_recognition_test)
project(txt2pcd)
project(pca)
project(normals)

find_package(PCL REQUIRED)
find_package(Eigen3 REQUIRED)


include_directories(${PCL_INCLUDE_DIRS})
include_directories(${EIGEN3_INCLUDE_DIRS})

link_directories(${PCL_LIBRARY_DIRS})

add_definitions(${PCL_DEFINITIONS})

# add_executable(pcl_version pcl_version.cpp)
# add_executable(write2pcd write2pcd.cpp)
# add_executable(readpcd src/readpcd.cpp)

# add_executable(kdTree_write src/kdTree_write.cpp)
# add_executable(pcd_viewer src/pcd_viewer.cpp)
add_executable(pcl_recognition_test src/correspondence_grouping.cpp)
add_executable(txt2pcd homework/txt2pcd.cpp)
add_executable(pca homework/pca.cpp src/pcd_viewer.cpp)
add_executable(normals src/pcd_viewer.cpp homework/normals.cpp)

# target_link_libraries(pcl_version ${PCL_LIBRARIES})
# target_link_libraries(write2pcd ${PCL_LIBRARIES})
# target_link_libraries(readpcd ${PCL_LIBRARIES})

# target_link_libraries(kdTree_write ${PCL_LIBRARIES})
# target_link_libraries(pcd_viewer ${PCL_LIBRARIES})
target_link_libraries(pcl_recognition_test ${PCL_LIBRARIES})
target_link_libraries(txt2pcd ${PCL_LIBRARIES})
target_link_libraries(pca ${PCL_LIBRARIES})
target_link_libraries(normals ${PCL_LIBRARIES})