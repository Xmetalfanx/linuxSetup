#!/bin/bash

#Title : Xmetal's Adding Software to Ubuntu
#Description : Xmetal's Adding Software to Ubuntu based distros
#Author : Xmetalfanx / Xmetal
#Date 	: 2016-09-06
#Version: v0.5
#Usage 	: bash addSoftwareApt.sh

rootdir=$basedir
clear

ubuntuSoftFunc= . "$rootdir"/postInstalls/ubuntu/software/f_ubuntuSoftware.cfg
$ubuntuSoftFunc
ubuntuFunct= . "$rootdir"/postInstalls/functions/f_ubuntu.cfg
$ubuntuFunct

commonFunctions= . "$rootdir"/tasks/f_common.cfg
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

	echo -e 	"m. \t Return to Main Menu"
	echo -e 	"q. \t Exit to Prompt\n\n"
	read -p "Your Choice?: " addSoftwareSelection

	case $addSoftwareSelection in


	  1) # note to self: Check "variey" and make SURE it's the wallpaper app
		  echo -e "Installing MPV, Audacious, Filezilla, VLC, Geany. "
		  sudo apt install mpv audacious audacious-plugins filezilla vlc geany
			x=1
		  ;;

	  2)  # Note to Self: Add Custom instructions on getting latest deadbeef working, later

	    echo "Installing DeadBeef Media Player"
	    $ubuntuFunct
			getDebsPPA
	    sudo apt install deadbeef
			x=1
	    ;;

	  3) $ubuntuSoftFunc
		   InstallAtom
			 x=1
			 ;;

	  4) $ubuntuSoftFunc
		   installChrome
			 x=1
			 ;;

	  5) $ubuntuSoftFunc
		   bash "$rootDir"/postInstalls/functions/ubuntu/software/installLibreoffice.sh
			 x=1
			 ;;

	  6) $ubuntuSoftFunc
		  installWPSOffice
			x=1
			;;

		[mM])	bash "$rootdir"/xmetalLinuxScripts.sh
					;;

  	[qQ]) $commonFunctions
	 		 	 quitScript
	 		 	;;

	esac
done
