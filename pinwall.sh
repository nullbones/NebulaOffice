#!/bin/bash

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

border "$message"
done
