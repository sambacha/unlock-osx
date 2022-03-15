#!/usr/bin/env bash


# Install Bash v5.1 and replace Root Shell
curl -O https://ftp.gnu.org/gnu/bash/bash-5.1.tar.gz
tar -xf bash-5.1.tar.gz
cd bash-5.1 || exit
./configure
make
sudo make install
/usr/local/bin/bash --version
sudo rm -rf /bin/bash
sudo mv /usr/local/bin/bash /bin/bash
/bin/bash --version


NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# you must have homebrew installed and be using bash for your shell, you can use zsh (that is the default)

# bash --version does not return the actual tty env your in
echo $BASH_VERSION
brew --version || exit 1

BREW_HOME=$(brew --prefix)

# for cython
echo "installing gnu core utils and gcc"
brew install core-utils
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
brew install gcc
brew update

# for libc6-dev header files
brew install openssl

brew update
echo "installing python env manager..."
brew install pyenv
sleep 1
curl -L https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
exec $SHELL


# needed for proper dylib
echo "configuring python install..."
env PYTHON_CONFIGURE_OPTS="--enable-framework" pyenv install 3.9.0

# python
export PATH="${BREW_HOME}/opt/python/libexec/bin:$PATH"
unset BREW_HOME



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

