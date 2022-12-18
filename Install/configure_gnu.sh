#!/bin/sh
# CONFIG_SHELL=/usr/bin/env bash ./configure --prefix=$HOME
CONFIG_SHELL=/bin/bash ./configure CONFIG_SHELL=/bin/bash && make && sudo make install || { CONFIG_SHELL=/usr/bin/env bash ./configure --prefix=$HOME; }
