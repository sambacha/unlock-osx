#!/bin/bash
# osx comes with nano 2.0.1
# latest nano version is 5.6.1
wget https://www.nano-editor.org/dist/v5/nano-5.6.1.tar.gz
tar -xf nano-5.6.1.tar.gz
rm nano-5.6.1.tar.gz
rm -rf /usr/bin/nano
cd nano-5.6.1
CONFIG_SHELL=/bin/bash ./configure CONFIG_SHELL=/bin/bash && make && sudo make install
sudo mv /usr/local/bin/nano /usr/bin/nano
