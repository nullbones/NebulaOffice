#!/bin/bash

### Set initial time of file
LTIME=`stat -c %Z /home/null_b0n3s/Desktop/Github/NebulaOffice/PinBoardFiles/wall`

while true    
do
   ATIME=`stat -c %Z /home/null_b0n3s/Desktop/Github/NebulaOffice/PinBoardFiles/wall`

   if [[ "$ATIME" != "$LTIME" ]]
   then    
       clear && cat PinBoardFiles/wall
       LTIME=$ATIME
   fi
   sleep 5
done
