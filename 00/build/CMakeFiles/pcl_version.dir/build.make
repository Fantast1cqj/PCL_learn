# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/drone/文档/PCD_learn/00

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/drone/文档/PCD_learn/00/build

# Include any dependencies generated for this target.
include CMakeFiles/pcl_version.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pcl_version.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pcl_version.dir/flags.make

CMakeFiles/pcl_version.dir/pcl_version.cpp.o: CMakeFiles/pcl_version.dir/flags.make
CMakeFiles/pcl_version.dir/pcl_version.cpp.o: ../pcl_version.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/drone/文档/PCD_learn/00/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pcl_version.dir/pcl_version.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/pcl_version.dir/pcl_version.cpp.o -c /home/drone/文档/PCD_learn/00/pcl_version.cpp

CMakeFiles/pcl_version.dir/pcl_version.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pcl_version.dir/pcl_version.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/drone/文档/PCD_learn/00/pcl_version.cpp > CMakeFiles/pcl_version.dir/pcl_version.cpp.i

CMakeFiles/pcl_version.dir/pcl_version.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pcl_version.dir/pcl_version.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/drone/文档/PCD_learn/00/pcl_version.cpp -o CMakeFiles/pcl_version.dir/pcl_version.cpp.s

# Object files for target pcl_version
pcl_version_OBJECTS = \
"CMakeFiles/pcl_version.dir/pcl_version.cpp.o"

# External object files for target pcl_version
pcl_version_EXTERNAL_OBJECTS =

pcl_version: CMakeFiles/pcl_version.dir/pcl_version.cpp.o
pcl_version: CMakeFiles/pcl_version.dir/build.make
pcl_version: /usr/lib/x86_64-linux-gnu/libpcl_apps.so
pcl_version: /usr/lib/x86_64-linux-gnu/libpcl_outofcore.so
pcl_version: /usr/lib/x86_64-linux-gnu/libpcl_people.so
pcl_version: /usr/lib/x86_64-linux-gnu/libboost_system.so
pcl_version: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
pcl_version: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
pcl_version: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
pcl_version: /usr/lib/x86_64-linux-gnu/libboost_regex.so
pcl_version: /usr/lib/x86_64-linux-gnu/libqhull.so
pcl_version: /usr/lib/libOpenNI.so
pcl_version: /usr/lib/libOpenNI2.so
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkChartsCore-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkInfovisCore-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libfreetype.so
pcl_version: /usr/lib/x86_64-linux-gnu/libz.so
pcl_version: /usr/lib/x86_64-linux-gnu/libjpeg.so
pcl_version: /usr/lib/x86_64-linux-gnu/libpng.so
pcl_version: /usr/lib/x86_64-linux-gnu/libtiff.so
pcl_version: /usr/lib/x86_64-linux-gnu/libexpat.so
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkIOGeometry-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkIOLegacy-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkIOPLY-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkRenderingLOD-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkViewsContext2D-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkViewsCore-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkRenderingContextOpenGL2-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkRenderingOpenGL2-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libflann_cpp.so
pcl_version: /usr/lib/x86_64-linux-gnu/libpcl_surface.so
pcl_version: /usr/lib/x86_64-linux-gnu/libpcl_keypoints.so
pcl_version: /usr/lib/x86_64-linux-gnu/libpcl_tracking.so
pcl_version: /usr/lib/x86_64-linux-gnu/libpcl_recognition.so
pcl_version: /usr/lib/x86_64-linux-gnu/libpcl_registration.so
pcl_version: /usr/lib/x86_64-linux-gnu/libpcl_stereo.so
pcl_version: /usr/lib/x86_64-linux-gnu/libpcl_segmentation.so
pcl_version: /usr/lib/x86_64-linux-gnu/libpcl_features.so
pcl_version: /usr/lib/x86_64-linux-gnu/libpcl_filters.so
pcl_version: /usr/lib/x86_64-linux-gnu/libpcl_sample_consensus.so
pcl_version: /usr/lib/x86_64-linux-gnu/libpcl_ml.so
pcl_version: /usr/lib/x86_64-linux-gnu/libpcl_visualization.so
pcl_version: /usr/lib/x86_64-linux-gnu/libpcl_search.so
pcl_version: /usr/lib/x86_64-linux-gnu/libpcl_kdtree.so
pcl_version: /usr/lib/x86_64-linux-gnu/libpcl_io.so
pcl_version: /usr/lib/x86_64-linux-gnu/libpcl_octree.so
pcl_version: /usr/lib/x86_64-linux-gnu/libpcl_common.so
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkInteractionWidgets-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkFiltersModeling-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkInteractionStyle-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkFiltersExtraction-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkFiltersStatistics-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkImagingFourier-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkalglib-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkFiltersHybrid-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkImagingGeneral-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkImagingSources-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkImagingHybrid-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkRenderingAnnotation-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkImagingColor-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkRenderingVolume-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkIOXML-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkIOXMLParser-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkIOCore-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkRenderingContext2D-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkRenderingFreeType-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libfreetype.so
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkImagingCore-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkRenderingCore-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkCommonColor-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkFiltersGeometry-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkFiltersSources-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkFiltersGeneral-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkCommonComputationalGeometry-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkFiltersCore-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkIOImage-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkCommonExecutionModel-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkCommonDataModel-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkCommonTransforms-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkCommonMisc-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkCommonMath-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkCommonSystem-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkCommonCore-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtksys-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkDICOMParser-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libvtkmetaio-7.1.so.7.1p.1
pcl_version: /usr/lib/x86_64-linux-gnu/libz.so
pcl_version: /usr/lib/x86_64-linux-gnu/libGLEW.so
pcl_version: /usr/lib/x86_64-linux-gnu/libSM.so
pcl_version: /usr/lib/x86_64-linux-gnu/libICE.so
pcl_version: /usr/lib/x86_64-linux-gnu/libX11.so
pcl_version: /usr/lib/x86_64-linux-gnu/libXext.so
pcl_version: /usr/lib/x86_64-linux-gnu/libXt.so
pcl_version: CMakeFiles/pcl_version.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/drone/文档/PCD_learn/00/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable pcl_version"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pcl_version.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pcl_version.dir/build: pcl_version

.PHONY : CMakeFiles/pcl_version.dir/build

CMakeFiles/pcl_version.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/pcl_version.dir/cmake_clean.cmake
.PHONY : CMakeFiles/pcl_version.dir/clean

CMakeFiles/pcl_version.dir/depend:
	cd /home/drone/文档/PCD_learn/00/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/drone/文档/PCD_learn/00 /home/drone/文档/PCD_learn/00 /home/drone/文档/PCD_learn/00/build /home/drone/文档/PCD_learn/00/build /home/drone/文档/PCD_learn/00/build/CMakeFiles/pcl_version.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/pcl_version.dir/depend

