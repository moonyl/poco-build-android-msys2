#! /bin/bash

NDK_PATH=${NDK_PATH:=/c/Users/user/AppData/Local/Android/sdk/ndk-bundle}
INSTALL_TOOLCHAIN=$(pwd)/toolchain
pushd $(pwd)
cd ndk_toolchain
INSTALL_DIR=${INSTALL_TOOLCHAIN} NDK_DIR=${NDK_PATH} ./make-toolchain.sh
popd