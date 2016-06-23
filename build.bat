mkdir build
mkdir build\Visual_Studio_12_2013

set currentdir=%cd%

mkdir build\Visual_Studio_12_2013\win32 & pushd build\Visual_Studio_12_2013\win32
cmake -G "Visual Studio 12 2013" %currentdir%
popd

rem mkdir build\Visual_Studio_12_2013\x64 & pushd build\Visual_Studio_12_2013\x64
rem cmake -G "Visual Studio 12 2013 Win64" %currentdir%
rem popd

cmake --build build\Visual_Studio_12_2013\win32
rem cmake --build build\Visual_Studio_12_2013\x64
