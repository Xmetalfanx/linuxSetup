#!/bin/bash

rootdir=$basedir
clear

ubuntuSoftFunc= . "$rootdir"/postInstalls/ubuntu/software/f_ubuntuSoftware.cfg
ubuntuFunct= . "$rootdir"/postInstalls/functions/f_ubuntu.cfg
commonFunctions= . "$rootdir"/tasks/f_common.cfg

############################################################################
echo -e 	 "1. \t Install Google Chrome"
echo -e     "2. \t Install Chromium"
echo -e     "3. \t Install Firefox"
echo -e     "4. \t Install Vivaldi\n\n"

read -p     "Your Choice?:" browserSelection

case $browserSelection in

  1) $ubuntuSoftFunc
     installChrome

  2) sudo apt install chromium-browser -y

  3) sudo apt install firefox -y

  4)
