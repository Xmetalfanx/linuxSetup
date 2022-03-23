array2=(
    '1. Update System'
    '2. Optimize Mirrors'
    '3. Arch Related'
    '4. Debian Related'
    '5. Fedora Related'
    '6. OpenSUSE Related'
    '7. Solus Related'
    '8. Ubuntu Related'
	'C. Install Multimedia Codecs'
	'I. Display Info about current install'
	'R. Install Third Party Codecs'
    'S. Install Software'
    'T. Install Theming'
	'X. Xmetal Bulk Tasks'
	'Q. Quit To Prompt'
)



function array2Test() {

	IFS="."
	read -ra testArray <<< ${array2[@]}

	#echo -e "${testArray[@]}"

	echo -e "${testArray[5]}"

	# for element in "${testArray[@]}"
	# do
	# 	#printf "$s$element\n"

	# 	echo -e "\n$element"
	# done

	# IFS=" "
}

#array2Test
