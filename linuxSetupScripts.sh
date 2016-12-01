#!/bin/bash

#Title :          Xmetal's Linux Post Setup Script
#Description :    This script will setup some common things afer a fresh install of various Linux distros
#Author :         Xmetalfanx / Xmetal
#Date 	:         2016-09-25
#Version:         v0.6
#Usage 	:         bash xmetalLinuxScripts.sh

readonly basedir=$(pwd)
export basedir

rootdir=$basedir

scriptsDir="$rootdir"/scripts

commonFunctions= . "$rootdir"/tasks/functions/f_common.cfg
$commonFunctions

########################################################################
x=1
clear
checkDistro

while [[ $x=1 ]]; do

      echo -e "Xmetal's Linux Script \n"
      echo -e "Please Select your Distrobution family \n"

      echo -e   "1. \t Arch-based"
      echo -e   "2. \t Fedora"
      echo -e   "3. \t OpenSUSE 42.1 Leap"
      echo -e   "4. \t Ubuntu 14.04 LTS based"

      #echo -e   "5. \t Themes and Icons from Github"
      echo -e   "q. \t Exit to Prompt \n\n"
      read -p   "Your Choice?:" mainSelection

      case $mainSelection in

        1) bash  "$scriptsDir"/archLinuxPostInstall.sh ;;
        2) bash  "$scriptsDir"/fedoraPostInstall.sh  ;;
        3) bash  "$scriptsDir"/openSuseLeapPostInstall.sh  ;;
        4) bash "$scriptsDir"/ubuntuTrustyPostInstall.sh  ;;
        # 5) bash "$rootdir"/tasks/themes/github/githubThemes.sh ;;

        [qQ]) quitScript  ;;

        * ) invalidSection ;;

        esac
done
