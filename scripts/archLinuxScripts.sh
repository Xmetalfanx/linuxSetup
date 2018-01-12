#!/bin/bash

#Title : Xmetal's Arc Linux Setup Script
#Description : This script will setup some common things afer a fresh install of Arch Linux
#Author : Xmetalfanx / Xmetal
################################################################################

rootdir=$basedir

functArch=  . "$rootdir"/tasks/functions/arch/f_arch.cfg
$functArch

functManjaro=  . "$rootdir"/tasks/functions/arch/f_manjaro.cfg
$functManjaro


commonFunctions= . "$rootdir"/tasks/functions/f_common.cfg
$commonFunctions

###############################################################################
x=1

while [[ $x=1 ]]; do

	clear
	echo -e "Xmetal's Arch Linux based,  Post-Installation Script \n"
	echo -e "Please NOTE: Many of these tasks are predone on distros such as Antergos \n\n"
	echo -e "Please Select task: \n"


	echo -e 	"1. \t Optimize Mirrors"
	echo -e 	"2. \t Add Yaourt"
	echo -e 	"3. \t Add Sound Support"
	echo -e  	"4. \t Adds Archive Support"
	echo -e  	"5. \t Adds Arc Theme and Icon Pack"
	echo -e   	"6. \t Add Packer (AUR and Pacman combined)"
	echo -e 	"7.	\t [Sub-Menu] Manjaro specific"

	echo -e 	"m. \t Return to Main Menu"
	echo -e		"q. \t Exit to Prompt\n\n"

	read -p 	"Your Choice?:"  archSelection

	case $archSelection in
    
      1)  OptimizeMirrors
			x=1	;;

      2)  addYaourt
			x=1	;;

      3)  soundSupport
			x=1	;;

      4) archiveSupport
			x=1 ;;

      5) archInstallArc
			x=1	;;

      6) 	## This needs TESTING
        	yaourt -s packer
			x=1  ;;

			# Why is this coming up as "not found" ? 	  
	  7)	manjaroMenu
			x=1 ;; 

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
