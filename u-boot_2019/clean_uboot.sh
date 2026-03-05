#!/bin/bash

echo "----------------------------------"
echo "Cleaning U-Boot Build Files"
echo "----------------------------------"

# Go to current directory
cd "$(dirname "$0")" || exit

echo "Running make distclean..."
make distclean

echo "Cleaning completed!"
