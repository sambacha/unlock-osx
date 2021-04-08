#!/bin/bash

set -e

CONTENTS=$(tesseract -c language_model_penalty_non_dict_word=0.8 --tessdata-dir /usr/local/share/tessdata/ "$1" stdout -l eng | xml esc)

hex=$((cat <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<string>$CONTENTS</string>
</plist>
EOF
) | plutil -convert binary1 - -o - | xxd -p | tr -d '\n')
xattr -w -x com.apple.metadata:kMDItemFinderComment "$hex" "$1"
mdimport "$1"
