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

postInstallsDir="$rootdir"/postInstalls
commonFunctions= . "$rootdir"/tasks/f_common.cfg

      clear
      echo -e "Xmetal's Linux Script \n"
      echo -e "Please Select your Distrobution family \n"

      echo -e "1. \t Ubuntu-based"
      echo -e "2. \t Arch-based"
      echo -e "3. \t OpenSUSE 42.1 Leap"
      echo -e "4. \t Fedora"
      echo -e "5. \t (Ubuntu based) ElementaryOS"
      echo -e "q. \t Exit to Prompt \n\n"

      read -p "Your Choice?:" mainSelection

      case $mainSelection in
        1) bash "$postInstallsDir"/ubuntuTrustyPostInstall.sh  ;;
        2) bash  "$postInstallsDir"/archLinuxPostInstall.sh ;;
        3) bash  "$postInstallsDir"/openSuseLeapPostInstall.sh  ;;
        4) bash  "$postInstallsDir"/fedora24PostInstall.sh  ;;

        5) bash "$postInstallsDir"/elementaryOSLokiPostInstall.sh  ;;

        [qQ]) $commonFunctions
               quitScript
               ;;
        esac
