#!/bin/sh
spctl kext-consent disable
sudo kextcache --clear-staging
sudo kextcache -i /
# under System Security allow the System software from ${developer_name}
