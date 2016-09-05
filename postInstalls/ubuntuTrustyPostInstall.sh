#!/bin/bash

#Title : Ubuntu Trusty Tar -based Setup
#Description : This script installs the Arc Theme and Icon Packs used
#Author : Xmetalfanx / Xmetal
#Date 	: 2016-09-06
#Version: v0.5
#Usage 	: bash ubuntuTrustyPostInstall.sh

rootdir=$basedir

postInstallsDir="$rootdir"/postInstalls
themeDir="$rootdir"/tasks/themes

functUbuntu= . "$postInstallsDir"/functions/f_ubuntu.cfg
$functUbuntu

commonFunctions= . "$rootdir"/tasks/f_common.cfg
$commonFunctions

###################################################################################################
x=1

while [[ $x=1 ]]; do

clear
			echo -e   "Xmetal's Ubuntu 14.04 Trusty based,  Post-Installation Script \n\n"
			echo -e   "Please Select Task \n"

			echo -e   "1. \t Update System"
			echo -e   "\v2. \t Adds Theme PPAs (Ravenfinity, Moka, Noobslab's Icon Repo (both), \n \t Noobslab's Theme Repo, Numix, and snwh's (Paper Theme) )"
			echo -e   "\v3. \t Install PPA Themes/Icons \n \t (Ambiance, Radiance, Moka, The Arc Theme AND Arc Icons, \n \t Numix Themes and Icons, Vertex Icons, AND Kawaiki Icons "
			echo -e   "\v4. \t Add Themes via Github (Themes may not all look right)"
			echo -e   "5. \t Add Software"

			echo -e   "m. \tReturn to Main Menu"
			echo -e		"q. \tExit to Prompt \n\n"

			read -p "Your Choice?: " trustySelection

		case $trustySelection in

		  1) aptUpgrade
				 x=1
				;;

		  2) addThemePPAs
				 x=1
				;;

		  3) installPPAThemes
				 x=1
				 ;;

     4) # Sub-menus
		    bash "$themeDir"/batchGitThemes.sh  ;;

		  5) # This is a sub-menu
   			bash "$postInstallsDir"/ubuntu/addSoftwareApt.sh
			  ;;

		[mM])	bash "$rootdir"/xmetalLinuxScripts.sh
					;;

		[qQ]) quitScript
					;;

		esac

done
