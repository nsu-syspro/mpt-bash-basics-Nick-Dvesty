#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <archive>"
    exit 1
fi

archive=$1
output_dir="${archive}.unpacked"

if [ ! -d "$output_dir" ]; then
    mkdir "$output_dir"
fi

tar -xvf "$archive" -C "$output_dir"
