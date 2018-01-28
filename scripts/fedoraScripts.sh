#!/bin/bash

rootdir=$basedir

functMassFedora= . "$rootdir"/tasks/functions/includeFedoraFunctions.cfg
$functMassFedora

commonFunctions= . "$rootdir"/tasks/functions/f_common.cfg
$commonFunctions

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

	  	1) ExtraRepos
		  x=1
		  ;;

		2) InstallFedy
		   x=1
		   ;;

		3) echo "Performing comming tasks of Fedy "
		   
			# Adds Archive Support
			archSupport

			# Adds MS Fonts 
			msFonts
			
			## I really need to check this one to see if i need to update it 
			# Install Codecs 
			fedyCodecs

			# Improve Font Rendering 
			fedoraFontRenderinng

			# 


			#




			x=1
		 	;;

		[mM])	clear 
				exit
				;;

		[qQ]) quitScript	;;

		* ) invalidSection ;;

		esac
done
