#!/bin/bash

#Title : Ubuntu Trusty Tar -based Setup
#Description : This script installs the Arc Theme and Icon Packs used
#Author : Xmetalfanx / Xmetal
#Date 	: 2016-09-06
#Version: v0.5
#Usage 	: bash ubuntuTrustyPostInstall.sh

rootdir=$basedir

commonFunctions= . $rootdir/tasks/functions/f_common.cfg
$commonFunctions

ubuntuFunctions= . $rootdir/tasks/functions/includeUbuntuFunctions.cfg
$ubuntuFunctions

###################################################################################################
x=1

clear
checkDistro

while [[ $x=1 ]]; do

			echo -e   "Xmetal's Ubuntu based,  Post-Installation Script \n"
			#echo -e 	"Your Ubuntu vesion codename is: $ubuntuName"

			echo -e   "Please Select Task \n"

			echo -e   "1. \t Update System"
			echo -e   "\v2. \t Adds Theme PPAs (Ravenfinity, Moka, Noobslab's Icon Repo (both), \n \t Noobslab's Theme Repo, Numix, and snwh's (Paper Theme) )"

			echo -e   "\v3. \t Install PPA Themes/Icons \n \t (Ambiance, Radiance, Moka, The Arc Theme AND Arc Icons, \n \t Numix Themes and Icons, Vertex Icons, AND Kawaiki Icons "

			echo -e   "\v4. \t Add Various Software"

			echo -e  	"5. \t [16.10 based+ ] Install Budgie-Remix Theming [Adds Solus Mate like Theming ]"


			echo -e 	"6. \t[ElementaryOS] Add PPA Support, Synaptic, and Gnome-tweak Tool"
			echo -e 	"7.	[Ubuntu Mate] Add the Ubuntu Mate Development PPA"
			echo -e "8. (TEST) Compile Gparted from git source "

			echo -e   "\vm. \tReturn to Main Menu"
			echo -e		"q. \tExit to Prompt \n\n"

			read -p "Your Choice?: " trustySelection

		case $trustySelection in

		  1) aptUpgrade
				 x=1	;;

		  2) addThemePPAs
				 x=1	;;

		  3) installPPAThemes
				 x=1 ;;

		  4) bash "$rootdir"/scripts/ubuntu/addSoftwareApt.sh ;;

		  5) budgieRemixPPA
				 budgieTheme
		   		x=1 ;;

		  6) InstallLokiAdditions
		 	 		x=1	 ;;

	   	7) addUMateDevPPA
					x=1		;;

		 	8) gpartedFromSource
				 x=1  ;; 

		[aA]) aptUpdate
					addThemePPAs
					installPPAThemes
					#bash "$postInstallsDir"/ubuntu/addSoftwareApt.sh

					x=1
					;;

		[mM])	bash "$rootdir"/xmetalLinuxScripts.sh	;;

		[qQ]) quitScript	;;

		* ) invalidSection ;;

		esac

done
