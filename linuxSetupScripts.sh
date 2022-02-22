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

function mainMenu() {

    sleep 1

    clear
    while [ $x=1 ]; do

        echo -ne "\v
        ${bold}${underline}Xmetal's Linux Scripts${completeReset} \n
        1. \t Update your System (including Snaps and Flatpaks)
        2. \t Optimizing Mirrors/Repos
        3. \t Arch-based
        4. \t Debian
        5. \t Fedora
        6. \t OpenSUSE
        7. \t Solus
        8. \t Ubuntu based \n

        C. \t Install Third Party Codecs
        I. \t Display info detected by the scripts
        R. \t Install ThirdParty Repos
        S. \t Install Software
        T. \t Theming
        X. \t Xmetal (Batch) Tasks
        Q. \t Exit to Prompt \n\n
            "

        read -p "Your Choice?:" mainSelection

        case $mainSelection in

        1)
            universalUpdate

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

        [qQ])
            quitScript
            ;;

        *) invalidSection ;;

        esac
    done



# BACKTITLE="Xmetal's Linux Setup Scripts"
# TITLE="Main Menu"
# MENU="Please Select an option"
# HEIGHT=25
# WIDTH=65
# CHOICEHEIGHT=15

# # dialog  --clear \
# #         --msgbox $text \
# #         $height \
# #         $width


# OPTIONS=( 1 "Update Your System - including Snap and Flatpaks"
#         2 "Optimizing Mirrors/Repos"
#         3 "Arch-based Distros"
# 		4 "Debian Based Distros"
# 		5 "Fedora"
# 		6 "OpenSUSE based Distros"
# 		7 "Solus"
# 		8 "Ubuntu based Distros"
# 		C "Install Codecs - maybe third party"
# 		I "Displays Info detected by these scripts"
# 		R "Install Third Party Repos"
# 		S "[MENU] Install Software"
# 		T "[MENU] Install Theming"
# 		X "Xmetal's Batch Scripts"
# 		Q "Quit/Exit to Prompt"
# 		)

# CHOICE=$(dialog  --title "$TITLE" \
#         --backtitle "$BACKTITLE" \
#         --menu "$MENU" \
#         $HEIGHT $WIDTH $CHOICEHEIGHT \
#         "${OPTIONS[@]}" \
#             2>&1 >/dev/tty)


# case $CHOICE in
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

#  		[cC]) universalCodecInstall ;;

#         [iI]) massInfoOutput ;;

#         [rR]) thirdPartyRepoCheck ;;

#         [sS]) universalSoftwareMenu ;;

#         [tT]) universalThemingMenu ;;

#         [xX]) xmetalTasks ;;

#         [qQ])
#             quitScript
#             ;;

#         *) invalidSection ;;

# esac

}

# Call the main menu
mainMenu
>>>>>>> 173e8bd3 (tests)
