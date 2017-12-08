#!/bin/bash

#Title :          Xmetal's Linux Post Setup Script
#Description :    This script will setup some common things afer a fresh install of various Linux distros
#Author :         Xmetalfanx / Xmetal

readonly basedir=$(pwd)
export basedir



########################################################################
rootdir=$basedir
functionsdir="$rootdir"/tasks/functions

commonFunctions= . $functionsdir/f_common.cfg
$commonFunctions

ubuntuScipts= . $functionsdir/includeUbuntuFunctions.cfg
$ubuntuScript 

universalFunctions= . $functionsdir/includeUniversalFunctions.cfg
$universalFunctions

########################################################################
x=1

#Clears Screen
clear 

completeDistroCheck

# Displays some guesses/info about the distro pre-menus 
mainDisplayDistroInfo

checkSupportStatus


while [[ $x=1 ]]; do
    
      echo -e "Xmetal's Linux Script \n"

      echo -e "Please Select your Distrobution family \n"

      echo -e   "1. \t Update your System"      
      echo -e   "2. \t Arch-based"
      echo -e   "3. \t Fedora"
      echo -e   "4. \t OpenSUSE"
      echo -e   "5. \t Ubuntu based"
      echo -e   "6. \t Solus"
     
      echo -e   "7. \t (Test only) Install Useful Apps"

      echo -e   "q. \t Exit to Prompt \n\n"
      read -p   "Your Choice?:" mainSelection

      case $mainSelection in

        1) universalUpgrade ;;
        2) bash  "$scriptsDir"/archLinuxScripts.sh ;;
        3) bash  "$scriptsDir"/fedoraScripts.sh  ;;
        4) bash  "$scriptsDir"/openSuseScripts.sh  ;;
        5) bash  "$scriptsDir"/ubuntuScripts.sh  ;;
        6) bash  "$scriptsDir"/solusScripts.sh ;;

        7) usefulAppInstall  ;;

        [qQ]) quitScript  ;;

        * ) invalidSection ;;

        esac
done
