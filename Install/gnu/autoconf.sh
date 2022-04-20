#!/bin/sh
wget http://mirror.us-midwest-1.nexcess.net/gnu/autoconf/autoconf-2.71.tar.xz
tar -xf autoconf-latest.tar.gz
cd autoconf-latest/
cd autoconf-2.71
chmod -R u+w $(whoami) /usr/local
chmod -R u+w /usr/local
CONFIG_SHELL=/usr/bin/env bash ./configure CONFIG_SHELL=/usr/bin/env bash
