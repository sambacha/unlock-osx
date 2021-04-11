#!/bin/bash

#curl -O https://ftp.gnu.org/gnu/libtool/libtool-2.4.6.tar.gz
#tar -xf libtool-2.4.6.tar.gz


curl -O https://ftp.gnu.org/pub/gnu/gettext/gettext-0.21.tar.xz
curl -O https://ftp.gnu.org/gnu/bash/bash-5.1.tar.gz
tar -xf bash-5.1.tar.gz
cd bash-5.1
./configure
make
sudo make install
/usr/local/bin/bash --version
sudo rm -rf /bin/bash
sudo mv /usr/local/bin/bash /bin/bash
/bin/bash --version


echo "Installing OpenSSL 1.1.1k..."
wget https://www.openssl.org/source/openssl-1.1.1k.tar.gz
tar -xf openssl-1.1.1k.tar.gz
cd openssl-1.1.1k
./configure
make
# do not skip make tests, its needed for install
make tests
sudo make install
sudo mv /usr/bin/openssl /usr/bin/openssl-darwin
sudo mv /usr/local/bin/openssl /usr/bin/openssl
/usr/bin/openssl version
# @returns: OpenSSL 1.1.1k 25 Mar 2021
# Following commands are for making sure Homebrew knows we got OpenSSL and not LibraSSL
mkdir -p /usr/local/Cellar
touch /usr/local/Cellar/openssl@1.1
ln -s /usr/local/Cellar/openssl@1.1 /usr/bin/openssl

echo 'export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"' >> /Users/sbacha/.bash_profile
echo 'export PATH="/usr/local/bin/openssl/bin:$PATH"' >> /Users/sbacha/.bash_profile

# For compilers to find openssl@1.1 you may need to set:
export LDFLAGS="-L/usr/local/bin/openssl/lib"
export CPPFLAGS="-I/usr/local/bin/openssl/include"

# For pkg-config to find openssl@1.1 you may need to set:
export PKG_CONFIG_PATH="/usr/local/bin/openssl/pkgconfig"


sudo mount -uw /
sudo chown -R $(whoami) /nix
sudo chown -R $(whoami) /usr/local
ls -a /usr/local/sbin
#.       ..      .keepme
cd /usr/local
sudo chown -R $(whoami) $(brew --prefix)/*
sudo launchctl setenv NIX_SSL_CERT_FILE /etc/ssl/my-certificate-bundle.crt
sudo launchctl kickstart -k system/org.nixos.nix-daemon
cat < EOF>> ~/.bash_profile
export PATH="$PATH:/usr/local/bin/"
export PATH=$PATH:/usr/local/sbin
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
EOF
