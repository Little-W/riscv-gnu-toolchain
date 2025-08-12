#!/bin/bash

# install OS prerequisites
dpkg --add-architecture i386
apt update
DEBIAN_FRONTEND=noninteractive apt install -y autoconf automake autotools-dev curl python3 python3-pip python3-tomli libmpc-dev libmpfr-dev \
            libgmp-dev gawk build-essential bison flex gperf libtool \
            patchutils bc zlib1g-dev libexpat-dev git ninja-build cmake libglib2.0-dev expect \
            device-tree-compiler python3-pyelftools libslirp-dev libzstd-dev texinfo install-info

# 确保 makeinfo 可用
command -v makeinfo || { echo "makeinfo not found!"; exit 1; }
