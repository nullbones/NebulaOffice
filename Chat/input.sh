#!/bin/bash
toilet -F border -F gay PinWall
echo "A Termanal Chat Client For Linux"
scriptDir="$(dirname $(readlink -f $0))"
echo "please enter your name for the chat"
read -p "Username>> " username
echo "your name is $username"
echo "GREEN, RED, BLUE, PURPLE, CYAN"
read -p "Pick the Color your username wants to be! > " color
if [[ $color == RED ]]; 
then COLOR='\033[0;31m'
elif [[ $color == GREEN ]]; 
then COLOR='\033[0;32m'
elif [[ $color == BLUE ]]; 
then COLOR='\033[0;34m'
elif [[ $color == PURPLE ]]; 
then COLOR='\033[0;35m'
elif [[ $color == CYAN ]]; 
then COLOR='\033[0;36m'
else
COLOR='\033[0m'
fi
echo "!Server! $username Has joined The Chat!" >> "${scriptDir}/history"
while true; do read -p "PostMessage~# " message
#toilet -F border -F gay "$message"
border()
{
    title="| $1 |"
    edge=$(echo "$title" | sed 's/./-/g')
    echo "$edge"
    echo "$title"
    echo "$edge"
}

if [[ $message == "clearlog" ]];
then sudo rm ${scriptDir}/history && toilet -F border -F gay "Deleted" >> "${scriptDir}/history"
elif [[ $message == "leave" ]];
then echo "!Server! $username has left the Chat" >> "${scriptDir}/history" && exit 0
fi
echo -e "${COLOR}[$username] $message" >> "${scriptDir}/history"
done


