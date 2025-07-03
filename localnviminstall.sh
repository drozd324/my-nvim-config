#!/bin/bash

git clone https://github.com/neovim/neovim
cd neovim
# if you want build stable release
git checkout stable
make CMAKE_BUILD_TYPE=Release \
     CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/.local -DLibIntl_LIBRARY=/usr/lib/libintl.so.8 -DLibIntl_INCLUDE_DIR=/usr/include"
make install
# export PATH="$HOME/.local/bin:$PATH"
