#!/bin/bash

BACKTITLE="Xmetal's Linux Setup Scripts"
TITLE="Main Menu"
MENU="Please Select an option"
HEIGHT=25
WIDTH=65
CHOICEHEIGHT=15

# Source idea; https://www.putorius.net/create-multiple-choice-menu-bash.html
function menu2() {

	echo -ne "Xmetal's Linux Scripts

	1. Update System
	2. Optmize Mirror

	Q. Quit to Prompt
	"
}

menu2
