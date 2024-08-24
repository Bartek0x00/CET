#!/bin/sh

clang $1 -std=c23
./a.out
rm a.out
