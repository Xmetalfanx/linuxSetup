#!/bin/bash

#Title : Xmetal's Leap Setup Script
#Description : This script will setup some common things afer a fresh install of Leap
#Author : Xmetalfanx / Xmetal
#Date 	: 2016-09-10
#Version: v0.5
#Usage 	: bash OpenSuseLeapPostInstall.sh

<<<<<<< HEAD
<<<<<<< HEAD
rootdir=$basedir

functLeap= . "$rootdir"/tasks/functions/f_oSuseLeap.cfg
$functLeap

suseCommon= . "$rootdir"/tasks/functions/f_oSuse.cfg
$suseCommon

commonFunctions= . "$rootdir"/tasks/functions/f_common.cfg
=======
rootdir=$(pwd)
x=1
=======
rootdir=$basedir
>>>>>>> 38621a6... maintenance

functLeap= . "$rootdir"/tasks/functions/f_oSuseLeap.cfg
$functLeap

suseCommon= . "$rootdir"/tasks/functions/f_oSuse.cfg
$suseCommon

<<<<<<< HEAD
commonFunctions= . "$rootdir"/tasks/f_common.cfg
>>>>>>> 69ac26b... moving ubuntu functions around and adding Xenial
=======
commonFunctions= . "$rootdir"/tasks/functions/f_common.cfg
>>>>>>> 38621a6... maintenance
$commonFunctions
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
<<<<<<< HEAD
<<<<<<< HEAD
						 x=1 ;;

				  2) installPackmanRepoLeap
						 x=1	;;

				  3) setupMultimediaLeap
							x=1	;;

				  4) installGoogleChrome
					  	x=1		 ;;

				  5) SuseAddArcTheme
					  	x=1 ;;

				  6) installCommonSoftware
						 x=1	 ;;
=======
						 x=1
						 ;;
=======
						 x=1 ;;
>>>>>>> 38621a6... maintenance

				  2) installPackmanRepoLeap
						 x=1	;;

				  3) setupMultimediaLeap
							x=1	;;

				  4) installGoogleChrome
					  	x=1		 ;;

				  5) SuseAddArcTheme
					  	x=1 ;;

				  6) installCommonSoftware
<<<<<<< HEAD
						 x=1
						 ;;
>>>>>>> 69ac26b... moving ubuntu functions around and adding Xenial
=======
						 x=1	 ;;
>>>>>>> 38621a6... maintenance

				[aA]) updateOpenSuse

							setupMultimediaLeap
							installGoogleChrome
							SuseAddArcTheme

							x=1
							;;


				[mM])	bash "$rootdir"/xmetalLinuxScripts.sh
								;;

<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 38621a6... maintenance
				[qQ]) quitScript	;;

				* ) invalidSection ;;

<<<<<<< HEAD
=======
				[qQ]) quitScript
						 	;;
>>>>>>> 69ac26b... moving ubuntu functions around and adding Xenial
=======
>>>>>>> 38621a6... maintenance

		esac

done
