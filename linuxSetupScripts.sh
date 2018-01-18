#!/bin/bash

#Title :          Xmetal's Linux Post Setup Script
#Description :    This script will setup some common things afer a fresh install of various Linux distros
#Author :         Xmetalfanx / Xmetal

readonly basedir=$(pwd)
export basedir

########################################################################
rootdir=$basedir
functionsdir="$rootdir"/tasks/functions

specificChecks= . "$basedir"/tasks/functions/f_specificDistroChecks.cfg
$specificChecks

distroCheck= . $functionsdir/f_distroCheck.cfg
$distroCheck

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
#mainDisplayDistroInfo

displayInfoTest

while [[ $x=1 ]]; do

    #echo -e "test only: $ubuntuName"
    
    echo -e "${bold}Xmetal's Linux Script ${normal} \n"

    echo -e "Please Select your Distrobution family \n"

    echo -e   "1. \t Update your System" 
    echo -e   "2. \t Install Software"     
    
    echo -e   "3. \t Arch-based"
    echo -e   "4. \t Fedora"
    echo -e   "5. \t OpenSUSE"
    echo -e   "6. \t Ubuntu based"
    echo -e   "7. \t Solus"
    echo -e   "t. \t Test - Tiny Media Manager install"
   

    echo -e   "q. \t Exit to Prompt \n\n"
    read -p   "Your Choice?:" mainSelection

    case $mainSelection in

      1) universalUpgrade ;;
      
        ## Located in /linuxSetup/tasks/functions/universal/menus/f_universal_menus.cfg
      2) universalSoftwareFunction ;; 
      
      3) bash  "$scriptsDir"/archLinuxScripts.sh ;;
      4) bash  "$scriptsDir"/fedoraScripts.sh  ;;
      5) bash  "$scriptsDir"/openSuseScripts.sh  ;;
      6) bash  "$scriptsDir"/ubuntuScripts.sh  ;;
      7) bash  "$scriptsDir"/solusScripts.sh ;;

      t) tinyMediaManagerInstall ;; 

      [qQ]) quitScript  ;;

      * ) invalidSection ;;

      esac
done
