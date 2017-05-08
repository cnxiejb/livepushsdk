#!/bin/bash
cd build
rm -rf *
set -e
cmake .. -DCMAKE_TOOLCHAIN_FILE=../toolchain/iOS.cmake -DIOS_PLATFORM=SIMULATOR64
make
make install
