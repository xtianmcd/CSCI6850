cmake_minimum_required(VERSION 3.10)

find_package(ITK REQUIRED)
include(${ITK_USE_FILE})

add_executable(OtsuThresholdImageFilter OtsuThresholdImageFilter.cxx)

target_link_libraries(OtsuThresholdImageFilter ${ITK_LIBRARIES})
