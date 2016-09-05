#!/bin/bash
#Title : Xmetal's Arc Linux Setup Script
#Description : This script will setup some common things afer a fresh install of Arch Linux
#Author : Xmetalfanx / Xmetal
#Date 	: 2016-09-10
#Version: v0.5
#Usage 	: bash archLinuxPostInstall.sh

rootdir=$(pwd)

functArch=  . $rootdir/postInstalls/functions/f_arch.cfg
$functArch

commonFunctions= . "$rootdir"/tasks/f_common.cfg

###############################################################################
x= 1

while [[ $x=1 ]]; do

	clear
	echo -e "Xmetal's Arch Linux based,  Post-Installation Script \n\n"
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

	read -p "Your Choice?:"    archSelection

     case $archSelection in
          1) # Update via Pacman
           sudo pacman -Syyu  ;;

          2)  OptimizeMirrors  ;;

          3)  addYaourt  ;;

          4)  SoundSupport ;;

          5) archiveSupport ;;

          6) archInstallArc ;;

          7) ## This needs TESTING
            yaourt -s packer
            ;;

				[mM])	bash "$rootdir"/xmetalLinuxScripts.sh
						  ;;

				[qQ]) $commonFunctions

               quitScript
               ;;

    esac

done
