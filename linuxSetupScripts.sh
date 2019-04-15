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
    echo -e   "2. \t Optimizing Mirrors/Repos",,,,

    echo -e   "3. \t Arch-based"
    echo -e   "4. \t Fedora"
    echo -e   "5. \t OpenSUSE"
    echo -e   "6. \t Ubuntu based"
    echo -e   "7. \t Solus"
    
    # only for a space 
    echo -e
    echo -e   "S. \t Install Software"

    ## Not sure if I will keep this in this section/location
    # echo -e   "T. \t Theming\n\n"

    echo -e   "q. \t Exit to Prompt \n\n"
    read -p   "Your Choice?:" mainSelection

    case $mainSelection in

      # Located in: 
      1) universalUpdate ;;
      2) optimizeRepo ;; 

      # Located in /tasks/functions/f_mainMenus.cfg
      3) mainArchMenu ;;
      4) mainFedoraMenu  ;;
      5) mainOpenSuseMenu  ;;
      6) mainUbuntuMenu ;; 
      7) mainSolusMenu ;;

      # Located in /linuxSetup/tasks/functions/universal/menus/f_universal_menus.cfg
      [sS]) universalSoftwareMenu ;;

      [tT])  universalThemingMenu ;; 
  
      [qQ]) quitScript  ;;

      * ) invalidSection ;;

      esac
done
