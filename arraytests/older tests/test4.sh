#!/bin/bash

# source of where i got the original code (array being different of course)

list=(	'Update System'
		'Optimize Mirrors'
		'Arch Related'
		'Debian Related'
		'Fedora Related'
		'OpenSuse Related'
		'Solus Related'
		'Ubuntu Related'
		'Quit to Prompt'
) # my list

list2=(	'1' 'Update System'
		'2' 'Optimize Mirrors'
		'3' 'Arch Related'
		'4' 'Debian Related'
		'5' 'Fedora Related'
		'6' 'OpenSuse Related'
		'7' 'Solus Related'
		'8' 'Ubuntu Related'
		'Q' 'Quit to Prompt'
) # my list

assoArray=(	[1] 'Update System'
		[2] 'Optimize Mirrors'
		[3] 'Arch Related'
		[4] 'Debian Related'
		[5] 'Fedora Related'
		[6] 'OpenSuse Related'
	    [7] 'Solus Related'
		[8] 'Ubuntu Related'
		[Q] 'Quit to Prompt'
) # my list


declare -a dia=()
declare -a xmetalArrayTest=()



list2Length=${!list2[@]}                              # dialog array

clear

for index in ${list2[@]}; do # for each index in the list


	indexLength=${#index}

	echo -e "\nindex:\t$index"
	#echo -e "indexLength:\t$indexLength"

	##############################################
	# idea: check if index contains ONLY ONE character and assign that to menuKey 
	if [ $indexLength -lt 1 ]; then 
		menuKey=$index
		
		#echo -e "menuText:\t$menuText" 
	elif [ $indexLength -gt 2 ]; then 
		menuText=$index
		echo -e "menuText:\t$menuText"
		xmetalArrayTest+=$xmetalArrayTest[$menuText]

		#echo -e "\n\ntest:\t\t${xmetalArrayTest[0]}"

	fi 

	###########################################
	#dia+=("$index" "$index")

done

#echo -e "\n\nxmetalArrayTest:\t${xmetalArrayTest[0]}"

exit

####################################################################

# echo -e "list2: ${list2[@]}"

# # idea: test the actual array to see what it shows
echo -e "\nlist2:\t ${list2[@]}"
#echo -e "\n\n\nDia:${dia[@]}"
echo -e "\nassoArray:\t ${assoArray[@]}"

for entries in ${list2[@]}
do 
	echo -e "\nentries:\t $entries"
done 



####################################################################

choice=$(
  dialog --menu "MENU" 0 40 0 "${list2[@]}" \
    3>&1 1>&2 2>&3 3>&- # Swap stdout with stderr to capture returned dialog text
)

dialog_rc=$? # Save the dialog return code

clear # restore terminal background and clear


case $dialog_rc in
  0)
    printf 'Your choice was: %s\n' "${list[choice]}"
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
