#!/bin/bash

clear

libreFunct= . f_ubuntuSoftware.cfg
$libreFunct

####################################
echo -e "Choice of how to install Libre Office"
echo -e "Please Select your Choice"
echo -e "1. \t Ubuntu-based"
echo -e "2. \t Lastest Version via PPA"
echo -e "M. \t Return to Main Menu "
echo -e "Q. \t Quit to Prompt\n\n"

read -p "Your Choice?:" libreOfficeSelection

case $libreOfficeSelection in

  1) $libreFunct
     RepoLibreOffice  ;;

  2) $libreFunct
     PPALatestLibreOffice    ;;

esac
