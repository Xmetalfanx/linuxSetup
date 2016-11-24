#!/bin/bash

#Title : Xmetal's FedyTask automation Tool
#Description : Xmetal's script to automate various common fedy tasks
#Author : Xmetalfanx / Xmetal
#Date 	: 2016-09-25
#Version: v0.5
#Usage 	: bash fedytasks.sh

rootdir=$basedir

fedyFunct= . "$rootdir"/tasks/functions/fedora/f_fedyTasks.cfg
$fedyFunct

commonFunctions= . "$rootdir"/tasks/functions/f_common.cfg
$commonFunctions
############################################################
x=1

while [[ $x=1 ]]; do

clear
    echo -e "Xmetal's Fedora  Script \n"
    echo -e "Please Select Task \n"

    echo -e     "1. \t Install Archive Support"
    echo -e     "2. \t Install Microsoft Fonts"
    echo -e     "3. \t Install Codecs"
    echo -e     "4. \t Install Theme Engines"
    echo -e     "5. \t Improve Font Rendering"

    echo -e   	"m. \t Return to Main Menu"
    echo -e 		"q. \t Exit to Prompt\n\n"

    read -p     "Your Choice:" fedyTaskSelection

    case $fedyTaskSelection in

      1) archSupport
          x=1  ;;

      2) msFonts
         x=1  ;;

      3) fedyCodecs
          x=1    ;;

      4) themeEngines
          x=1  ;;

      5) fontRendering
         x=1   ;;

     [aA]) archSupport
           msFonts
           fedyCodecs
           themeEngines
           fontRendering
           x=1
           ;;

    [mM])	bash "$rootdir"/xmetalLinuxScripts.sh
            ;;

     [qQ])  quitScript
        	 	;;
    esac

done
