http://mirror.us-midwest-1.nexcess.net/gnu/autoconf/autoconf-latest.tar.gz
tar autoconf-latest.tar.gz
cd autoconf-2.69
chmod -R u+w $(whoami) /usr/local
chmod -R u+w /usr/local
CONFIG_SHELL=/bin/bash ./configure CONFIG_SHELL=/bin/bash
