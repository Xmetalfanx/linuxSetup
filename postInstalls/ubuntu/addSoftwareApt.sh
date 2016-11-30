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

softtwareFunction= . "$rootdir"/postInstalls/ubuntu/software/f_ubuntuSoftware.cfg
$softtwareFunction

#############################################################################
clear
x=1

while [[ $x=1 ]]; do

echo -e "Xmetal's Ubuntu-based Software Script  \n\n"
echo -e "Please Select Task\n"

	echo -e 	"1. Install Multimedia Programs"
	echo -e 	 "2. \t Install Filezilla, \n Variety (Wallpaper Changer), and Geany"
	echo -e     "3. \t Install DeadBeef (Media Player)"
	echo -e     "4. \t Install Atom Text/Code Editor"
	echo -e     "5. \t Install Google Chrome"
	echo -e     "6. \t Install Libre Office"
	echo -e     "7. \t Install WPS Office"
	echo -e 	 "8. Install Various Productivity/Office Programs "
	## Install Productivity Apps - Geany (menu for the two office suites), atom.io,

	echo -e 	"m. \t Return to Main Menu"
	echo -e 	"q. \t Exit to Prompt\n\n"
	read -p "Your Choice?: " addSoftwareSelection

	case $addSoftwareSelection in
		1) echo -e "Installing Multimedia Programs"
			 aptUpdate
			 aptInstall mpv audacious audacious-plugins mpv easytag

			 # Install Filebot
	 		installFilebot

	 		## Install Deadbeef
	 		installDeadBeef

	 		x=1
	 		;;

	  2) # note to self: Check "variey" and make SURE it's the wallpaper app
		  echo -e "Installing MPV, Audacious, Filezilla, VLC, Geany. "
		  aptUpdate filezilla vlc geany



	  4) installAtom
			 x=1
			 ;;

	  5) installChrome
			 x=1
			 ;;

	  6)  bash "$rootDir"/postInstalls/ubuntu/software/installLibreoffice.sh
			 x=1
			 ;;

	  7)  installWPSOffice
			x=1
	  	;;

		[mM])	bash "$rootdir"/xmetalLinuxScripts.sh
					;;

  	[qQ]) quitScript
	 		 	;;

	esac
done
