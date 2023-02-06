for SNAPSHOT in $(tmutil listlocalsnapshots / | egrep '[0-9]{4}\-[0-9]{2}\-[0-9]{2}\-[0-9]{6}' -o | tail -r); do tmutil deletelocalsnapshots $SNAPSHOT; done
