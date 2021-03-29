#!/bin/bash

homefolder="$(mdls -raw -name kMDItemFSCreationDate $HOME | awk '{ print $1 }')"

if [[ "$homefolder" == $(date +"%Y-%m-%d") ]]; then

  echo "Created today!"

fi

if [[ "$homefolder" != $(date +"%Y-%m-%d") ]]; then

  echo "Not created today!"

fi
