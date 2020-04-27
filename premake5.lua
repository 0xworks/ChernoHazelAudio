workspace "HazelAudio"
	architecture "x86_64"
	startproject "HazelAudio-Examples"

	configurations
	{
		"Debug",
		"Release",
		"Dist"
	}
	
	flags
	{
		"MultiProcessorCompile"
	}

outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

group "Dependencies"
	include "HazelAudio/vendor/OpenAL-Soft"
	include "HazelAudio/vendor/libogg"
	include "HazelAudio/vendor/Vorbis"

group ""
	include "HazelAudio"
	include "HazelAudio-Examples"
