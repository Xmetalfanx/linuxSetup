#!/bin/bash

#Title :          Xmetal's Linux Post Setup Script
#Description :    This script will setup some common things afer a fresh install of various Linux distros
#Author :         Xmetalfanx / Xmetal
#Date 	:         2016-09-25
#Version:         v0.6
#Usage 	:         bash xmetalLinuxScripts.sh

readonly basedir=$(pwd)
export basedir

########################################################################
rootdir=$basedir

distroCheck= . "$rootdir"/tasks/f_distroCheck.cfg
$distroCheck

commonFunctions= . "$rootdir"/tasks/functions/f_common.cfg
$commonFunctions

includeUbuntuFuncions= . "$rootdir"/tasks/functions/includeUbuntuFunctions.cfg
$includeUbuntuFuncions

## Testing
appListFunctions= . "$rootdir"/tasks/functions/universal/f_applist.cfg
$appListFunctions

########################################################################
x=1

#Clears Screen
clear

#Function is ran to get some guesses/info about the distro 
## I am working on a function that INCLUDES This below and a few other things ... passing to THAT function may be done in the future 
osreleaseInfo
idCheck


# Displays some guesses/info about the distro pre-menus 
mainDisplayDistroInfo


# Idea - Spaces 
echo 

while [[ $x=1 ]]; do
    

      echo -e "Xmetal's Linux Script \n"

      echo -e "Please Select your Distrobution family \n"

      echo -e   "1. \t Arch-based"
      echo -e   "2. \t Fedora"
      echo -e   "3. \t OpenSUSE"
      echo -e   "4. \t Ubuntu based"
      echo -e   "5. \t Solus"
      echo -e   "6. \t (Test only) Install Useful Apps"

      echo -e   "q. \t Exit to Prompt \n\n"
      read -p   "Your Choice?:" mainSelection

      case $mainSelection in

        1) bash  "$scriptsDir"/archLinuxScripts.sh ;;
        2) bash  "$scriptsDir"/fedoraScripts.sh  ;;
        3) bash  "$scriptsDir"/openSuseScripts.sh  ;;
        4) bash  "$scriptsDir"/ubuntuScripts.sh  ;;
        5) bash  "$scriptsDir"/solusScripts.sh ;;

        6) usefulAppInstall  ;;

        [qQ]) quitScript  ;;

        * ) invalidSection ;;

        esac
done
