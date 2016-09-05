#!/bin/bash

#title : Xmetal's Arc Linux Setup Script
#Description : This script will setup some common things afer a fresh install of Arch Linux
#Author : Xmetalfanx / Xmetal
#Date 	: 2016-09-10
#Version: v0.5
#Usage 	: bash archLinuxPostInstall.sh

rootdir=$basedir

functionsEOS= . $rootdir/postInstalls/functions/f_elementary.cfg
$functionsEOS
commonFunctions= . "$rootdir"/tasks/f_common.cfg
functionsEOS= . $rootdir/postInstalls/functions/f_elementary.cfg

####################################################################
clear
x=1

while [[ $x=1 ]]; do

	echo -e "Xmetal's ElementaryOS,  Post-Installation Script \n\n"
	echo -e "Please Select a task \n"

	echo -e 		"1. \t    Update System"
	echo -e 		"2. \t    Add PPA Support, Synaptic, and Gnome-tweak Tool"

  echo -e 		"m. \t Return to Main Menu"
	echo -e 		"q. \t Exit to Prompt  \n\n"

	read -p "Your Choice?:" elementarySection

$functionsEOS
  case $elementarySection in

	1) updateLoki
		x=1
		;;
  2) InstallLokiAdditions
		 x=1
	  ;;

	[mM])	bash "$rootdir"/xmetalLinuxScripts.sh
			 	;;

  [qQ]) $commonFunctions
		 	 quitScript
		 	;;

	esac

done
