cmake_minimum_required (VERSION 3.10)

project ("HazelAudio-Examples" VERSION 0.1 DESCRIPTION "Example application using the HazelAudio library")

add_executable(
   ${PROJECT_NAME}
   "src/HazelAL-Example.cpp"
)

set_target_properties(
   ${PROJECT_NAME} PROPERTIES
   CXX_STANDARD 17
   VERSION ${PROJECT_VERSION}
)

target_link_libraries(
   ${PROJECT_NAME} PRIVATE
   HazelAudio
)

add_custom_command(
  TARGET ${PROJECT_NAME} POST_BUILD
  COMMAND ${CMAKE_COMMAND} -E copy_directory ${CMAKE_CURRENT_SOURCE_DIR}/assets ${CMAKE_CURRENT_BINARY_DIR}/assets
)
