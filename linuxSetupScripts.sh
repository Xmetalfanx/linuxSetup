#!/bin/bash

#Title :          Xmetal's Linux Post Setup Script
#Description :    This script will setup some common things afer a fresh install of various Linux distros
#Author :         Xmetalfanx / Xmetal

########################################################################
# Import Functions

# This is needed here so my scripts can use this to load other needed things
readonly dir=$(eval pwd)

. $dir/functions/includeBasicConfigs.cfg

########################################################################
xmetalScriptsRoot=$(pwd)

x=1

# in f_common.cfg
intialTasks

function mainMenu() {

    while [ $x=1 ]; do

        #paddingBorder

        echo -e "${bold}${underline}Xmetal's Linux Scripts${completeReset} \n"

        echo -e "1. \t Update your System (including Snaps and Flatpaks)"
        echo -e "2. \t Optimizing Mirrors/Repos"
        echo -e "3. \t Arch-based"
        echo -e "4. \t Debian"
        echo -e "5. \t Fedora"
        echo -e "6. \t OpenSUSE"
        echo -e "7. \t Solus"
        echo -e "8. \t Ubuntu based"

        # only for a space
        echo
        echo -e "C. \t Install Third Party Codecs"
        echo -e "I. \t Display info detected by the scripts"
        echo -e "R. \t Install ThirdParty Repos"
        echo -e "S. \t Install Software"
        echo -e "T. \t Theming"
        echo -e "X. \t Xmetal (Batch) Tasks"

        echo -e "q. \t Exit to Prompt \n\n"
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

}

# Call the main menu
mainMenu
