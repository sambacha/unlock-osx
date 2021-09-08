#!/bin/sh

#//****************************************\\#
#              CONFIGURE ROOT OS
#//****************************************\\#

spctl kext-consent disable
sudo kextcache --clear-staging
sudo kextcache -i /

touch -c "/Volumes/Macintosh HD/System/Library/Extensions"




#//****************************************\\#
#               INSTALL FROM SOURCE
#//****************************************\\#
curl -O ftp://ftp.gnu.org/gnu/readline/readline-8.0.tar.gz
tar xvfz readline-8.0.tar.gz
cd readline-8.0
./configure --prefix=/usr/local/readline/8_0
make
make install

# /usr/local/include
ln -s /usr/local/readline/8_0/include/readline /usr/local/include/

# /usr/local/lib
ln -s /usr/local/readline/8_0/lib/libhistory.a /usr/local/lib/
ln -s /usr/local/readline/8_0/lib/libhistory.so /usr/local/lib/
ln -s /usr/local/readline/8_0/lib/libhistory.so.8 /usr/local/lib/
ln -s /usr/local/readline/8_0/lib/libhistory.so.8.0 /usr/local/lib/
ln -s /usr/local/readline/8_0/lib/libreadline.a /usr/local/lib/
ln -s /usr/local/readline/8_0/lib/libreadline.so /usr/local/lib/
ln -s /usr/local/readline/8_0/lib/libreadline.so.8 /usr/local/lib/
ln -s /usr/local/readline/8_0/lib/libreadline.so.8.0 /usr/local/lib/

#/usr/local/lib/pkgconfig
ln -s /usr/local/readline/8_0/lib/pkgconfig/readline.pc /usr/local/lib/pkgconfig/

export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH

cat < EOF>> ~/.bash_profile
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
export PKG_CONFIG_PATH=/usr/local/lib/pkgconfig:$PKG_CONFIG_PATH
EOF


#curl -O https://ftp.gnu.org/gnu/libtool/libtool-2.4.6.tar.gz
#tar -xf libtool-2.4.6.tar.gz
# curl -O https://ftp.gnu.org/pub/gnu/gettext/gettext-0.21.tar.xz

# Install Bash v5.1 and replace Root Shell
curl -O https://ftp.gnu.org/gnu/bash/bash-5.1.tar.gz
tar -xf bash-5.1.tar.gz
cd bash-5.1 || exit
./configure --enable-debugger --enable-readline
make
sudo make install
/usr/local/bin/bash --version
sudo rm -rf /bin/bash
sudo mv /usr/local/bin/bash /bin/bash
/bin/bash --version


echo "Installing OpenSSL 1.1.1k..."
curl -O https://www.openssl.org/source/openssl-1.1.1k.tar.gz
tar -xf openssl-1.1.1k.tar.gz
cd openssl-1.1.1k || exit
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

echo 'export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"' >> /Users/"$(whoami)"/.bash_profile
echo 'export PATH="/usr/local/bin/openssl/bin:$PATH"' >> /Users/"$(whoami)"/.bash_profile

# For compilers to find openssl@1.1 you may need to set:
export LDFLAGS="-L/usr/local/bin/openssl/lib"
export CPPFLAGS="-I/usr/local/bin/openssl/include"

# For pkg-config to find openssl@1.1 you may need to set:
export PKG_CONFIG_PATH="/usr/local/bin/openssl/pkgconfig"


sudo mount -uw /
sudo chown -R "$(whoami)" /nix
sudo chown -R "$(whoami)" /usr/local
ls -a /usr/local/sbin
#.       ..      .keepme
cd /usr/local || exit
sudo chown -R "$(whoami)" "$(brew --prefix)/*"
sudo launchctl setenv NIX_SSL_CERT_FILE /etc/ssl/my-certificate-bundle.crt
sudo launchctl kickstart -k system/org.nixos.nix-daemon
cat < EOF>> ~/.bash_profile
export PATH="$PATH:/usr/local/bin/"
export PATH="$PATH":/usr/local/sbin
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
EOF

sudo chown -R "$(whoami)" /bin/wait4path
sudo chmod +x /nix/var/nix/profiles/default/bin/nix-daemon
sudo chown -R "$(whoami)" /nix/var/nix/profiles/default/bin/nix-daemon
