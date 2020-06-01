cmake_minimum_required(VERSION 2.8)

project(UseCalculator)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)

#set(CMAKE_PREFIX_PATH ${CMAKE_PREFIX_PATH} "E:/GitRepo/Calculator/Install")

foreach(flag_var
	CMAKE_C_FLAGS CMAKE_C_FLAGS_DEBUG CMAKE_C_FLAGS_RELEASE
	CMAKE_C_FLAGS_MINSIZEREL CMAKE_C_FLAGS_RELWITHDEBINFO
	CMAKE_CXX_FLAGS CMAKE_CXX_FLAGS_DEBUG CMAKE_CXX_FLAGS_RELEASE
	CMAKE_CXX_FLAGS_MINSIZEREL CMAKE_CXX_FLAGS_RELWITHDEBINFO)

	if(${flag_var} MATCHES "/MD")
		string(REGEX REPLACE "/MD" "/MT" ${flag_var} "${${flag_var}}")
	endif()
endforeach()

find_package(Calculator REQUIRED
	PATHS ${CALCULATOR_ROOT})

add_executable(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/Src/Main.cpp)

target_link_libraries(${PROJECT_NAME} Calculator)


