cmake_minimum_required(VERSION 3.2)
project(test_cmake CXX)
# decide either static build or dynamic build with turning DBUILD_SHARED_LIBS "ON", "OFF"
add_library(greetings hello.cpp good_morning.cpp)
add_executable(a.out main.cpp)
# link libgreetings.a and libgreetings.so to a.out
target_link_libraries(a.out greetings)
