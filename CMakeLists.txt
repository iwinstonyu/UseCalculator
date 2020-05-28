cmake_minimum_required(VERSION 2.8)

project(UseCalculator)

#set(CMAKE_PREFIX_PATH ${CMAKE_PREFIX_PATH} "E:/GitRepo/Calculator/Install")

find_package(Calculator REQUIRED
	PATHS "E:/GitRepo/Calculator/Install")

add_executable(${PROJECT_NAME} ${CMAKE_SOURCE_DIR}/Src/Main.cpp)

target_link_libraries(${PROJECT_NAME} Calculator)


