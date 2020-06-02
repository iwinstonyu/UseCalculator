cmake_minimum_required(VERSION 2.8)

project(UseCalculator)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_UTILITY_ROOT})
message("CMAKE_MODULE_PATH: " ${CMAKE_MODULE_PATH})
include(Common)

#set(CMAKE_PREFIX_PATH ${CMAKE_PREFIX_PATH} "E:/GitRepo/Calculator/Install")

find_package(Calculator REQUIRED
	PATHS ${CALCULATOR_ROOT}
)

m_set_vs_runtime_mt()

add_executable(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/Src/Main.cpp)

target_link_libraries(${PROJECT_NAME} Calculator)


