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

	echo -e 	 "1. \t Install MPV, Audacious, Filezilla, \n Variety (Wallpaper Changer), and Geany"
	echo -e     "2. \t Install DeadBeef (Media Player)"
	echo -e     "3. \t Install Atom Text/Code Editor"
	echo -e     "4. \t Install Google Chrome"
	echo -e     "5. \t Install Libre Office"
	echo -e     "6. \t Install WPS Office"
	echo -e 		"7. \t Install Filebot (64bit version), for media Meta Info Fetching"

	echo -e 	"m. \t Return to Main Menu"
	echo -e 	"q. \t Exit to Prompt\n\n"
	read -p "Your Choice?: " addSoftwareSelection

	case $addSoftwareSelection in


	  1) # note to self: Check "variey" and make SURE it's the wallpaper app
		  echo -e "Installing MPV, Audacious, Filezilla, VLC, Geany. "
		  aptUpdate mpv audacious audacious-plugins filezilla vlc geany
			x=1
		  ;;

	  2)  # Note to Self: Add Custom instructions on getting latest deadbeef working, later

	    echo "Installing DeadBeef Media Player"

	      getDebsPPA

	    aptInstall deadbeef
			x=1
	    ;;

	  3) installAtom
			 x=1
			 ;;

	  4) installChrome
			 x=1
			 ;;

	  5)  bash "$rootDir"/postInstalls/ubuntu/software/installLibreoffice.sh
			 x=1
			 ;;

	  6)  installWPSOffice
			x=1
	  	;;

		7) installFilebot
			 x=1
			;;

		[mM])	bash "$rootdir"/xmetalLinuxScripts.sh
					;;

  	[qQ]) quitScript
	 		 	;;

	esac
done
