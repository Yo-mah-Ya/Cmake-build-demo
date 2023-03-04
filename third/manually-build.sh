#!/usr/bin/env bash
SOURCE_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}) && pwd)
cd ${SOURCE_DIR}

BLUE="\033[34m"
END="\033[0m"

##########################################
# manually build Static Link library
##########################################
echo -e "${BLUE}manually build Static Link library${END}"
mkdir -p ${SOURCE_DIR}/manual_build
cd ${SOURCE_DIR}/manual_build
# make object files
g++ -c ../lib/hello.cpp ../lib/good_morning.cpp -I../include
# make static library with object files
# r -> add member , v -> verbose s -> add index to archive
ar rvs libgreetings.a hello.o good_morning.o
# g++ main.cpp -I path to "include" directory -L path to "static library" -l the file name of static library
g++ ../test/main.cpp -I../include -L. -lgreetings -Xlinker -rpath -Xlinker ../lib


##########################################
# manually build Shared (Dynamic) Link library
##########################################
# echo -e "${BLUE}manually build Shared (Dynamic) Link library${END}"
# mkdir -p ${SOURCE_DIR}/manual_build
# cd ${SOURCE_DIR}/manual_build
# # make object files
# g++ -fPIC -c ../lib/hello.cpp ../lib/good_morning.cpp -I../include
# # make shared libraries with object files
# g++ -shared *.o -o libgreetings.so
# # g++ main.cpp -I path to "include" directory -L path to "static library" -l the file name of static library
# g++ ../test/main.cpp -I../include -L. -lgreetings -Xlinker -rpath -Xlinker ../lib
