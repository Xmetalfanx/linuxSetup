#!/bin/bash

## include files with functions 

. $functionsdir/f_common.cfg
. $functionsdir/fedora/includeFedoraFunctions.cfg

#######################################################################################
clear 
x=1

while [[ $x=1 ]]; do

	#clear
	echo -e "Xmetal's Fedora based Script \n"
	echo -e "Please Select your Choice \n"

	echo -e   "1. \t [Submenu] Add RPM Fusion and/or UnitedRPM Repositories"
	echo -e   "2. \t Add Fedy"
	echo -e   "3. \t Perform Common Fedy Tasks"
	echo -e   "4. \t Add Extra Software"
	
	echo -e   "m. \t Return to Main Menu"
	echo -e   "q.Exit to Prompt \n\n"

    read -p "Your Choice?:" fedoraSelection

	case $fedoraSelection in

	  	1) ExtraRepos $fedoraSupported
		  x=1
		  ;;

		2) InstallFedy
		   x=1
		   ;;

		3) 
		   massFedyTasks

		   x=1
		   ;;

		[mM])	clear 
				exit
				;;

		[qQ]) quitScript	;;

		* ) invalidSection ;;

	esac
	
done
