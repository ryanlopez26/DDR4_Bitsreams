#!/bin/sh
if [ $# -ne 1 ]; then
    echo "Usage: $0 <file>" >&2
    exit 1
fi

file="$1"
if [ ! -f "$file" ]; then
    echo "Error: '$file' not found" >&2
    exit 1
fi

cp "$file" /home/rylo/DDR4_TestBench/EDF/sources/meta-zcu104-ddr4/recipes-bsp/bitstream-manual/files/System_wrapper.bit
cp "$file" /home/rylo/DDR4_TestBench/EDF/sources/meta-zcu104-ddr4/recipes-bsp/bitstream/files/system.bit
