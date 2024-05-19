#!/bin/bash

if [ -t 0 ]; then
    echo "Usage: provide input via stdin" >&2
    exit 1
fi

input=$(cat)
reversed=$(echo "$input" | tac)
echo "$reversed"
