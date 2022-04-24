#!/bin/sh
CONFIG_SHELL=/bin/bash ./configure CONFIG_SHELL=/bin/bash && make && sudo make install || {
CONFIG_SHELL=/usr/env/bin bash ./configure --prefix=$HOME
}
