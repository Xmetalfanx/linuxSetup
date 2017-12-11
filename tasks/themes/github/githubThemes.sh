#!/bin/sh
rootdir=$basedir

commonFunctions= . $rootdir/tasks/functions/f_common.cfg
$commonFunctions

gitFunction= . $rootdir/tasks/themes/github/functions/gitFunctions.cfg
$gitFunction

#######################################################################
x=1
clear


while [[ $x=1 ]]; do


    echo -e   "What Theme would you like to install?\n "
    echo -e   "1) \t Arc Theme and Icons Pack (includes Openbox Support)"

    echo -e 	"\nM) \t Return to Main Menu"
    echo -e		"Q) \t Exit to Prompt\n\n"

    read -p "Your Choice?:" gitThemeSelection

    case $gitThemeSelection in

        1)  gitArcThemes
            gitArcIcons
            gitArcOpenBox
			     echo "installed Arc"
            x=1
            ;;

        [mM])	bash "$rootdir"/xmetalLinuxScripts.sh
              ;;

        [qQ]) $commonFunctions
              quitScript
              ;;

    esac

done
