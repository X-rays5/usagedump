# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.19

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\X-ray\source\repos\usagedump

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\X-ray\source\repos\usagedump\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\usagedump.dir\depend.make

# Include the progress variables for this target.
include CMakeFiles\usagedump.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\usagedump.dir\flags.make

CMakeFiles\usagedump.dir\main.cpp.obj: CMakeFiles\usagedump.dir\flags.make
CMakeFiles\usagedump.dir\main.cpp.obj: ..\main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\X-ray\source\repos\usagedump\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/usagedump.dir/main.cpp.obj"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\usagedump.dir\main.cpp.obj /FdCMakeFiles\usagedump.dir\ /FS -c C:\Users\X-ray\source\repos\usagedump\main.cpp
<<

CMakeFiles\usagedump.dir\main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/usagedump.dir/main.cpp.i"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx64\x64\cl.exe > CMakeFiles\usagedump.dir\main.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\X-ray\source\repos\usagedump\main.cpp
<<

CMakeFiles\usagedump.dir\main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/usagedump.dir/main.cpp.s"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\usagedump.dir\main.cpp.s /c C:\Users\X-ray\source\repos\usagedump\main.cpp
<<

# Object files for target usagedump
usagedump_OBJECTS = \
"CMakeFiles\usagedump.dir\main.cpp.obj"

# External object files for target usagedump
usagedump_EXTERNAL_OBJECTS =

usagedump.exe: CMakeFiles\usagedump.dir\main.cpp.obj
usagedump.exe: CMakeFiles\usagedump.dir\build.make
usagedump.exe: CMakeFiles\usagedump.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\X-ray\source\repos\usagedump\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable usagedump.exe"
	"C:\Program Files\JetBrains\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe" -E vs_link_exe --intdir=CMakeFiles\usagedump.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x64\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100190~1.0\x64\mt.exe --manifests -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1428~1.299\bin\Hostx64\x64\link.exe /nologo @CMakeFiles\usagedump.dir\objects1.rsp @<<
 /out:usagedump.exe /implib:usagedump.lib /pdb:C:\Users\X-ray\source\repos\usagedump\cmake-build-debug\usagedump.pdb /version:0.0 /machine:x64 /debug /INCREMENTAL /subsystem:console  kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<
	echo >nul && "C:\Program Files\PowerShell\7\pwsh.exe" -noprofile -executionpolicy Bypass -file C:/vcpkg/scripts/buildsystems/msbuild/applocal.ps1 -targetBinary C:/Users/X-ray/source/repos/usagedump/cmake-build-debug/usagedump.exe -installedDir C:/vcpkg/installed/x64-windows/debug/bin -OutVariable out

# Rule to build all files generated by this target.
CMakeFiles\usagedump.dir\build: usagedump.exe

.PHONY : CMakeFiles\usagedump.dir\build

CMakeFiles\usagedump.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\usagedump.dir\cmake_clean.cmake
.PHONY : CMakeFiles\usagedump.dir\clean

CMakeFiles\usagedump.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\X-ray\source\repos\usagedump C:\Users\X-ray\source\repos\usagedump C:\Users\X-ray\source\repos\usagedump\cmake-build-debug C:\Users\X-ray\source\repos\usagedump\cmake-build-debug C:\Users\X-ray\source\repos\usagedump\cmake-build-debug\CMakeFiles\usagedump.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\usagedump.dir\depend

