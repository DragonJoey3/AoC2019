#!/bin/bash

rm -rf build

cmake -S . -B build -DTESTING=OFF && make -C build && clear &&  ./build/AoC_2019
