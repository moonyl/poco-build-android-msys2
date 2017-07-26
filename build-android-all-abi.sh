#!/bin/sh

OPEN_SSL_INC=$(cygpath -m $(pwd)/extern/openssl-1.0.2h/include)
echo ${OPEN_SSL_INC}
POCO_PREFIX=${POCO_PREFIX:=$(pwd)/Poco}
OLD_PATH=$PATH
export PATH=$(pwd)/toolchain/arm/bin:$(pwd)/toolchain/arm64/bin:$(pwd)/toolchain/x86/bin:$(pwd)/toolchain/x86_64/bin:$PATH
pushd $(pwd)
cd Poco_build_script
OPEN_SSL_INC=${OPEN_SSL_INC} POCO_PREFIX=${POCO_PREFIX} ./build.sh 1.7.3 6.1 Android
popd

export PATH=$OLD_PATH