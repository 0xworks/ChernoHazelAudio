cmake_minimum_required (VERSION 3.10)

add_subdirectory("vendor/libogg")
add_subdirectory("vendor/OpenAL-Soft")
add_subdirectory("vendor/Vorbis")

project ("HazelAudio" VERSION 0.1 DESCRIPTION "Audio library designed for use with the Hazel Engine")

add_library(
	${PROJECT_NAME} STATIC
	"vendor/minimp3/minimp3.h"
	"vendor/minimp3/minimp3_ex.h"
	"src/alhelpers.h"
	"src/alhelpers.cpp"
	"src/HazelAudio.h"
	"src/HazelAudio.cpp"
)

set_target_properties(
	${PROJECT_NAME} PROPERTIES
	CXX_STANDARD 17
	VERSION ${PROJECT_VERSION}
)

target_compile_definitions(
	${PROJECT_NAME} PUBLIC
	"_CRT_SECURE_NO_WARNINGS",
	"AL_LIBTYPE_STATIC"
)

target_include_directories(
	${PROJECT_NAME} PRIVATE

	"vendor/minimp3"
)

target_include_directories(
	${PROJECT_NAME} PUBLIC
	"src"
)

target_link_libraries(
	${PROJECT_NAME} PUBLIC
	"libogg"
	"OpenAL-Soft"
	"Vorbis"
)
