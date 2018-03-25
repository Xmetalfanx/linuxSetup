#!/bin/bash

#Title :          Xmetal's Linux Post Setup Script
#Description :    This script will setup some common things afer a fresh install of various Linux distros
#Author :         Xmetalfanx / Xmetal


########################################################################
# Import Functions 

readonly dir=$(eval pwd)
readonly functionsdir=$(eval pwd)/tasks/functions/

. $functionsdir/f_common.cfg
. $functionsdir/includeUniversalFunctions.cfg
########################################################################
x=1

#Clears Screen
clear

# Gets info about distro
# This is located in the f_distoCheck.cfg file
completeDistroCheck

# Check if inxi is installed and install if not 
checkPackage inxi 

# Displays some info about the distro used 
mainDisplayDistroInfo


while [ $x=1 ]; do

    echo -e "${bold}Xmetal's Linux Scripts ${normal} \n"

    echo -e   "1. \t Update your System"
    echo -e   "2. \t Install Software"

    echo -e   "3. \t Arch-based"
    echo -e   "4. \t Fedora"
    echo -e   "5. \t OpenSUSE"
    echo -e   "6. \t Ubuntu based"
    echo -e   "7. \t Solus"

    echo -e   "T. \t Tests Menus - (not for regular users)"
    echo -e   "Q. \t Different TEST only MENU"

    echo -e   "q. \t Exit to Prompt \n\n"
    read -p   "Your Choice?:" mainSelection

    case $mainSelection in

        ## Located in: 
      1) universalUpgrade ;;

        ## Located in /linuxSetup/tasks/functions/universal/menus/f_universal_menus.cfg
      2) universalSoftwareMenu ;;

      3) . "$scriptsDir"/archLinuxScripts.sh ;;
      4) . "$scriptsDir"/fedoraScripts.sh  ;;
      5) . "$scriptsDir"/openSuseScripts.sh  ;;
      6) . "$scriptsDir"/ubuntuScripts.sh  ;;
      7) . "$scriptsDir"/solusScripts.sh ;;

      [tT]) . tests.sh ;; 
      [qQ]) . $dir/test/testread.sh ;; 

      

  
      [qQ]) quitScript  ;;

      * ) invalidSection ;;

      esac
done
