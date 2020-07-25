project(regis)
cmake_minimum_required(VERSION 3.3)
set (CMAKE_CXX_STANDARD 11)

set(Super4PCS_DIR /usr/local/lib/cmake)
find_package(Super4PCS REQUIRED)
include_directories(${Super4PCS_INCLUDE_DIR})
link_directories(${Super4PCS_LIB_DIR})

find_package(PCL 1.8 REQUIRED)
include_directories(${PCL_INCLUDE_DIRS})
link_directories(${PCL_LIBRARY_DIRS})
add_definitions(${PCL_DEFINITIONS})


find_package( Eigen3 REQUIRED )
include_directories( ${EIGEN3_INCLUDE_DIR} )

find_package(OpenCV REQUIRED)
include_directories(include ${catkin_INCLUDE_DIRS})
add_executable (regis registration.cpp)
target_link_libraries (regis ${PCL_LIBRARIES})
target_link_libraries(regis ${catkin_LIBRARIES})
target_link_libraries(regis ${Super4PCS_LIBRARIES})
install( TARGETS ${PROJECT_NAME} RUNTIME DESTINATION . )
