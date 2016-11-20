#!/bin/bash
echo "please enter your name for the chat"
read -p "Username>> " username
echo "your name is \"$username"
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

border "$username| $message" >> /home/null_b0n3s/Desktop/Github/NebulaOffice/PinBoardFiles/wall
done

while true; do 
