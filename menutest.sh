#!/usr/bin/env bash

foobarTitle="TITLE HERE"
varTitle="${foobarTitle}"



main_menu_items=(
    1 'Update System'
    2 'Optimize Mirrors'
    3 '[Sub-Menu] Arch Related'
    4 '[Sub-Menu] Debian Related'
    5 '[Sub-Menu] Fedora Related'
    6 '[Sub-Menu] OpenSUSE Related'
    7 '[Sub-Menu] Solus Related'
    8 '[Sub-Menu] Ubuntu Related'
	9 '[Sub-Menu] Cleanup Linux System'
	C 'Install Multimedia Codecs'
	I 'Display Info about current install'
	R "Check/Install Third Party Repositories"
    S '[Sub-Menu] Install Software'
    T '[Sub-Menu] Install Theming'
	X 'Xmetal Bulk Tasks'
	Q 'Quit To Prompt'
)


function set_vars(){

  BOLD="\033[1m"
  WHITE="\03"
  RED="\e[31m"
  GREEN="\e[32m"
  MAGENTA="\e[35m"
  BLUE="\e[34m"
  RESET="\e[0m"

}

set_vars

function menu_title() {
    BORDER1="----------------------------------------------------"
    BORDER2="####################################################"
    MENU_TITLE="${1}"

    if [ -z "${1}" ]; then
      return
    fi

    clear
    #echo -e "${BORDER1}\n[+] ${MENU_TITLE}\n${BORDER1}\n\v"
    echo -e "${BORDER1}\n[-] ${MENU_TITLE}\n${BORDER1}\v"

}

function setupMenu() {

  for element in "${main_menu_items[@]}"
    do
		# check the length of the element
			# if it's 2 chars or under it has to be a key .. if over it's a menu item (text)
		if [ "${#element}" -lt 3 ]; then
            menuKey=$element
			# make the message Sub-Menu, bold
            echo -en "$menuKey\t"
		else
			menuText=$element
            search="[Sub-Menu]"
            #echo -e "${menuText}"
            if [[ "${menuText}" == *"${search}"* ]]; then
                echo -e "${BOLD}${search}${RESET} ${menuText#\[Sub-Menu\] }"
            else
                echo -e "${menuText}"
            fi
		fi

    done
}

#menu_title "Xmetal's Linux Setup Scripts"
#setupMenu "${main_menu_items}"

#var2="foobar"

#echo -e "${var//bar}"



###############################################################
function userChoice(){

    QUESTION="${1}"
    PROMPT="${2}"

    echo -e "${QUESTION} ${PROMPT}"
}

function foobarQuestion() {
    herp="What is your answer"
    derp="(Y/N)?"

    clear
    userChoice "${herp}" "${derp}"
}

#foobarQuestion
############################################################

##############################################################################
function fancy_message() {
    if [ -z "${1}" ]; then
      return
    fi

    local BOLD="\033[1m"
    local RED="\e[31m"
    local GREEN="\e[32m"
    local YELLOW="\e[33m"
    local MAGENTA="\e[35m"
    local RESET="\e[0m"
    local MESSAGE_TYPE=""
    local MESSAGE=""
    MESSAGE_TYPE="${1}"
    MESSAGE="${2}"

    case ${MESSAGE_TYPE} in
      header)
        echo -e "####################################################"
        echo -e "${BOLD} ${MESSAGE} ${RESET}"
        echo -e "####################################################"
        ;;

      info) echo -e "  [${GREEN}+${RESET}] ${MESSAGE}";;
      progress) echo -en "  [${GREEN}+${RESET}] ${MESSAGE}";;
      recommend) echo -e "  [${MAGENTA}!${RESET}] ${MESSAGE}";;
      warn) echo -e "  [${YELLOW}*${RESET}] WARNING! ${MESSAGE}";;
      error) echo -e "  [${RED}!${RESET}] ERROR! ${MESSAGE}";;
      fatal) echo -e "  [${RED}!${RESET}] ERROR! ${MESSAGE}"
             exit 1;;

      *) echo -e "  [?] UNKNOWN: ${MESSAGE}";;
    esac
}

fancy_message info "${varTitle}"