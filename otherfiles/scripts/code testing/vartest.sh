#!/bin/bash

arch_menu_items=(
		1 '[Sub-Menu] AUR Support Options'
		2 '[Sub-Menu] Manjaro specific'
		3 'Reset to Original Mirrors'
		4 'Add Sound Support'
		5 'Adds Archive Support'
		M 'Return to Main Menu'
		Q 'Exit to Prompt'
	)

debian_menu_items=(
		1 'Install Linux Firmware Packages (Both)'
		2 'Install Intel MicroCode Package'
		3 'Install Archive Support'
		4 'Add a few useful packages including Synaptic'
		5 'Check for contrib and non-free sections in sourceslist and add them if desired'
		6 'Check/Add if not there, sudo permissions, for the current user'
		B 'Bulk Debian Tasks'
		M 'Return to Main Menu'
		Q 'Exit to Prompt'
	)




function userPrompt() {
  read -p "Press [Enter] to continue "
}

function setupMenu() {

	currentArrayName="$1"
	declare -n currentArray=${currentArrayName}

	for element in "${currentArray[@]}"
    do
		
		# get the length of that element
		elementLength=${#element}

		# check the length of the element
		if [ $elementLength -lt 2 ]; then
			menuKey=$element
			echo -en " $menuKey:\t"
		else
			menuText=$element
			echo -en "$menuText\n"
		fi

    done
}


# test 1
setupMenu "arch_menu_items"

echo
# test 2
setupMenu "debian_menu_items"
