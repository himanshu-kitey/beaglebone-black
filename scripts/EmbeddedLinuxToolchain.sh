#!/bin/bash

echo "=============================================="
echo " Embedded Linux GNU Toolchain Setup Script"
echo "=============================================="

# Update system
echo "Updating package list..."
sudo apt update

echo "Installing required packages..."

sudo apt install -y \
build-essential \
gcc \
g++ \
make \
cmake \
git \
vim \
wget \
curl \
libncurses-dev \
flex \
bison \
libssl-dev \
u-boot-tools \
device-tree-compiler \
libelf-dev \
bc \
cpio \
rsync \
python3 \
python3-pip \
unzip \
ctags \
gcc-arm-linux-gnueabihf \
g++-arm-linux-gnueabihf

echo ""
echo "=============================================="
echo " Installation Completed Successfully!"
echo "=============================================="

# Verify installation
echo ""
echo "Verifying toolchain..."

arm-linux-gnueabihf-gcc --version
ctags --version

echo ""
echo "Environment Ready for:"
echo "- Linux Kernel Build"
echo "- U-Boot Build"
echo "- Device Driver Development"
echo "- Cross Compilation for ARM"
echo ""

