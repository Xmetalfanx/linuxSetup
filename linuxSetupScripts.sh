#!/bin/bash

#Title :          Xmetal's Linux Post Setup Script
#Description :    This script will setup some common things afer a fresh install of various Linux distros
#Author :         Xmetalfanx / Xmetal


########################################################################
# Import Functions 

# This is needed here so my scripts can use this to load other needed things 
readonly dir=$(eval pwd)
readonly functionsdir=$(eval pwd)/functions/

. $dir/functions/includeBasicConfigs.cfg


########################################################################
x=1

#Clears Screen
#clear

# in f_common.cfg 
intialTasks

while [ $x=1 ]; do

    #paddingBorder  

    echo -e "${bold}${underline}Xmetal's Linux Scripts${completeReset} \n"

    echo -e   "1. \t Update your System"
    echo -e   "2. \t Install Software"

    echo -e   "3. \t Arch-based"
    echo -e   "4. \t Fedora"
    echo -e   "5. \t OpenSUSE"
    echo -e   "6. \t Ubuntu based"
    echo -e   "7. \t Solus"

    ## Not sure if I will keep this in this section/location
    # echo -e   "T. \t Theming\n\n"

    #echo -e   "W. \t Tests Menus - (not for regular users)"
    #echo -e   "Q. \t Different TEST only MENU"

    echo -e   "q. \t Exit to Prompt \n\n"
    read -p   "Your Choice?:" mainSelection

    case $mainSelection in

      # Located in: 
      1) universalUpdate ;;

      # Located in /linuxSetup/tasks/functions/universal/menus/f_universal_menus.cfg
      2) universalSoftwareMenu ;;

      # Located in /tasks/functions/f_mainMenus.cfg
      3) mainArchMenu ;;
      4) mainFedoraMenu  ;;
      5) mainOpenSuseMenu  ;;
      6) mainUbuntuMenu ;; 
      7) mainSolusMenu ;;

      [tT])  universalThemingMenu ;; 

      ## Menu for testing things on the dev end of the scripts 
      [wW]) testMenu2 ;; 

      [zZ]) . $dir/test/testread.sh ;; 
  
      [qQ]) quitScript  ;;

      * ) invalidSection ;;

      esac
done
