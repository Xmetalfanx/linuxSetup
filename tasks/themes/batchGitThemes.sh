#!/bin/bash

#Title : Mass Github Theme/Icon Installer Script
#Description : This script installs themes and icons from github
#Author : Xmetalfanx / Xmetal
#Date 	: 2016-09-06
#Version: v0.5
#Usage 	: bash batchGitThemes.sh

rootdir=$basedir

clear
    echo -e "Xmetal's Github Theme and Icon Install Script \n\n"
    echo -e "Please Select Task\n"
    echo -e "IMPORTANT: THESE ARE NOT DONE YET AND THE MANJARO SCRIPT NEEDS WORK ...
             DO NOT DO ANY OF THESE UNTIL THIS MESSAGE IS REMOVED \n\n "

    echo -e " 1. \tInstall Arc Theme and Icon Packs
              2. \t Install Linux Mint 18's Mint-Y Themes and Icons
              3. \t Install Manjaro Themes and Icon Packs
              4.  \t All TASKS \n
              5.  \t QUIT "

read gitThemeSelection

case $gitThemeSelection in

  1) # Calling Arc Script
      bash "$rootdir"/themes/github/arc.sh ;;

  2) # calling MintY-fying Script
      bash "$rootdir"/tasks/themes/github/minty.sh ;;

  3) # Calling Manjaro-fying Script
    bash "$rootdir"/tasks/themes/github/manjarofy.sh ;;

  4) bash "$rootdir"/themes/github/arc.sh
      # calling MintY-fying Script
      bash "$rootdir"/tasks/themes/github/minty.sh
      # Calling Manjaro-fying Script
      bash "$rootdir"/tasks/themes/github/manjarofy.sh
    ;;

esac
