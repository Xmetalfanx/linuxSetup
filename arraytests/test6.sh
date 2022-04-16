
array=(
    1 'Update System'
    2 'Optimize Mirrors'
    3 'Arch Related'
    4 'Debian Related'
    5 'Fedora Related'
    6 'OpenSUSE Related'
    7 'Solus Related'
    8 'Ubuntu Related'
	C 'Install Multimedia Codecs'
	I 'Display Info about current install'
	R "Install Third Party Codecs"
    S 'Install Software'
    T 'Install Theming'
	X 'Xmetal Bulk Tasks'
	Q 'Quit To Prompt'
)


################################################################################
# related to echo Menu


function LoopChoice(){

	case $menuSelection in

		1) universalUpdate

            ## For updating Snaps and/or Flatpaks
            universalAppUpdates
            ;;

        2) optimizeRepo ;;

        # Located in /functions/f_mainSubMenus.cfg
        3)
			clear
			mainArchMenu ;;
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
			break
			;;
        *) invalidSection ;;

	esac
}



# checking the element of the array against the 2 character length .. since no menuText would be less than that
	# 2 chars checked, because of "10" or "12" posibilities
function checkArrayElenentLength() {
	if [ $elementLength -lt 2 ]; then

		# assign menuKey to the next element
		menuKey=$element


		# idea: reset this here when another key is detected
			# OTHERWISE I think it may end up doing "Fedora OpenSuse Ubuntu" just adding onto the last
		menuText=""


	else

		# I think this is needed because of the space ... without it i see "System" "Mirror" "related" "related"
			# where the FIRST word is cut off
		menuText+="$element "

	fi

}

function mainMenuEchoType() {

	#clear

	declare -A menuKey
	declare -A menuText


	clear
	echo -e " ###############################################"
	echo -e " MENUS"
	echo -e " ###############################################\v"

	for element in "${array[@]}"
	do

		# get the length of that element
		elementLength=${#element}

		#echo -e "elementLength of $element is:\t$elementLength"


		if [ $elementLength -lt 2 ]; then
			menuKey=$element
			echo -en " $menuKey:\t"
		else
			menuText=$element
			echo -en "$menuText\n"
		fi


		menuKey=""
		menuText=""

	done


	echo
	read -p "Your choice: " menuSelection

	LoopChoice

}

################################################################################

# original working dialog (so to speak)
function mainMenuDialogType() {

 	TITLE="Title"
    BACKTITLE="Back Title"
    MENU="Please Select an option"
    HEIGHT=20
    WIDTH=50
    CHOICEHEIGHT=15

    #choice=$(dialog --menu "menu" 0 0 0 "${array6[@]}" )
    menuSelection=$(dialog  --menu "$MENU" 0 0 0 "${array[@]}" \
					3>&1 1>&2 2>&3 3>&- # Swap stdout with stderr to capture returned dialog text
					)

	dialog_rc=$? # Save the dialog return code

	clear # restore terminal background and clear


	case $dialog_rc in
		0)
			printf 'Your choice was: %s\n' "${array[menuSelection]}"
			;;
		1)
			echo 'Cancelled menu'
			;;
		255)
			echo 'Closed menu without choice'
			;;
		*)
			printf 'Unknown return code from dialog: %d\n' $dialog_rc >&2
			;;
	esac

	echo -e "$mainMenuChoice"

}

function mainMenuDialogType2() {

 	TITLE="Title"
    BACKTITLE="Back Title"
    MENU="Please Select an option"
    HEIGHT=20
    WIDTH=50
    CHOICEHEIGHT=15

    #choice=$(dialog --menu "menu" 0 0 0 "${array6[@]}" )
    menuSelection=$(dialog  --menu "$MENU" 0 0 0 "${array[@]}" \
					3>&1 1>&2 2>&3 3>&- # Swap stdout with stderr to capture returned dialog text
					)

	dialog_rc=$? # Save the dialog return code

	clear # restore terminal background and clear


	LoopChoice

	#echo -e "$mainMenuChoice"


}

function testMenuChoice() {

	echo -e "debugging output: testing if dialog is installed"

	if [ $(command -v dialog) ]; then
		echo -e "Dialog Detected"
		mainMenuDialogType2
	else
		mainMenuEchoType
	fi
}

testMenuChoice
