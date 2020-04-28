project "HazelAudio"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	staticruntime "on"

	IncludeDir = {}
	IncludeDir["OpenALInclude"] = "vendor/OpenAL-Soft/include"
	IncludeDir["OpenALSrc"] = "vendor/OpenAL-Soft/src"
	IncludeDir["OpenALSrcCommon"] = "vendor/OpenAL-Soft/src/common"
	IncludeDir["ogg"] = "vendor/libogg/include"
	IncludeDir["Vorbis"] = "vendor/Vorbis/include"
	IncludeDir["minimp3"] = "vendor/minimp3"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"src/**.h",
		"src/**.cpp"
	}

	defines
	{
		"_CRT_SECURE_NO_WARNINGS",
		"AL_LIBTYPE_STATIC"
	}

	includedirs
	{
		"src",
		"%{IncludeDir.OpenALInclude}",
		"%{IncludeDir.OpenALSrc}",
		"%{IncludeDir.OpenALSrcCommon}",
		"%{IncludeDir.ogg}",
		"%{IncludeDir.Vorbis}",
		"%{IncludeDir.minimp3}"
	}

	links
	{
		"OpenAL-Soft",
		"Vorbis"
	}

	filter "system:windows"
		systemversion "latest"

	filter "configurations:Debug"
		defines "HZ_DEBUG"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		defines "HZ_RELEASE"
		runtime "Release"
		optimize "on"

	filter "configurations:Dist"
		defines "HZ_DIST"
		runtime "Release"
		optimize "on"
