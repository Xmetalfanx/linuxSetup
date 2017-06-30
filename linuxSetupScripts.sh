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

commonFunctions= . "$rootdir"/tasks/functions/f_common.cfg
$commonFunctions

includeUbuntuFuncions= . "$rootdir"/tasks/functions/includeUbuntuFunctions.cfg
$includeUbuntuFuncions

########################################################################
x=1
clear
checkDistro

while [[ $x=1 ]]; do

      echo -e "Xmetal's Linux Script \n"
      echo -e "It APPEARS your distro base is:"
      capsFirst $distroBase
      #echo -e "Your distro is detected as: $distro"

      #echo -e "Test one"
      #capsFirst $distroBase

      #echo -e "Test Two"
      #capsSED $distroBase

      echo -e "Please Select your Distrobution family \n"

      echo -e   "1. \t Arch-based"
      echo -e   "2. \t Fedora"
      echo -e   "3. \t OpenSUSE"
      echo -e   "4. \t Ubuntu based"
      echo -e   "5. \t Solus"
      echo -e   "6. \t (Test only ) Display usefulApps array"

      #echo -e   "5. \t Themes and Icons from Github"
      echo -e   "q. \t Exit to Prompt \n\n"
      read -p   "Your Choice?:" mainSelection

      case $mainSelection in

        1) bash  "$scriptsDir"/archLinuxScripts.sh ;;
        2) bash  "$scriptsDir"/fedoraScripts.sh  ;;
        3) bash  "$scriptsDir"/openSuseScripts.sh  ;;
        4) bash  "$scriptsDir"/ubuntuScripts.sh  ;;
        5) bash  "$scriptsDir"/solusScripts.sh ;;

        6) testArray ${usefulApps[*]}  ;;

        [qQ]) quitScript  ;;

        * ) invalidSection ;;

        esac
done
