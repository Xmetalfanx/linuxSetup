#!/bin/bash

#Title : Ubuntu -based Setup
#Description : 
#Author : Xmetalfanx / Xmetal

rootdir=$basedir

commonFunctions= . $rootdir/tasks/functions/f_common.cfg
$commonFunctions

ubuntuFunctions= . $rootdir/tasks/functions/includeUbuntuFunctions.cfg
$ubuntuFunctions

###################################################################################################
x=1

clear

while [[ $x=1 ]]; do

		echo -e   "Xmetal's Ubuntu based,  Post-Installation Script \n"
		#echo -e 	"Your Ubuntu vesion codename is: $ubuntuName"

		echo -e   "Please Select Task \n"

		echo -e   "\v1. \t Adds Theme PPAs (Ravenfinity, Moka, Noobslab's Icon Repo (both), \n \t Noobslab's Theme Repo, Numix, and snwh's (Paper Theme) )"
		echo -e   "\v2. \t Install PPA Themes/Icons \n \t (Ambiance, Radiance, Moka, The Arc Theme AND Arc Icons, \n \t Numix Themes and Icons, Vertex Icons, AND Kawaiki Icons "
		echo -e   "\v3. \t Add Various Software"
		echo -e  	"4. \t [16.10 based+ ] Install Budgie-Remix Theming [Adds Solus Mate like Theming ]"
		echo -e 	"5. \t[ElementaryOS] Add PPA Support, Synaptic, and Gnome-tweak Tool"
		echo -e 	"6.	\t[Ubuntu Mate] Add the Ubuntu Mate Development PPA"
		#echo -e 	"7. \t (TEST) Compile Gparted from git source "


		echo -e   	"\v m. \tReturn to Main Menu"
		echo -e		"q. \tExit to Prompt \n\n"

		read -p "Your Choice?: " ubuntuSelection

		case $ubuntuSelection in

		  1) addThemePPAs
			 x=1	;;

		  2) installPPAThemes
			 x=1 ;;

		  3) bash "$rootdir"/scripts/ubuntu/addSoftwareApt.sh ;;

		  4) budgieRemixPPA
			 budgieTheme
		   	 x=1 ;;

		  5) InstallLokiAdditions
		 	 	x=1	 ;;

	   		6) addUMateDevPPA
				x=1		;;

		 	#7) gpartedFromSource
				 x=1  ;; 

			[aA]) aptUpdate
				addThemePPAs
				installPPAThemes
				#bash "$postInstallsDir"/ubuntu/addSoftwareApt.sh

				x=1
				;;

		[mM])	clear 
				exit
				;;

		[qQ]) quitScript ;;

		* ) invalidSection ;;

		esac

done
