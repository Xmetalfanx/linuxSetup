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

# For testing code
# FORMERLY another shell .sh file 
. $dir/tests.cfg 

########################################################################
function intialTasks()
{
  ## Intial tasks to run before even displaying the menu 

  ## Issue I see ... the issue is I need to use inxi to get info to see what the distroBase is; HOWEVER, if inxi is NOT INSTALLED, the detection will have issues ... so "which comes first?"

  # Gets info about distro
  # This is located in the f_distoCheck.cfg file
  printf "Getting Info about distro..\n"
  completeDistroCheck

  # Check if inxi is installed and install if not 
  printf "\nChecking to see if inxi is installed.."
  checkPackage inxi 
  clear

  # Displays some info about the distro used 
  mainDisplayDistroInfo

}


########################################################################
x=1

#Clears Screen
clear

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
    echo -e   "T. \t Theming\n\n"

    #echo -e   "W. \t Tests Menus - (not for regular users)"
    #echo -e   "Q. \t Different TEST only MENU"

    echo -e   "q. \t Exit to Prompt \n\n"
    read -p   "Your Choice?:" mainSelection

    case $mainSelection in

        ## Located in: 
      1) universalUpgrade ;;

        ## Located in /linuxSetup/tasks/functions/universal/menus/f_universal_menus.cfg
      2) universalSoftwareMenu ;;

          # Located in /tasks/functions/f_mainMenus.cfg
      3) mainArchMenu ;;
      4) mainFedoraMenu  ;;
      5) mainOpenSuseMenu  ;;
      6) mainUbuntuMenu ;; 


      7) . $menusDir/solusScripts.sh ;;

      [tT])  universalThemingMenu ;; 

      ## Menu for testing things on the dev end of the scripts 
      [wW]) testMenu2 ;; 

      [zZ]) . $dir/test/testread.sh ;; 

      

  
      [qQ]) quitScript  ;;

      * ) invalidSection ;;

      esac
done
