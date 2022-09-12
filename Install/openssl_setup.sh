#!usr/bin/env bash
sysctl hw.optional.rdrand
git clone https://github.com/openssl/openssl --recursive
cd openssl
git gc
# v3.0.5
git checkout ad4910fad22d57c6d685b0ca83bdb7b2bf69d8fd

./Configure darwin64-x86_64-cc -no-hw -no-engine -no-comp -no-shared -no-dso -no-ssl2 -no-ssl3 --openssldir=…
sleep 1
make
