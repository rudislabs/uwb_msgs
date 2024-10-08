cmake_minimum_required(VERSION 3.8)
project(uwb_msgs)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)

set(msg_files
  "msg/PhaseDifferenceOfArrival.msg"
  "msg/TwoWayRanging.msg"
  "msg/DownLinkTimeDifferenceOfArrival.msg"
  "msg/UltraWideBandRanging.msg"
  "msg/UltraWideBandPose.msg"
  "msg/UltraWideBandPoses.msg"
)
rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  DEPENDENCIES std_msgs
  DEPENDENCIES geometry_msgs
  DEPENDENCIES sensor_msgs
  ADD_LINTER_TESTS
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()
