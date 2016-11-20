#!/bin/bash

echo "______________________________"
echo "| this is the install script |"
echo "------------------------------"
whiptail --msgbox "if you want to continue with the install hit yes ok if not then press ctrl+c" 30 60

sudo apt-get install toilet
