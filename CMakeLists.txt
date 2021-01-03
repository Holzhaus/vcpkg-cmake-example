cmake_minimum_required(VERSION 3.18)
project(example)

find_package(FFTW3 CONFIG REQUIRED)

add_executable(example src/example.cpp)
target_link_libraries(example PRIVATE FFTW3::fftw3)
