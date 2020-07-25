# Install script for directory: /home/yyy/catkin_ws/src/zed-ros-wrapper/zed_wrapper

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/yyy/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/zed_wrapper/srv" TYPE FILE FILES
    "/home/yyy/catkin_ws/src/zed-ros-wrapper/zed_wrapper/srv/set_pose.srv"
    "/home/yyy/catkin_ws/src/zed-ros-wrapper/zed_wrapper/srv/reset_odometry.srv"
    "/home/yyy/catkin_ws/src/zed-ros-wrapper/zed_wrapper/srv/reset_tracking.srv"
    "/home/yyy/catkin_ws/src/zed-ros-wrapper/zed_wrapper/srv/start_svo_recording.srv"
    "/home/yyy/catkin_ws/src/zed-ros-wrapper/zed_wrapper/srv/stop_svo_recording.srv"
    "/home/yyy/catkin_ws/src/zed-ros-wrapper/zed_wrapper/srv/start_remote_stream.srv"
    "/home/yyy/catkin_ws/src/zed-ros-wrapper/zed_wrapper/srv/stop_remote_stream.srv"
    "/home/yyy/catkin_ws/src/zed-ros-wrapper/zed_wrapper/srv/set_led_status.srv"
    "/home/yyy/catkin_ws/src/zed-ros-wrapper/zed_wrapper/srv/toggle_led.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/zed_wrapper/cmake" TYPE FILE FILES "/home/yyy/catkin_ws/build/zed-ros-wrapper/zed_wrapper/catkin_generated/installspace/zed_wrapper-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/yyy/catkin_ws/devel/include/zed_wrapper")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/yyy/catkin_ws/devel/share/roseus/ros/zed_wrapper")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/yyy/catkin_ws/devel/share/common-lisp/ros/zed_wrapper")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/yyy/catkin_ws/devel/share/gennodejs/ros/zed_wrapper")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/yyy/catkin_ws/devel/lib/python2.7/dist-packages/zed_wrapper")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/yyy/catkin_ws/devel/lib/python2.7/dist-packages/zed_wrapper")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/zed_wrapper" TYPE FILE FILES "/home/yyy/catkin_ws/devel/include/zed_wrapper/ZedConfig.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/zed_wrapper" TYPE FILE FILES "/home/yyy/catkin_ws/devel/lib/python2.7/dist-packages/zed_wrapper/__init__.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/yyy/catkin_ws/devel/lib/python2.7/dist-packages/zed_wrapper/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/zed_wrapper" TYPE DIRECTORY FILES "/home/yyy/catkin_ws/devel/lib/python2.7/dist-packages/zed_wrapper/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/yyy/catkin_ws/build/zed-ros-wrapper/zed_wrapper/catkin_generated/installspace/zed_wrapper.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/zed_wrapper/cmake" TYPE FILE FILES "/home/yyy/catkin_ws/build/zed-ros-wrapper/zed_wrapper/catkin_generated/installspace/zed_wrapper-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/zed_wrapper/cmake" TYPE FILE FILES
    "/home/yyy/catkin_ws/build/zed-ros-wrapper/zed_wrapper/catkin_generated/installspace/zed_wrapperConfig.cmake"
    "/home/yyy/catkin_ws/build/zed-ros-wrapper/zed_wrapper/catkin_generated/installspace/zed_wrapperConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/zed_wrapper" TYPE FILE FILES "/home/yyy/catkin_ws/src/zed-ros-wrapper/zed_wrapper/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libZEDWrapper.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libZEDWrapper.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libZEDWrapper.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/yyy/catkin_ws/devel/lib/libZEDWrapper.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libZEDWrapper.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libZEDWrapper.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libZEDWrapper.so"
         OLD_RPATH "/usr/local/zed/lib:/opt/ros/kinetic/lib:/usr/local/cuda-10.0/lib64:/usr/local/cuda/lib64:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libZEDWrapper.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/zed_wrapper/zed_wrapper_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/zed_wrapper/zed_wrapper_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/zed_wrapper/zed_wrapper_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/zed_wrapper" TYPE EXECUTABLE FILES "/home/yyy/catkin_ws/devel/lib/zed_wrapper/zed_wrapper_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/zed_wrapper/zed_wrapper_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/zed_wrapper/zed_wrapper_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/zed_wrapper/zed_wrapper_node"
         OLD_RPATH "/usr/local/zed/lib:/home/yyy/catkin_ws/devel/lib:/opt/ros/kinetic/lib:/usr/local/cuda-10.0/lib64:/usr/local/cuda/lib64:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/zed_wrapper/zed_wrapper_node")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/zed_wrapper" TYPE FILE FILES "/home/yyy/catkin_ws/src/zed-ros-wrapper/zed_wrapper/nodelet_plugins.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/zed_wrapper" TYPE DIRECTORY FILES
    "/home/yyy/catkin_ws/src/zed-ros-wrapper/zed_wrapper/launch"
    "/home/yyy/catkin_ws/src/zed-ros-wrapper/zed_wrapper/urdf"
    "/home/yyy/catkin_ws/src/zed-ros-wrapper/zed_wrapper/params"
    )
endif()

