cmake_minimum_required (VERSION 3.10)

project ("libogg" VERSION 0.1 DESCRIPTION "libogg for use in HazelAudio")

add_library(
	${PROJECT_NAME} STATIC
	"include/ogg/ogg.h"
	"include/ogg/os_types.h"
	"src/bitwise.c"
	"src/framing.c"
)

target_compile_definitions(
	${PROJECT_NAME} PRIVATE
	"LIBOGG_EXPORTS"
)

if(WIN32)
	target_compile_definitions(
		${PROJECT_NAME} PRIVATE
		"WIN32"
		"NDEBUG"
		"_WINDOWS"
		"_USRDLL"
	)
endif()

target_include_directories(
	${PROJECT_NAME} PUBLIC
	"include"
)
