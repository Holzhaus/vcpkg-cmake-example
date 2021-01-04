@echo on
git clone --depth=1 https://github.com/microsoft/vcpkg.git
call vcpkg\bootstrap-vcpkg.bat
.\vcpkg\vcpkg install fftw3:x64-windows-static
mkdir build
cd build
cmake -DVCPKG_TARGET_TRIPLET=x64-windows-static -DCMAKE_TOOLCHAIN_FILE=..\vcpkg\scripts\buildsystems\vcpkg.cmake ..
cmake --build .
