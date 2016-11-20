#!/bin/bash

# Get the directory of the script
scriptDir="$(dirname $(readlink -f $0))"
### Set initial time of filer
LTIME="$(stat -c %Z ${scriptDir}/history)"

while true; do
   ATIME="$(stat -c %Z ${scriptDir}/history)"
   if [[ "$ATIME" != "$LTIME" ]]; then
       clear && cat "${scriptDir}/history"
       LTIME="${ATIME}"
   fi
   
done


