# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Applications/ITK_projects/CSCI6850_P1/Source/Threshold_Image_Filter

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Applications/ITK_projects/CSCI6850_P1/Bin/ThresholdImageFilter_build

# Include any dependencies generated for this target.
include CMakeFiles/ThresholdImageFilter.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ThresholdImageFilter.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ThresholdImageFilter.dir/flags.make

CMakeFiles/ThresholdImageFilter.dir/ThresholdImageFilter.cxx.o: CMakeFiles/ThresholdImageFilter.dir/flags.make
CMakeFiles/ThresholdImageFilter.dir/ThresholdImageFilter.cxx.o: /Applications/ITK_projects/CSCI6850_P1/Source/Threshold_Image_Filter/ThresholdImageFilter.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Applications/ITK_projects/CSCI6850_P1/Bin/ThresholdImageFilter_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ThresholdImageFilter.dir/ThresholdImageFilter.cxx.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ThresholdImageFilter.dir/ThresholdImageFilter.cxx.o -c /Applications/ITK_projects/CSCI6850_P1/Source/Threshold_Image_Filter/ThresholdImageFilter.cxx

CMakeFiles/ThresholdImageFilter.dir/ThresholdImageFilter.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ThresholdImageFilter.dir/ThresholdImageFilter.cxx.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Applications/ITK_projects/CSCI6850_P1/Source/Threshold_Image_Filter/ThresholdImageFilter.cxx > CMakeFiles/ThresholdImageFilter.dir/ThresholdImageFilter.cxx.i

CMakeFiles/ThresholdImageFilter.dir/ThresholdImageFilter.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ThresholdImageFilter.dir/ThresholdImageFilter.cxx.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Applications/ITK_projects/CSCI6850_P1/Source/Threshold_Image_Filter/ThresholdImageFilter.cxx -o CMakeFiles/ThresholdImageFilter.dir/ThresholdImageFilter.cxx.s

CMakeFiles/ThresholdImageFilter.dir/ThresholdImageFilter.cxx.o.requires:

.PHONY : CMakeFiles/ThresholdImageFilter.dir/ThresholdImageFilter.cxx.o.requires

CMakeFiles/ThresholdImageFilter.dir/ThresholdImageFilter.cxx.o.provides: CMakeFiles/ThresholdImageFilter.dir/ThresholdImageFilter.cxx.o.requires
	$(MAKE) -f CMakeFiles/ThresholdImageFilter.dir/build.make CMakeFiles/ThresholdImageFilter.dir/ThresholdImageFilter.cxx.o.provides.build
.PHONY : CMakeFiles/ThresholdImageFilter.dir/ThresholdImageFilter.cxx.o.provides

CMakeFiles/ThresholdImageFilter.dir/ThresholdImageFilter.cxx.o.provides.build: CMakeFiles/ThresholdImageFilter.dir/ThresholdImageFilter.cxx.o


# Object files for target ThresholdImageFilter
ThresholdImageFilter_OBJECTS = \
"CMakeFiles/ThresholdImageFilter.dir/ThresholdImageFilter.cxx.o"

# External object files for target ThresholdImageFilter
ThresholdImageFilter_EXTERNAL_OBJECTS =

