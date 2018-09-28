cmake_minimum_required(VERSION 3.10)

find_package(ITK REQUIRED)
include(${ITK_USE_FILE})

add_executable(ThresholdImageFilter ThresholdImageFilter.cxx)

target_link_libraries(ThresholdImageFilter ${ITK_LIBRARIES})
