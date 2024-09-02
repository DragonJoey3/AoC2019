#!/bin/bash

rm -rf build

cmake -S . -B build -DTESTING=ON && make -C build && clear &&  ./build/AoC_2019
