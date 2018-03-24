cmake_minimum_required(VERSION 3.9)

find_package(ITK REQUIRED)
include(${ITK_USE_FILE})

add_executable(3DTransform 3DTransform.cxx)

target_link_libraries(3DTransform ${ITK_LIBRARIES})
