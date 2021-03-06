#!/bin/sh
cc src/tools/txt2c.c -o src/tools/txt2c
src/tools/txt2c src/base.lua src/tools.lua src/driver_gcc.lua src/driver_cl.lua src/driver_clang.lua src/driver_solstudio.lua src/driver_xlc.lua > src/internal_base.h
cc -D_ALL_SOURCE -D_INCLUDE_POSIX_SOURCE src/*.c src/lua/*.c -o bam -I src/lua -lm -lpthread -ldl -mt +DD64 $*
