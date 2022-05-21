main_menu_items=(
    1 'Update System'
    2 'Optimize Mirrors'
    3 '[MENU] Arch Related'
    4 '[MENU] Debian Related'
    5 '[MENU] Fedora Related'
    6 '[MENU] OpenSUSE Related'
    7 '[MENU] Solus Related'
    8 '[MENU] Ubuntu Related'
	9 '[MENU] Cleanup Linux System'
	C 'Install Multimedia Codecs'
	I 'Display Info about current install'
	R "Install Third Party Repositories"
    S '[MENU] Install Software'
    T '[MENU] Install Theming'
	X 'Xmetal Bulk Tasks'
	Q 'Quit To Prompt'
)



# Idea: for either type of Menu
function mainMenuCaseStatement() {

	case $mainMenuSelection in

		1) universalUpdate

            ## For updating Snaps and/or Flatpaks
            universalAppUpdates
            ;;

        2) optimizeRepo ;;

        # Located in /functions/f_mainSubMenus.cfg
        3) archMenuType ;;
        4) debianMenuType ;;
        5) fedoraMenuType ;;
        6) openSUSEMenuType ;;
        7) solusMenuType ;;
        8) ubuntuMenuType ;;
		9) cleanupMenuType ;;

        [cC]) universalCodecInstall ;;
        [iI])
				massInfoOutput
				clear
				echo -e "about to return to main menu"
				userPrompt
				#echo -e "menuLoop:\t$menuLoop"
				;;
        [rR]) thirdPartyRepoCheck ;;
        [sS]) MainSoftwareMenuType ;;
        [tT]) universalThemingMenuType ;;
        [xX]) xmetalTasks ;;
        [qQ])
			quitScript
			menuLoop=1
			break
			;;
        *) invalidSection ;;

	esac

}


function createDialogMenu() {

	# $(dialog  --title "$TITLE" \
	# 					--backtitle "$BACKTITLE" \
	# 					--menu "$MENU" \
	# 					$HEIGHT $WIDTH $CHOICEHEIGHT \
	# 					"${main_menu_items[@]}" \
	# 					3>&2 2>&1 1>&3)

	echo -e "foo"
}



# night time note: there is no looping yet
function mainMenuDialog(){

	TITLE="foobar title"
	HEIGHT=20
	WIDTH=65
	CHOICEHEIGHT=15

	mainMenuSelection=$(createDialogMenu)

	mainMenuCaseStatement

	# still needed?
	menuLoop

}

mainMenuDialog