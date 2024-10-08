message("__ Using Toolchain 'Linux_MinGW_Win64' __")

message(STATUS "Setting C compiler to /usr/bin/x86_64-w64-mingw32-gcc")
set(CMAKE_C_COMPILER "/usr/bin/x86_64-w64-mingw32-gcc")

message(STATUS "Setting C++ compiler to /usr/bin/x86_64-w64-mingw32-g++")
set(CMAKE_CXX_COMPILER "/usr/bin/x86_64-w64-mingw32-g++")

set(APP_SYSTEM_TARGET "Windows")
set(APP_SYSTEM_ARCH "x86_64")

if (EXISTS "${Z_VCPKG_ROOT_DIR}/installed/x64-mingw-dynamic")
    include_directories("${Z_VCPKG_ROOT_DIR}/installed/x64-mingw-dynamic/include")
elseif (EXISTS "${Z_VCPKG_ROOT_DIR}/installed/x64-mingw-static")
    include_directories("${Z_VCPKG_ROOT_DIR}/installed/x64-mingw-static/include")
else ()
    message(FATAL_ERROR "OsintgramCXX Cross-Compiler Toolchain Error: Could not determine the VCPKG installation type between x64-mingw-dynamic and x64-mingw-static")
endif ()