#!/bin/bash

BACKTITLE="Xmetal's Linux Setup Scripts"
TITLE="Main Menu"
MENU="Please Select an option"
HEIGHT=20
WIDTH=65
CHOICEHEIGHT=10

arrayTest=(
	1. "Update System"
	2. "Optimize Mirrors"
	3. "Arch Based Distros"
	4. "Debian Based Distros"
	5. "Fedora"
	6. "OpenSUSE Based Distros"
	7. "Solus"
    8. "Ubuntu based"
	C. "Install Third Party Codecs"
	I. "Display info about current install"
	R. "Install ThirdParty Repos"
	S. "Install Software"
	T. "Theming"
	X. "Xmetal (Batch) Tasks"
	Q. "Exit to Prompt"
)

assArrayTest=(
	[1]="Update System"
	[2]="Optimize Mirrors"
	[3]="Arch Based Distros"
	[4]="Debian Based Distros"
	[5]="Fedora"
	[6]="OpenSUSE Based Distros"
	[7]="Solus"
	[8]="Ubuntu based"
	[C]="Install Third Party Codecs"
	[I]="Display info about current install"
	[R]="Install ThirdParty Repos"
	[S]="Install Software"
	[T]="Theming"
	[X]="Xmetal (Batch) Tasks"
	[Q]="Exit to Prompt"
)

assArrayTest2=(
	1.="Update System"
	2.="Optimize Mirrors"
	3.="Arch Based Distros"
	4.="Debian Based Distros"
	5.="Fedora"
	6.="OpenSUSE Based Distros"
	7.="Solus"
	8.="Ubuntu based"
	C.="Install Third Party Codecs"
	I.="Display info about current install"
	R.="Install ThirdParty Repos"
	S.="Install Software"
	T.="Theming"
	X.="Xmetal (Batch) Tasks"
	Q.="Exit to Prompt"
)

assArrayTest3=(
	"[1.]"="Update System"
	"[2.]"="Optimize Mirrors"
	"[3.]"="Arch Based Distros"
	"[4.]"="Debian Based Distros"
	"[5.]"="Fedora"
	"[6.]"="OpenSUSE Based Distros"
	"[7.]"="Solus"
	"[8.]"="Ubuntu based"
	"[C.]"="Install Third Party Codecs"
	"[I.]"="Display info about current install"
	"[R.]"="Install ThirdParty Repos"
	"[S.]"="Install Software"
	"[T.]"="Theming"
	"[X.]"="Xmetal (Batch) Tasks"
	"[Q.]"="Exit to Prompt"
)

function menu() {

	#echo -e "${arrayTest[@]}"
	length=${#arrayTest[@]}
	totalArray=${arrayTest[@]}

	echo -e "ArrayTest Length: $length"

	counter=0

	clear

	declare -A newArray
	newArray=$(echo ${arrayTest[@]} | awk '/^.\./ {print}' )

	echo -e "newArray:\n\n$newArray[@]"
	exit






	for menuEntry in $totalArray
	do
		currentItem=${arrayTest[$counter]}
		echo -e "\nCounter at $counter: \t $currentItem"

		if [ $((counter%2)) -eq 0 ]; then
			#echo -e "Counter $counter is odd"

			# "key" because that is what key you can hit
			menuKey=$currentItem
			echo -e "Menu Key: $menuKey"

		else
			#echo -e "Counter $counter is even"
			menuText=$currentItem
			echo -e "Menu Text: \"$menuText\" "

		fi

		# increment counter
		counter=$(( $counter + 1 ))

		#echo -e "${newArray[@]}"

	done

	# test
	clear
	echo -e "if something is displayed here is an indexed array: ${arrayTest[4]}"
	echo -e "if something is displayed HERE, I THINK that means it's an associative array: ${arrayTest[4.]} "

}

# Source idea; https://www.putorius.net/create-multiple-choice-menu-bash.html
function menu2() {
	totalAssArray=${assArrayTest[@]}

	echo -e "$totalAssArray"

	for eachItem in $totalAssArray
	do
		echo -e "$eachItem"


	done
}

function menu3() {

	dialog 	--title "$TITLE" \
			--backtitle "$BACKTITLE" \
			--menu "$MENU" \
			$HEIGHT $WIDTH $CHOICEHEIGHT \
			"${assArrayTest2[@]}"
}


#counterExample

menu3



function counterExample() {
	COUNTER=0
	while [[ ${COUNTER} -le 100 ]]; do
	sleep 1
	COUNTER=$(($COUNTER+10))
	echo ${COUNTER}
	done | whiptail --gauge "Running Data Loader" 6 50 ${COUNTER}
}

function gauge() {
	whiptail --gauge "Getting data ..." 6 60 50

}
