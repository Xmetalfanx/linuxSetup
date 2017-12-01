#!/bin/bash
#Title : Xmetal's Arc Linux Setup Script
#Description : This script will setup some common things afer a fresh install of Arch Linux
#Author : Xmetalfanx / Xmetal
#Date 	: 2016-09-10
#Version: v0.5
#Usage 	: bash archLinuxPostInstall.sh

rootdir=$basedir

functArch=  . "$rootdir"/tasks/functions/f_arch.cfg
$functArch

commonFunctions= . "$rootdir"/tasks/functions/f_common.cfg
$commonFunctions

###############################################################################
x=1

while [[ $x=1 ]]; do

	clear
	echo -e "Xmetal's Arch Linux based,  Post-Installation Script \n"
	echo -e "Please NOTE: Many of these tasks are predone on distros such as Antergos \n\n"
	echo -e "Please Select task: \n"

	echo -e 	"1. \t Update System"
	echo -e   "2. \t Optimize Mirrors"
	echo -e 	"3. \t Add Yaourt"
	echo -e 	"4. \t Add Sound Support"
	echo -e  	"5. \t Adds Archive Support"
	echo -e  	"6. \t Adds Arc Theme and Icon Pack"
	echo -e   "7. \t Add Packer (AUR and Pacman combined)"

	echo -e 	"m. \t Return to Main Menu"
	echo -e		"q. \t Exit to Prompt\n\n"

	read -p 	"Your Choice?:"  archSelection

    case $archSelection in
      1) # Update via Pacman
			clear
			echo "Updating Arch"
			sudo pacman -Syyu
			x=1
			;;

      2)  OptimizeMirrors
			x=1	;;

      3)  addYaourt
			x=1	;;

      4)  soundSupport
			x=1	;;

      5) archiveSupport
			x=1 ;;

      6) archInstallArc
			x=1	;;

      7) ## This needs TESTING
        yaourt -s packer
			x=1  ;;

		 [aA]) sudo pacman -Syyu
		       OptimizeMirrors
				addYaourt
				SoundSupport
				archiveSupport
				archInstallArc
				yaourt -s packer
				x=1
				;;

		[mM]) 	clear 
				exit
				;;

		[qQ])  quitScript   ;;

		* ) invalidSection ;;

    esac

done
