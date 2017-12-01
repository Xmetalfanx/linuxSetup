#!/bin/bash

rootdir=$basedir

functFedora= . "$rootdir"/tasks/functions/fedora/f_fedora.cfg
$functFedora

commonFunctions= . "$rootdir"/tasks/functions/f_common.cfg
$commonFunctions

#######################################################################################
clear 
x=1

while [[ $x=1 ]]; do

	#clear
	echo -e "Xmetal's Fedora based Script \n"
	echo -e "Please Select your Choice \n"

	echo -e 	"1. \t Update Fedora"
	echo -e   "2. \t Add RPM Fusion and/or UnitedRPM Repositories"
	echo -e   "3. \t Add Fedy"
	echo -e   "4. \t Perform Common Fedy Tasks"
	echo -e   "5. \t Add Extra Software"
	
	#echo -e   "6. \t Install The Arc Theme"

	echo -e 	"a.	All Tasks [UNTESTED]"

	echo -e 	"m. \t Return to Main Menu"
	echo -e 	"q.	 Exit to Prompt \n\n"

  read -p "Your Choice?:" fedoraSelection

	case $fedoraSelection in

		1) UpdateFedora
		   x=1
		   ;;

	  2) ExtraRepos
		  x=1
		  ;;

		3) InstallFedy
		   x=1
				;;

		4) echo "Performing comming tasks of Fedy "
		   bash "$rootdir"/tasks/functions/fedora/fedytasks.sh
			 x=1
		 	 ;;

		5) InstallExtraSoftware
		   x=1
			 ;;

		 [aA]) UpdateFedora
			    AddRPMFusion
				InstallFedy
				InstallExtraSoftware
				x=1
				;;

		[mM])	clear 
				exit
				;;

		 [qQ]) quitScript	;;


		 * ) invalidSection ;;


		esac

done
