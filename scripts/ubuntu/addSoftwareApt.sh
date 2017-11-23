#!/bin/bash

rootdir=$basedir

commonFunctions= . "$rootdir"/tasks/functions/f_common.cfg
$commonFunctions

UbuntuCulmFunction= . "$rootdir"/tasks/functions/includeUbuntuFunctions.cfg
$UbuntuCulmFunction

#############################################################################
clear
x=1

while [[ $x=1 ]]; do

echo -e "Xmetal's Ubuntu-based Software Script  \n\n"
echo -e "Please Select Task\n"

	echo -e "1. \t Install Multimedia Programs"
	echo -e "2. \t Install Office Suite [Sub-menu]"
	echo -e "3. \t Install Web Browser [Submenu] (Chrome, Chromium, Firefox, or Vivaldi)"
	echo -e "4. \t Install Various Useful Apps "
	echo -e "5. \t Install Etcher to put ISOs on USB drives"
  	echo -e "6. \t Install Atom Editor"
	echo -e "7. \t Install\Update MPV from PPA"
	echo -e "8. \t Install Wine and PlayOnLinux"
	echo -e "9. \t Install Sublime Text"


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
 			installApp filezilla deluge gparted bleachbit plank radiotray gpodder pinta htop

	        # Function call
	        #etcherInstall
					x=1
		 	 		;;

		5) 	etcherInstall
				x=1
			  ;;

    6) installAtom
			 x=1
 	 		 ;;

		7) updatedPPAMPV
			 x=1
 	 		 ;;

		8) wineInstall
			 x=1
 	 		 ;;

		9) sublimetextInstall
		x=1
		;;

		[mM])	bash "$rootdir"/xmetalLinuxScripts.sh ;;

  	[qQ]) quitScript	;;

		* ) invalidSection ;;

	esac
done
