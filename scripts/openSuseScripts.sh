#!/bin/bash

rootdir=$basedir

cumlOSuse= . "$rootdir"/tasks/functions/includeOpenSuseFunctions.cfg
$cumlOSuse

universalFunctions= . "$rootdir"/tasks/functions/includeUniversalFunctions.cfg
$universalFunctions

####################################################################################################

x=1

while [[ $x=1 ]]; do

	clear

	echo -e 	"Xmetal's OpenSuse Script \n"
	echo -e 	"Please Select your Choice \n"

	echo -e     "1. \t Add Packman Repositories"
	#echo -e    "2. \t Setup Multimedia/Codecs"
	echo -e   	"3. \t Add Cimmamon to OpenSuse"

  	echo -e 	"m. \t Return to Main Menu"
	echo -e     "q. \t Exit to Prompt  \n\n"

	read -p "Your Choice?:" openSuseSelection

		case $openSuseSelection in

		  1) packmanSuseRepo
				x=1	;;

		  #2) setupMultimediaLeap
			#	x=1	;;

		  3) cinnamonSuseRepo
				x=1	 ;;

			[mM])	
				clear 
				exit
				;;

			[qQ]) quitScript ;;

			* ) invalidSection ;;

		esac

done
