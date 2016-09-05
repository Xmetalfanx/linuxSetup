#!/bin/bash

#Title : Xmetal's Fedora Setup Script
#Description : This script will setup some common things afer a fresh install of Fedora
#Author : Xmetalfanx / Xmetal
#Date 	: 2016-09-10
#Version: v0.5
#Usage 	: bash

rootdir=$(pwd)

functFedora= . $rootdir/postInstalls/functions/f_fedora.cfg
$functFedora

commonFunctions= . "$rootdir"/tasks/f_common.cfg
#######################################################################################
x=1

while [[ $x=1 ]]; do

	clear
	echo -e "Xmetal's Fedora based,  Post-Installation Script \n"
	echo -e "Please Select your Choice \n"

	echo -e 	"1. \t Upgrade Fedora"
	echo -e   "2. \t Add RPM Fusion Repositories"
	echo -e   "3. \t Add Fedy"
	echo -e   "4. \t Perform Common Fedy Tasks"
	echo -e   "5. \t Add Extra Software"
	echo -e   "6. \t Install The Arc Theme"

	echo -e 	"m. \t Return to Main Menu"
	echo -e 	"q.	 Exit to Prompt \n\n"

  read -p "Your Choice?:" fedoraSelection

	case $fedoraSelection in

		1) UpdateFedora
			   x=1
				;;

	  2) AddRPMFusion
				x=1
				;;

		3) InstallFedy
				x=1
				;;

			4) echo "Performing comming tasks of Fedy "
			   bash "$rootdir"/tasks/fedora/fedytasks.sh
				  x=1
			 		;;

			5) InstallExtraSoftware
			   x=1
				  ;;

		  6) fedoraAddArcTheme
		    	 x=1
					;;

			[mM])	bash "$rootdir"/xmetalLinuxScripts.sh
						;;

		 [qQ]) $commonFunctions
	 				 	 quitScript
	 				 	;;

					esac

done
