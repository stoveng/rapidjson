binDir = "bin/"
tempDir = "temp/"

project "rapidjson"
	kind "StaticLib"
	language "C++"

	targetdir (binDir .. outputDir)
	objdir (tempDir .. outputDir)

	files
	{
		"include/**.h",
		"include/**.hpp"
	}
	
	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
