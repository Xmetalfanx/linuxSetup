#!/bin/bash

#Title : Xmetal's Leap Setup Script
#Description : This script will setup some common things afer a fresh install of Leap
#Author : Xmetalfanx / Xmetal
#Date 	: 2016-09-10
#Version: v0.5
#Usage 	: bash OpenSuseLeapPostInstall.sh

rootdir=$(pwd)
x=1

functLeap= . $rootdir/postInstalls/functions/f_oSuseLeap.cfg
$functLeap
commonFunctions= . "$rootdir"/tasks/f_common.cfg
####################################################################################################

x=1

while [[ $x=1 ]]; do

	clear
	echo -e "Xmetal's OpenSuse Leap,  Post-Installation Script \n"
	echo -e "Please Select your Choice \n"

	echo -e 	"1. \t Upgrade OpenSuse-based Distro"
	echo -e     "2. \t Add Packman Repositories"
	echo -e     "3. \t Setup Multimedia/Codecs"
	echo -e     "4. \t Install Google Chrome"
	echo -e     "5. \t Install Arc Theme"
	echo -e   	"6. \t Add/Install Extra Software "

  echo -e 		"m. \t Return to Main Menu"
	echo -e     "q. \t Exit to Prompt  \n\n"

	read -p "Your Choice?:" openSuseSelection

				case $openSuseSelection in

				  1) updateOpenSuse
						 x=1
						 ;;

				  2) installPackmanRepoLeap
						 x=1
						;;

				  3) setupMultimediaLeap
							x=1
							;;

				  4) installGoogleChrome
					  	x=1
						 ;;

				  5) SuseAdddArcTheme
					  	x=1
							;;

				  6) installCommonSoftware
						 x=1
						 ;;

				[mM])	bash "$rootdir"/xmetalLinuxScripts.sh
								;;

				[qQ]) $commonFunctions
						 	quitScript
						 	;;

		esac

done
