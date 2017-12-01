#!/bin/bash

rootdir=$basedir

cumlOSuse= . "$rootdir"/tasks/functions/includeOpenSuseFunctions.cfg
$cumlOSuse

####################################################################################################

x=1

while [[ $x=1 ]]; do

	clear

	echo  "It appears your version of OpenSuse is:"

	suseversion= cat /etc/os-release | grep ^NAME= | sed 's/^NAME="//g' | sed 's/"$//g'

	echo
	echo 
	echo -e "Xmetal's OpenSuse Script \n"
	echo -e "Please Select your Choice \n"

	echo -e 	"1. \t Update OpenSuse-based Distro"
	echo -e     "2. \t Add Packman Repositories"
	#echo -e     "3. \t Setup Multimedia/Codecs"
	echo -e     "4. \t Install Google Chrome"
	echo -e     "5. \t Add/Install Extra Software"
	echo -e   	"6. \t Add Cimmamon to OpenSuse"

  	echo -e 	"m. \t Return to Main Menu"
	echo -e     "q. \t Exit to Prompt  \n\n"

	read -p "Your Choice?:" openSuseSelection

		case $openSuseSelection in

		  1) universalUpgrade
				x=1 ;;

		  2) packmanRepoSuse
				x=1	;;

		  3) setupMultimediaLeap
				x=1	;;

		  4) installGoogleChrome
			  	x=1 ;;

		  5) installCommonSoftware
			  	x=1	;;

		  6) cinnamonSuseRepo
				x=1	 ;;


			[aA]) universalUpgrade
			  setupMultimediaLeap
			  installGoogleChrome
			   x=1
			   ;;

			[mM])	
				clear 
				exit
				;;

			[qQ]) quitScript ;;

			* ) invalidSection ;;

		esac

done
