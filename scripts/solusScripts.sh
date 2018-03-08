#!/bin/bash

#######################################################################################

solusUnstableRepo="https://packages.solus-project.com/unstable/eopkg-index.xml.xz"

function enableUnstableRepo
{
   	# Disable "Default"/"Stable" Repo
   	sudo eopkg disable-repo Stable 

   	echo -e "Enabling UNSTABLE Solus Repo"
   	userPrompt
 	sudo eopkg add-repo SolusUnstable $solusUnstableRepo
 	sudo eopkg enable-repo SolusUnstable


	clear
	echo -e "Unstable Solus repo added and enabled"
	echo -e "*** IMPORTANT **** "
	echo -e "Check with the Solus Team to see if they warn against updating Unstable"
	echo -e "From time to time they say \" Don't Update if your on Unstable until futher notice \"  "
	echo
	echo -e "PLEASE NOTE: this does NOT update/upgrade anything... IT JUST ADDS/ENABLES the Unstable repo."
	userPrompt

}

# This function is for people who HAVE enabled the Unstable repo and want to switch back to the Stable branch
function enableStableRepo
{
   	sudo eopkg disable-repo SolusUnstable 

   	echo -e "About to disable the Unstable branch (if you added/enabled it) and switching back to the default Solus Stable branch"
   	userPrompt
 	sudo eopkg enable-repo Stable

 	# Note: this is all useless I supposeo if someone clicked this option by mistake and never added the unstable branch 

}


#######################################################################################
x=1

while [[ $x=1 ]]; do

	clear
	echo -e 	"Xmetal's Solus Script \n"
	echo -e 	"Please Select your Choice \n"

	echo -e 	"1.	Switch from Stable to Unstable Repos"
	echo -e 	"2. \tSwitch from Unstable to Stable Repos"

	echo -e 	"\nIndividual Tasks below"
	echo -e   	"3. \tAdd Unstable Repo (DOES NOT disable the default repo or ENABLE Unstable repos"
	echo -e   	"4. \tDisable UNStable Repo (useful for when the Solus Team says \"Dont Update, if your on the Unstable, now\")"

	echo -e 	"m. \t Return to Main Menu"
	echo -e 	"q.	 Exit to Prompt \n\n"

  read -p "Your Choice?:" fedoraSelection

	case $fedoraSelection in

		1) enableUnstableRepo 
			x=1 ;;

		2) enableStableRepo
			x=1 ;;

	  	3) sudo eopkg add-repo SolusUnstable $solusUnstableRepo
	       x=1 ;;

		4) sudo eopkg disable-repo solusUnstableRepo
		   x=1	;;

		[mM])	clear 
				exit
				;;

		[qQ]) quitScript ;;

		* ) invalidSection ;;

		esac
done