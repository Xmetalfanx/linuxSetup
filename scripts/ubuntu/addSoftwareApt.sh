#!/bin/bash

#Title : Xmetal's Adding Software to Ubuntu
#Description : Xmetal's Adding Software to Ubuntu based distros
#Author : Xmetalfanx / Xmetal
#Date 	: 2016-09-06
#Version: v0.5
#Usage 	: bash addSoftwareApt.sh

rootdir=$basedir

overallUbuntu= . "$rootdir"/tasks/functions/includeUbuntuFunctions.cfg
$overallUbuntu

#############################################################################
clear
x=1

while [[ $x=1 ]]; do

echo -e "Xmetal's Ubuntu-based Software Script  \n\n"
echo -e "Please Select Task\n"

	echo -e 	"1. \t Install Multimedia Programs"
	echo -e   "2. \t Install Office Suite [Sub-menu]"
	echo -e   "3. \t Install Web Browser [Submenu] (Chrome, Chromium, Firefox, or Vivaldi)"
	echo -e 	"4. \t Install Various Useful Apps "
	echo -e 	"5. \t Install Etcher to put ISOs on USB drives"
  echo -e    "6. \t Install Atom Editor"
	echo -e 	 "7. \t Install\Update MPV from PPA - Newer version"


	echo -e 	"m. \t Return to Main Menu"
	echo -e 	"q. \t Exit to Prompt\n\n"
	read -p "Your Choice?: " addSoftwareSelection

	case $addSoftwareSelection in
		1) multimediaAppsInstall
	 		x=1
	 		;;

	 2) officeSuiteMenu
				 x=1
				 ;;

	  3) browserMenu
			 x=1
			 ;;

		4)  echo -e "Installing Common (Various). "
				clear
				echo -e "About to install Filezilla, Deluge, Gparted, Bleachbit, and Etcher"
				userPrompt

	 		  aptUpdate

				## ? Include QBittorrent too?
	 			aptInstall filezilla deluge gparted bleachbit plank radiotray gpodder pinta htop

                # Function call
                #etcherInstall
	 			;;

		5) 	etcherInstall
			;;

    6) installAtom ;;

		7) updatedMPV
		;;

		[mM])	bash "$rootdir"/xmetalLinuxScripts.sh
					;;

  	[qQ]) quitScript
	 		 	;;

	esac
done
