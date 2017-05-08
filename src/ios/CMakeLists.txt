# Standard setup
cmake_minimum_required (VERSION 2.8)
project (LiveSDKlib CXX C)

# Includes
include_directories (${LiveSDKlib_SOURCE_DIR})

# Source files
set (SRC
	../HelloWorld.cpp
    LiveSDKiOSApi.mm
)

# Headers
set (HDR
	../HelloWorld.h
    LiveSDKiOSApi.h
)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fobjc-abi-version=2 -fobjc-arc -std=gnu++11 -stdlib=libc++ -isysroot ${CMAKE_OSX_SYSROOT}")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fobjc-abi-version=2 -fobjc-arc -isysroot ${CMAKE_OSX_SYSROOT}")

IF (${SIMULATOR})
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -mios-simulator-version-min=6.0")
ENDIF()

# Library
add_library (LiveSDKlib STATIC ${SRC} ${HDR})
set_xcode_property (LiveSDKlib GCC_GENERATE_DEBUGGING_SYMBOLS YES)

# Installation
set (CMAKE_INSTALL_PREFIX "${LiveSDKlib_SOURCE_DIR}/../../package/ios")
install (TARGETS LiveSDKlib DESTINATION .)
install (FILES LiveSDKiOSApi.h DESTINATION .)
