cmake_minimum_required(VERSION 3.0.2)
project(set_arena)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  roscpp
  std_msgs
)


catkin_package(
 INCLUDE_DIRS include
 LIBRARIES set_arena
 CATKIN_DEPENDS geometry_msgs roscpp std_msgs
 DEPENDS system_lib
)


include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

add_executable(set_arena_node src/set_arena.cpp)
target_link_libraries(set_arena_node ${catkin_LIBRARIES})
