@echo off

if exist Build rd /q /s Build
mkdir Build
cd Build
cmake -DCALCULATOR_ROOT=E:/GitRepo/Calculator/Install -DCMAKE_UTILITY_ROOT=E:\GitRepo\CMakeUtility ..

pause