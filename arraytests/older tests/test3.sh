#!/bin/bash

list=('Google Chrome' 'Brackets' 'Visual Studio') # my list
declare -a dia=()                                 # dialog array

for index in "${!list[@]}"; do # for each index in the list
  dia+=("$index" "${list[index]}")
done

choice=$(
  dialog --menu "MENU" 0 0 0 "${dia[@]}" \
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
