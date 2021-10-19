#!/bin/bash
# csrutil checks System Integrity Protection status on Darwin
# darwin 10.11.x+
SIP_status=`/usr/bin/csrutil status | awk '/status/ {print $5}' | sed 's/\.$//'`

  if [ $SIP_status = "disabled" ]; then
      result=Disabled
  elif [ $SIP_status = "enabled" ]; then
      result=Active
  fi
   echo "$result"
fi
