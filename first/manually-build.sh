#!/usr/bin/env bash
SOURCE_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}) && pwd)
cd ${SOURCE_DIR}

mkdir -p ${SOURCE_DIR}/manual_build
cd ${SOURCE_DIR}/manual_build

# compile source files to object files（main.o, hello.o)
g++ -c ../main.cpp ../hello.cpp
# link object files to executable file(main) which default name is "a.out"
g++ -o main main.o hello.o

# make the executable file without object files
g++ ../main.cpp ../hello.cpp -o main
