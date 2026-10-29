#!/bin/bash
set -euo pipefail
export PATH=$(pwd)/toolchain/clang/host/linux-x86/clang-r450784e/bin:$PATH
export PATH=$(pwd)/toolchain/build/kernel/build-tools/path/linux-x86/:$PATH
unset HOSTCFLAGS HOSTLDFLAGS
export HOSTCC=gcc
export HOSTCXX=g++

export DTC_FLAGS="-@"
export PLATFORM_VERSION=14
export ANDROID_MAJOR_VERSION=u
export LLVM=1
export DEPMOD=depmod
export ARCH=arm64
export TARGET_SOC=s5e9830
make exynos9830-y2s_defconfig
make