ThresholdImageFilter: CMakeFiles/ThresholdImageFilter.dir/ThresholdImageFilter.cxx.o
ThresholdImageFilter: CMakeFiles/ThresholdImageFilter.dir/build.make
ThresholdImageFilter: /usr/local/lib/libitkdouble-conversion-4.13.a
ThresholdImageFilter: /usr/local/lib/libitksys-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkvnl_algo-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkvnl-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkv3p_netlib-4.13.a
ThresholdImageFilter: /usr/local/lib/libitknetlib-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkvcl-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKCommon-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkNetlibSlatec-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKStatistics-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKTransform-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIOImageBase-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIOBMP-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKEXPAT-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkzlib-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkgdcmDICT-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkgdcmMSFF-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIOGDCM-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIOGIPL-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkjpeg-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIOJPEG-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKMetaIO-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIOMeta-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKznz-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKniftiio-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIONIFTI-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKNrrdIO-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIONRRD-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkpng-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIOPNG-4.13.a
ThresholdImageFilter: /usr/local/lib/libitktiff-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIOTIFF-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIOVTK-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKLabelMap-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKMesh-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKSpatialObjects-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKPath-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKQuadEdgeMesh-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKOptimizers-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKPolynomials-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKBiasCorrection-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKBioCell-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKDICOMParser-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIOXML-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIOSpatialObjects-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKFEM-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKgiftiio-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIOMesh-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkhdf5_cpp.a
ThresholdImageFilter: /usr/local/lib/libitkhdf5.a
ThresholdImageFilter: /usr/local/lib/libITKIOBioRad-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIOBruker-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIOCSV-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIOIPL-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIOGE-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIOSiemens-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIOHDF5-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIOLSM-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkminc2-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIOMINC-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIOMRC-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIOStimulate-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKTransformFactory-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIOTransformBase-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIOTransformHDF5-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIOTransformInsightLegacy-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIOTransformMatlab-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKKLMRegionGrowing-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKVTK-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKWatersheds-4.13.a
ThresholdImageFilter: /usr/local/lib/libitklbfgs-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKOptimizersv4-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKVideoCore-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKVideoIO-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKVtkGlue-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkgdcmMSFF-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkgdcmDICT-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkgdcmIOD-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkgdcmDSED-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkgdcmCommon-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkgdcmjpeg8-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkgdcmjpeg12-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkgdcmjpeg16-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkgdcmopenjp2-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkgdcmcharls-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkgdcmuuid-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKNrrdIO-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkpng-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIOXML-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKMetaIO-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKgiftiio-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKEXPAT-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKniftiio-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKznz-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIOIPL-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIOTIFF-4.13.a
ThresholdImageFilter: /usr/local/lib/libitktiff-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkjpeg-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkminc2-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkhdf5_cpp.a
ThresholdImageFilter: /usr/local/lib/libitkhdf5.a
ThresholdImageFilter: /usr/local/lib/libitkzlib-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIOTransformBase-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKTransformFactory-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKSpatialObjects-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKMesh-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKTransform-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKPath-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKOptimizers-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKStatistics-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkNetlibSlatec-4.13.a
ThresholdImageFilter: /usr/local/lib/libitklbfgs-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKIOImageBase-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKVideoCore-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKVTK-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKCommon-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkdouble-conversion-4.13.a
ThresholdImageFilter: /usr/local/lib/libitksys-4.13.a
ThresholdImageFilter: /usr/local/lib/libITKVNLInstantiation-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkvnl_algo-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkvnl-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkv3p_netlib-4.13.a
ThresholdImageFilter: /usr/local/lib/libitknetlib-4.13.a
ThresholdImageFilter: /usr/local/lib/libitkvcl-4.13.a
ThresholdImageFilter: /usr/local/lib/libvtkRenderingOpenGL2-8.1.1.dylib
ThresholdImageFilter: /usr/local/lib/libvtkglew-8.1.1.dylib
ThresholdImageFilter: /usr/local/lib/libvtkRenderingFreeType-8.1.1.dylib
ThresholdImageFilter: /usr/local/lib/libvtkfreetype-8.1.1.dylib
ThresholdImageFilter: /usr/local/lib/libvtkInteractionStyle-8.1.1.dylib
ThresholdImageFilter: /usr/local/lib/libvtkRenderingCore-8.1.1.dylib
ThresholdImageFilter: /usr/local/lib/libvtkCommonColor-8.1.1.dylib
ThresholdImageFilter: /usr/local/lib/libvtkFiltersGeometry-8.1.1.dylib
ThresholdImageFilter: /usr/local/lib/libvtkFiltersSources-8.1.1.dylib
ThresholdImageFilter: /usr/local/lib/libvtkFiltersExtraction-8.1.1.dylib
ThresholdImageFilter: /usr/local/lib/libvtkFiltersGeneral-8.1.1.dylib
ThresholdImageFilter: /usr/local/lib/libvtkCommonComputationalGeometry-8.1.1.dylib
ThresholdImageFilter: /usr/local/lib/libvtkFiltersCore-8.1.1.dylib
ThresholdImageFilter: /usr/local/lib/libvtkFiltersStatistics-8.1.1.dylib
ThresholdImageFilter: /usr/local/lib/libvtkImagingFourier-8.1.1.dylib
ThresholdImageFilter: /usr/local/lib/libvtkalglib-8.1.1.dylib
ThresholdImageFilter: /usr/local/lib/libvtkIOImage-8.1.1.dylib
ThresholdImageFilter: /usr/local/lib/libvtkDICOMParser-8.1.1.dylib
ThresholdImageFilter: /usr/local/lib/libvtkmetaio-8.1.1.dylib
ThresholdImageFilter: /usr/local/lib/libvtkpng-8.1.1.dylib
ThresholdImageFilter: /usr/local/lib/libvtktiff-8.1.1.dylib
ThresholdImageFilter: /usr/local/lib/libvtkzlib-8.1.1.dylib
ThresholdImageFilter: /usr/local/lib/libvtkjpeg-8.1.1.dylib
ThresholdImageFilter: /usr/lib/libm.dylib
ThresholdImageFilter: /usr/local/lib/libvtkImagingSources-8.1.1.dylib
ThresholdImageFilter: /usr/local/lib/libvtkImagingCore-8.1.1.dylib
ThresholdImageFilter: /usr/local/lib/libvtkCommonExecutionModel-8.1.1.dylib
ThresholdImageFilter: /usr/local/lib/libvtkCommonDataModel-8.1.1.dylib
ThresholdImageFilter: /usr/local/lib/libvtkCommonTransforms-8.1.1.dylib
ThresholdImageFilter: /usr/local/lib/libvtkCommonMisc-8.1.1.dylib
ThresholdImageFilter: /usr/local/lib/libvtkCommonMath-8.1.1.dylib
ThresholdImageFilter: /usr/local/lib/libvtkCommonSystem-8.1.1.dylib
ThresholdImageFilter: /usr/local/lib/libvtkCommonCore-8.1.1.dylib
ThresholdImageFilter: /usr/local/lib/libvtksys-8.1.1.dylib
ThresholdImageFilter: CMakeFiles/ThresholdImageFilter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Applications/ITK_projects/CSCI6850_P1/Bin/ThresholdImageFilter_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ThresholdImageFilter"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ThresholdImageFilter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ThresholdImageFilter.dir/build: ThresholdImageFilter

.PHONY : CMakeFiles/ThresholdImageFilter.dir/build

CMakeFiles/ThresholdImageFilter.dir/requires: CMakeFiles/ThresholdImageFilter.dir/ThresholdImageFilter.cxx.o.requires

.PHONY : CMakeFiles/ThresholdImageFilter.dir/requires

CMakeFiles/ThresholdImageFilter.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ThresholdImageFilter.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ThresholdImageFilter.dir/clean

CMakeFiles/ThresholdImageFilter.dir/depend:
	cd /Applications/ITK_projects/CSCI6850_P1/Bin/ThresholdImageFilter_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Applications/ITK_projects/CSCI6850_P1/Source/Threshold_Image_Filter /Applications/ITK_projects/CSCI6850_P1/Source/Threshold_Image_Filter /Applications/ITK_projects/CSCI6850_P1/Bin/ThresholdImageFilter_build /Applications/ITK_projects/CSCI6850_P1/Bin/ThresholdImageFilter_build /Applications/ITK_projects/CSCI6850_P1/Bin/ThresholdImageFilter_build/CMakeFiles/ThresholdImageFilter.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ThresholdImageFilter.dir/depend

