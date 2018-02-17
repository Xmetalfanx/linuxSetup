#!/bin/bash

rootdir=$basedir

commonFunctions= . "$rootdir"/tasks/functions/f_common.cfg
$commonFunctions

universalFunctions= . "$rootdir"/tasks/functions/includeUniversalFunctions.cfg
$universalFunctions

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
	echo -e "3. \t Install\Update MPV from PPA"
	echo -e "\t Install GetDebs Game PPA for Game downloads"
	echo -e "\t Install My picks of PPA for software or the LATEST versions of certain softwares"


	echo -e "m. \t Return to Main Menu"
	echo -e "q. \t Exit to Prompt\n\n"
	read -p "Your Choice?: " addSoftwareSelection

	case $addSoftwareSelection in
		1) multimediaAppsInstall
	 		x=1
	 		;;

		2) officeSuiteMenu
			x=1
			;;

		3) updatedPPAMPV
			x=1
 	 		;;

		[mM]) bash "$rootdir"/xmetalLinuxScripts.sh ;;

  		[qQ]) quitScript	;;

		* ) invalidSection ;;

	esac
done
