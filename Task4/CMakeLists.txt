cmake_minimum_required(VERSION 3.20)
project(TransformationManager)

#===============================================================================
# 1. LOAD LLVM CONFIGURATION
#===============================================================================
# Set this to a valid LLVM installation dir
set(LT_LLVM_INSTALL_DIR "" CACHE PATH "/usr")

# Add the location of LLVMConfig.cmake to CMake search paths (so that
# find_package can locate it)
list(APPEND CMAKE_PREFIX_PATH "${LT_LLVM_INSTALL_DIR}/lib/cmake/llvm/")
find_package(LLVM 17 CONFIG)

# Set cpp standard, compiler, compiler flags, create compile_commands.json
set(CMAKE_CXX_COMPILER "/usr/bin/clang++-17")
set(CMAKE_CXX_STANDARD 20 CACHE STRING "")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -std=c++20")
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")
message("LLVM STATUS:
    Definitions: ${LLVM_DEFINITIONS}
    Includes: ${LLVM_INCLUDE_DIRS}
    Libraries: ${LLVM_LIBRARY_DIRS}
    Targets: ${LLVM_TARGETS_TO_BUILD}"
)
message(STATUS "Using complier: ${CMAKE_CXX_COMPILER}")

# HelloWorld includes headers from LLVM - update the include paths accordingly
include_directories(SYSTEM ${LLVM_INCLUDE_DIRS})
link_directories(${LLVM_LIBRARY_DIRS})
add_definitions(${LLVM_DEFINITIONS})

# LLVM is normally built without RTTI. Be consistent with that.
if(NOT LLVM_ENABLE_RTTI)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fno-rtti")
endif()

#===============================================================================
# 3. ADD THE TARGET
#===============================================================================
set(DYN_LIB_NAME BlockTransform)
add_library(${DYN_LIB_NAME} SHARED src/TransformationPass/BasicBlockTransform.cpp)