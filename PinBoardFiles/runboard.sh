#!/bin/bash

### Set initial time of file
LTIME=`stat -c %Z PinBoardFiles/wall`

while true    
do
   ATIME=`stat -c %Z PinBoardFiles/wall`

   if [[ "$ATIME" != "$LTIME" ]]
   then    
       clear && cat PinBoardFiles/wall
       LTIME=$ATIME
   fi
   sleep 5
done
