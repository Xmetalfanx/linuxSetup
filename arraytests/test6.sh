
array=(
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

function displayMenuEntries()(

	clear

	if [ -n "$menuKey" ] && [ -n "$currentMenuText" ]; then
		echo -en "\t$menuKey\t $currentMenuText\n"
	else
		return
	fi

)


function mainMenuEchoType() {

	#clear

	declare -A menuKey
	declare -A menuText

	echo -e "\t###############################################"
	echo -e "\tMENUS"
	echo -e "\t###############################################\v"

	# as long as there are elements in the array
	for element in ${array[@]}
	do

		#echo -e "element: $element"

		# get the length of that element
		elementLength=${#element}

		# checking the element of the array against the 2 character length .. since no menuText would be less than that
			# 2 chars checked, because of "10" or "12" posibilities
		if [ $elementLength -lt 2 ]; then

			# just trying ideas ... this may be un-needed
			currentMenuText=$menuText


			displayMenuEntries

			#clear
			#echo -e "Key Detected"
			sleep 1

			# assign menuKey to the next element
			menuKey=$element
			#echo -e "\nmenuKey now assigned as:\t $menuKey"


			# idea reset this here when another key is detected
				# OTHERWISE I think it may end up doing "Fedora OpenSuse Ubuntu" just adding onto the last
			menuText=""



			##################################################################
			# worked before but out of order
			#echo -e "\t $xmetalArrayKey:\t $xmetalArrayValue"

		else

			#echo -e "menuText detected"
			#sleep 2



			menuText+="$element "
			#echo -e "menuText here is:\t $menuText"
			#sleep 2

		fi


	done


	#############################################################
	# debugging "exit"
	exit




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

# i will ask in this function but a check 'command -v Dialog' will be done later and no question asked
# this is a proof of concept below
function testMenuChoice() {

	clear

	echo -e "Do you want to use the Dialog (D) or Echo (E) Menu system?"
	read -p "Your Choice? " menuTypeChoice


	case $menuTypeChoice in
		[dD]) mainMenuDialogType ;;
		[eE]) mainMenuEchoType ;;
		*) echo -e "invalid selection" ;;
	esac

}

testMenuChoice
