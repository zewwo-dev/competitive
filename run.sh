#!/bin/bash

dir="/home"
arch="aarch64" # aarch64, x86_64

if [ -z "$1" ]; then
  cd $dir && mkdir -p build && g++ main.cpp -o build/main -std=c++17 -O2 -Wall -lm --static -pipe && build/main
elif [ "${1,,}" = "time" ]; then
  cd $dir && mkdir -p build && g++ main.cpp -o build/main -std=c++17 -O2 -Wall -lm --static -pipe
  time build/main
elif [ "${1,,}" = "precompile" ]; then
  cd "/usr/include/$arch-linux-gnu/c++/14/bits" && g++ stdc++.h -std=c++17 -O2
fi
