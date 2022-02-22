#!/bin/bash

BACKTITLE="Xmetal's Linux Setup Scripts"
TITLE="Main Menu"
MENU="Please Select an option"
HEIGHT=25
WIDTH=65
CHOICEHEIGHT=15


# function dialogSample() {
# 	dialog  --clear \
# 	        --msgbox $text \
# 	    	$height \
# 		    $width
# }

# function dialogMenu() {


# 	OPTIONS=( 1 "Update Your System - including Snap and Flatpaks"
# 			2 "Optimizing Mirrors/Repos"
# 			3 "Arch-based Distros"
# 			4 "Debian Based Distros"
# 			5 "Fedora"
# 			6 "OpenSUSE based Distros"
# 			7 "Solus"
# 			8 "Ubuntu based Distros"
# 			C "Install Codecs - maybe third party"
# 			I "Displays Info detected by these scripts"
# 			R "Install Third Party Repos"
# 			S "[MENU] Install Software"
# 			T "[MENU] Install Theming"
# 			X "Xmetal's Batch Scripts"
# 			Q "Quit/Exit to Prompt"
# 		)

# 	CHOICE=$(dialog  --title "$TITLE" \
# 			--backtitle "$BACKTITLE" \
# 			--menu "$MENU" \
# 			$HEIGHT $WIDTH $CHOICEHEIGHT \
# 			"${OPTIONS[@]}" \
# 				2>&1 >/dev/tty)
# 	case $CHOICE in
# 			1)
# 				universalUpdate

# 				## For updating Snaps and/or Flatpaks
# 				universalAppUpdates
# 				;;

# 			2) optimizeRepo ;;

# 			# Located in /functions/f_mainSubMenus.cfg
# 			3) mainArchMenu ;;
# 			4) mainDebianMenu ;;
# 			5) mainFedoraMenu ;;
# 			6) mainOpenSUSEMenu ;;
# 			7) mainSolusMenu ;;
# 			8) mainUbuntuMenu ;;
# 			[cC]) universalCodecInstall ;;
# 			[iI]) massInfoOutput ;;
# 			[rR]) thirdPartyRepoCheck ;;
# 			[sS]) universalSoftwareMenu ;;
# 			[tT]) universalThemingMenu ;;
# 			[xX]) xmetalTasks ;;
# 			[qQ]) quitScript ;;
# 			*) invalidSection ;;
# 	esac
# }

function menu2() {

	CHOICE="Your Selection?: "
	menu=( "${bold}${underline}Xmetal's Linux Scripts${completeReset} \n"
		1 "1. \t Update your System - including Snaps and Flatpaks"
		2 "Optimizing Mirrors/Repos"
		3 "Arch-based"
		4 "Debian"
		5 "Fedora"
		6 "OpenSUSE"
		7 "Solus"
		8 "Ubuntu based"
		C "Install Third Party Codecs"
		I "Display info detected by the scripts"
		R "Install ThirdParty Repos"
		S "Install Software"
		T "Theming"
		X "Xmetal (Batch) Tasks"
		Q "Exit to Prompt \n\n"
	)


	while [ $x=1 ]; do

	select selection in "${menu[@]}"; do

		case $selection in

			1) universalUpdate

				## For updating Snaps and/or Flatpaks
				universalAppUpdates
				;;

			2) optimizeRepo ;;

			# Located in /functions/f_mainSubMenus.cfg
			3) mainArchMenu ;;
			4) mainDebianMenu ;;
			5) mainFedoraMenu ;;
			6) mainOpenSUSEMenu ;;
			7) mainSolusMenu ;;
			8) mainUbuntuMenu ;;

			[cC]) universalCodecInstall ;;

			[iI]) massInfoOutput ;;

			[rR]) thirdPartyRepoCheck ;;

			[sS]) universalSoftwareMenu ;;

			[tT]) universalThemingMenu ;;

			[xX]) xmetalTasks ;;

			[qQ]) quitScript ;;

		esac
# 	done
# }

dialogMenu
