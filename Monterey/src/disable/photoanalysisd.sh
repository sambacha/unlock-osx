#!/bin/bash
# Small change needed for Monterey. The command to disable the service is now
launchctl disable user/$UID/com.apple.photoanalysisd

# The gui changed to user. The command to kill the process is the same

launchctl kill TERM gui/$UID/com.apple.photoanalysisd
