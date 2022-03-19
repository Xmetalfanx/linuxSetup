#!/bin/bash

#Title :          Xmetal's Linux Post Setup Script
#Description :    This script will setup some common things afer a fresh install of various Linux distros
#Author :         Xmetalfanx / Xmetal

########################################################################
# Import Functions

# This is needed here so my scripts can use this to load other needed things
readonly dir=$(eval pwd)

. "$dir/functions/includeBasicConfigs.cfg"

########################################################################

x=1

# in f_common.cfg
intialTasks

<<<<<<< HEAD
# this will determine the sort of menus the scripts use
mainMenuType
=======

<<<<<<< HEAD
# night time note: there is no looping yet
function dialogMenu(){

TITLE="Main Menu"
HEIGHT=25
WIDTH=65
CHOICEHEIGHT=15

main_menu=(
	1. "Update System"
	2. "Optimize Mirrors"
	3. "Arch Based Distros"
	4. "Debian Based Distros"
	5. "Fedora"
	6. "OpenSUSE Based Distros"
	7. "Solus"
	8. "Ubuntu based"

	C. "Install Third Party Codecs"
	I. "Display info about current install"
	R. "Install ThirdParty Repos"
	S. "Install Software"
	T. "Theming"
	X. "Xmetal (Batch) Tasks"
	Q. "Exit to Prompt"
	)

	# main_menu=$(whiptail 	--title "$TITLE" \
	# 						--backtitle "$BACKTITLE" \
	# 						--menu "$MENU" \
	# 						$HEIGHT $WIDTH $CHOICEHEIGHT \
	# 						"${main_menu[@]}" \
	# 						3>&2 2>&1 1>&3)

	main_menu=$(dialog 	--title "$TITLE" \
						--backtitle "$BACKTITLE" \
						--menu "$MENU" \
						$HEIGHT $WIDTH $CHOICEHEIGHT \
						"${main_menu[@]}" \
						3>&2 2>&1 1>&3)


	case $main_menu in

		1.) universalUpdate

            ## For updating Snaps and/or Flatpaks
            universalAppUpdates
            ;;

        2.) optimizeRepo ;;

        # Located in /functions/f_mainSubMenus.cfg
        3.)
			clear
			mainArchMenu ;;
        4.) mainDebianMenu ;;
        5.) mainFedoraMenu ;;
        6.) mainOpenSUSEMenu ;;
        7.) mainSolusMenu ;;
        8.) mainUbuntuMenu ;;

        C.) universalCodecInstall ;;
        I.) massInfoOutput ;;
        R.) thirdPartyRepoCheck ;;
        S.) universalSoftwareMenu ;;
        T.) universalThemingMenu ;;
        X.) xmetalTasks ;;
        Q.)
			quitScript
			menuLoop=1
			break
			;;
        *) invalidSection ;;

	esac

	menuLoop

}


# main menu now
dialogMenu


# function mainMenu() {

#     sleep 1

#     clear
#     while [ $x=1 ]; do

#         echo -ne "\v
#         ${bold}${underline}Xmetal's Linux Scripts${completeReset} \n
#         1. \t Update your System (including Snaps and Flatpaks)
#         2. \t Optimizing Mirrors/Repos
#         3. \t Arch-based
#         4. \t Debian
#         5. \t Fedora
#         6. \t OpenSUSE
#         7. \t Solus
#         8. \t Ubuntu based \n

#         C. \t Install Third Party Codecs
#         I. \t Display info detected by the scripts
#         R. \t Install ThirdParty Repos
#         S. \t Install Software
#         T. \t Theming
#         X. \t Xmetal (Batch) Tasks
#         Q. \t Exit to Prompt \n\n
#             "

#         read -p "Your Choice?:" mainSelection

#         case $mainSelection in

#         1)
#             universalUpdate

#             ## For updating Snaps and/or Flatpaks
#             universalAppUpdates
#             ;;

#         2) optimizeRepo ;;

#         # Located in /functions/f_mainSubMenus.cfg
#         3) mainArchMenu ;;
#         4) mainDebianMenu ;;
#         5) mainFedoraMenu ;;
#         6) mainOpenSUSEMenu ;;
#         7) mainSolusMenu ;;
#         8) mainUbuntuMenu ;;

#         [cC]) universalCodecInstall ;;

#         [iI]) massInfoOutput ;;

#         [rR]) thirdPartyRepoCheck ;;

#         [sS]) universalSoftwareMenu ;;

#         [tT]) universalThemingMenu ;;

#         [xX]) xmetalTasks ;;

#         [qQ])
#             quitScript
#             ;;

#         *) invalidSection ;;

#         esac
#     done

# }

# Call the main menu
<<<<<<< HEAD
mainMenu
>>>>>>> 173e8bd3 (tests)
=======
#mainMenu
>>>>>>> 92e2edc0 (Menu Work)
=======
mainMenuEcho
>>>>>>> b121b0de (main menu redo - try 1)
