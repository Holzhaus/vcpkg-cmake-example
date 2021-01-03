@echo on
git clone --depth=1 https://github.com/microsoft/vcpkg.git
call vcpkg\bootstrap-vcpkg.bat
.\vcpkg\vcpkg install fftw3:x64-windows-static
mkdir build
cd build
cmake -DCMAKE_TOOLCHAIN_FILE=..\vcpkg\scripts\buildsystems\vcpkg.cmake ..
cmake --build .
