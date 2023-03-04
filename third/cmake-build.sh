#!/usr/bin/env bash
SOURCE_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}) && pwd)
cd ${SOURCE_DIR}

BLUE="\033[34m"
END="\033[0m"

########################################
# Static Link library with CMakeLists.txt
########################################
echo -e "${BLUE}Static Link library CMakeLists.txt${END}"
mkdir -p ${SOURCE_DIR}/cmake_build
cd ${SOURCE_DIR}/cmake_build
cmake -DGREETINGS_BUILD_SHARED_LIBS=OFF .. && make


##########################################
# Shared (Dynamic) Link library with CMakeLists.txt
##########################################
echo -e "${BLUE}Shared (Dynamic) Link library CMakeLists.txt${END}"
mkdir -p ${SOURCE_DIR}/cmake_build
cd ${SOURCE_DIR}/cmake_build
cmake -DGREETINGS_BUILD_SHARED_LIBS=ON .. && make
