@echo off

if exist Build rd /q /s Build
mkdir Build
cd Build
cmake ..

pause