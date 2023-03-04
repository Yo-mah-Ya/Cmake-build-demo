#!/usr/bin/env bash
SOURCE_DIR=$(cd $(dirname ${BASH_SOURCE:-$0}) && pwd)
cd ${SOURCE_DIR}

# cmake_build sources in "cmake_build" directory
mkdir -p ${SOURCE_DIR}/cmake_build && cd ${SOURCE_DIR}/cmake_build
cmake .. && make
