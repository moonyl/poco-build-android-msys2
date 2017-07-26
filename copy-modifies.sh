#! /bin/bash

if [ $(uname) = "MSYS_NT-10.0" ]; then
cp modifies/configure Poco-1.7.3/
cp modifies/global Poco-1.7.3/build/rules/
fi
cp modifies/Android Poco-1.7.3/build/config/
