#!/bin/bash

rootdir=$basedir

commonFunctions= . "$rootdir"/tasks/functions/f_common.cfg
$commonFunctions
#######################################################################################
function solusUpdate
{
   echo -e "About to Update Solus via command line, NOT TYPICALLY recommended by Solus Team"
	 read -p "Do you want to continue? (Press any key for YES, Control + Z for NO )"
	 sudo eopkg up

}

function addUnstableRepo
{
   sudo eopkg add-repo Unstable https://packages.solus-project.com/unstable/eopkg-index.xml.xz
	 clear
	 echo -e "Unstable Solus repo added and enabled"
	 echo -e "*** IMPORTANT **** "
	 echo -e "Check with the Solus Team to see if they warn against updating Unstable"
	 echo -e "From time to time they say \" Don't Update if your on Unstable until futher notice \"  "
	 userPrompt

}

function disableRepo
{
	sudo eopkg disable-repo $1
}

function enableRepo
{
	sudo eopkg enable-repo $1
}


#######################################################################################
x=1

while [[ $x=1 ]]; do

	clear
	echo -e "Xmetal's Solus Script \n"
	echo -e "Please Select your Choice \n"

	echo -e 	"1. \t Update Solus via Commandline"
	echo -e 	"2.	\t Switch from Stable to Unstable Repos"
	echo -e 	"3. \t Switch from Unstable to Stable Repos"

	echo -e 	'Individual Tasks below'
	echo -e   "4. \t Disable Stable Repo"
	echo -e   "5. \t Add UNStable Repo"
  echo -e   "6. \t Enable UNStable Repo (you must have it added first)"
	echo -e   "7. \t Disable UNStable Repo (useful for when the Solus Team says \"Dont Update Unstable, now\")"

	echo -e 	"m. \t Return to Main Menu"
	echo -e 	"q.	 Exit to Prompt \n\n"

  read -p "Your Choice?:" fedoraSelection

	case $fedoraSelection in

	  1) solusUpdate
	     x=1 ;;

		2) ## Adds Unstable repo and disables stable in one shot
			addUnstableRepo
			disableRepo Solus ;;

		3)	disableRepo Unstable
			enableRepo Stable ;;

    	4) disableRepo Solus
	    	x=1 ;;

	  	5) addUnstableRepo
	     	x=1 ;;

		6) enableRepo Unstable
		   x=1	;;

    	7) disableRepo Unstable
			 x=1 ;;

		[mM])	bash "$rootdir"/xmetalLinuxScripts.sh
						;;

		[qQ]) quitScript 	;;

		* ) invalidSection ;;


		esac

done
