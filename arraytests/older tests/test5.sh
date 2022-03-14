
array=(
    1="Update System"
    2="Optimize Mirrors"
    3="Arch Related"
    4="Debian Related"
    5="Fedora Related"
    6="OpenSUSE Related"
    7="Solus Related"
    8="Ubuntu Related"
    S="Install Software"
    T="Install Theming"
    Q="Quit to Prompt"
)
array2=(
    [1]='Update System'
    [2]='Optimize Mirrors'
    [3]='Arch Related'
    [4]='Debian Related'
    [5]='Fedora Related'
    [6]='OpenSUSE Related'
    [7]='Solus Related'
    [8]='Ubuntu Related'
    [S]='Install Software'
    [T]='Install Theming'
    [Q]='Quit to Prompt'
)

# array3=(
#    "Update System"
#    "Optimize Mirrors"
#    "Arch Related"
#     "Debian Related"
#     "Fedora Related"
#     "OpenSUSE Related"
#     "Solus Related"
#     "Ubuntu Related"
#     "Install Software"
#     "Install Theming"
#     "Quit to Prompt"
# )


array4=(
    '1' 'Update System'
    '2' 'Optimize Mirrors'
    '3' 'Arch Related'
    '4' 'Debian Related'
    '5' 'Fedora Related'
    '6' 'OpenSUSE Related'
    '7' 'Solus Related'
    '8' 'Ubuntu Related'
)

array5=(
    1 'Update System'
    2 'Optimize Mirrors'
    3 'Arch Related'
    4 'Debian Related'
    5 'Fedora Related'
    6 'OpenSUSE Related'
    7 'Solus Related'
    8 'Ubuntu Related'
    S 'Install Software'
    T 'Install Theming'
    Q 'Quit To Prompt'
)

# first working one ... sort of
function mainMenuEchoType() {

	clear

	declare -A menuKey
	declare -A menuText

	echo -e "\t###############################################"
	echo -e "\tMENUS"
	echo -e "\t###############################################\v"


	# displays the menu
	for menuKey in "${!array5[@]}"
	do
		menuText=${array5[$menuKey]}
		echo -e "\t$menuKey.\t$menuText"
	done

	echo
	read -p "Your Choice?:" mainSelection

    case $mainSelection in
        1) echo -e "Update System" ;;
        2) echo -e "Optimize Repo" ;;
        0) echo -e "zero pressed" ;;
        [qQ]) echo -e "Quit to Prompt" ;;
        *) invalidSection ;;
    esac

}

function mainMenuEchoType2() {

	clear

	declare -A menuKey
	declare -A menuText

	echo -e "\t###############################################"
	echo -e "\tMENUS"
	echo -e "\t###############################################\v"

	###############################################################
	## Idea only
	# 1 - read what is in the array ... the same for loop ?

	# 2 - check the current element and see if it's above 2 characters
		## if yes, add element to the MenuText Array

		## if no, add element to menuKeys array
			## how?

	for element in ${array5[@]}
	do
		#echo -e "\nelement:\t $element"
		elementLength=${#element}

		if [ $elementLength -lt 2 ]; then
			#echo -e "$element is a menuKey\n"
			echo -e "Debugging: Adding to MenuKey array"
			menuKey+=($element)
		else

			# menuText=$element
			# echo -e "\"$element\" is a menu item\n"
			# menuText+=("$menuText")
			echo

		fi

	done

	echo -e "Full array should be here ${menuKey[@]}"

	# debugging "exit"
	exit

	###############################################################



	echo
	read -p "Your Choice?:" mainSelection

    case $mainSelection in
        1) echo -e "Update System" ;;
        2) echo -e "Optimize Repo" ;;
        0) echo -e "zero pressed" ;;
        [qQ]) echo -e "Quit to Prompt" ;;
        *) invalidSection ;;
    esac

}

################################################################################

function mainMenuDialogType() {

 	TITLE="Title"
    BACKTITLE="Back Title"
    MENU="Please Select an option"
    HEIGHT=20
    WIDTH=50
    CHOICEHEIGHT=15

    #choice=$(dialog --menu "menu" 0 0 0 "${array6[@]}" )
    menuSelection=$(dialog  --menu "$MENU" 0 0 0 "${array5[@]}" \
					3>&1 1>&2 2>&3 3>&- # Swap stdout with stderr to capture returned dialog text
					)

	dialog_rc=$? # Save the dialog return code

	clear # restore terminal background and clear


	case $dialog_rc in
	0)
		printf 'Your choice was: %s\n' "${array5[menuSelection]}"
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

# i will ask in this function but a check 'command -v Dialog' will be done later and no question asked
# this is a proof of concept below
function testMenuChoice() {

	clear

	echo -e "Do you want to use the Dialog (D) or Echo (E) Menu system?"
	read -p "Your Choice? " menuTypeChoice


	case $menuTypeChoice in
		[dD]) mainMenuDialogType ;;
		[eE]) mainMenuEchoType2 ;;
		*) echo -e "invalid selection" ;;
	esac

}

testMenuChoice