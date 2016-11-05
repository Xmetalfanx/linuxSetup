#!/bin/bash

#Title :          Xmetal's Linux Post Setup Script
#Description :    This script will setup some common things afer a fresh install of various Linux distros
#Author :         Xmetalfanx / Xmetal
#Date 	:         2016-09-25
#Version:         v0.6
#Usage 	:         bash xmetalLinuxScripts.sh

readonly basedir=$(pwd)
export basedir

rootdir=$basedir


postInstallsDir="$rootdir"/postInstalls
<<<<<<< HEAD
<<<<<<< HEAD

commonFunctions= . "$rootdir"/tasks/functions/f_common.cfg
$commonFunctions


<<<<<<< HEAD
########################################################################
x=1
clear
checkDistro2

while [[ $x=1 ]]; do

      #clear

      echo -e "Xmetal's Linux Script \n"
      echo -e "Please Select your Distrobution family \n"

      echo -e   "1. \t Ubuntu 14.04 Trusty Tahr based"
      echo -e   "2. \t Arch-based"

      echo -e   "3. \t OpenSUSE 42.1 Leap"
      # echo -e   "4. \t [COMPLETELY UNTESTED] OpenSuse Tumbleweed"

      echo -e   "5. \t Fedora"
      echo -e   "6. \t [*UNTESTED] Github Themes and Icons"
=======
commonFunctions= . "$rootdir"/tasks/f_common.cfg
=======

commonFunctions= . "$rootdir"/tasks/functions/f_common.cfg
>>>>>>> 38621a6... maintenance
$commonFunctions

=======
>>>>>>> 719107e... Changed common tasks to variables
########################################################################
x=1
checkDistro
clear
echo "It appears you MAY be running" $distro
echo -e "\n\n"


while [[ $x=1 ]]; do

      clear

      echo -e "Xmetal's Linux Script \n"
      echo -e "Please Select your Distrobution family \n"

<<<<<<< HEAD
      echo -e "1. \t Ubuntu-based"
      echo -e "2. \t Arch-based"
      echo -e "3. \t OpenSUSE 42.1 Leap"
      echo -e "4. \t Fedora"
      echo -e "5. \t (Ubuntu based) ElementaryOS"
      echo -e "6. \n\n [*UNTESTED] Themes and Icons from Github"
      echo -e "7. \t[UNTESTED] Manjaro-fy"
      echo -e "q. \t Exit to Prompt \n\n"
>>>>>>> 69ac26b... moving ubuntu functions around and adding Xenial

=======
      echo -e   "1. \t Ubuntu 14.04 Trusty Tahr based"
      echo -e   "2. \t Arch-based"

      echo -e   "3. \t OpenSUSE 42.1 Leap"
      # echo -e   "4. \t [COMPLETELY UNTESTED] OpenSuse Tumbleweed"

      echo -e   "5. \t Fedora"
      echo -e   "6. \t [*UNTESTED] Github Themes and Icons"
      echo -e   "7. \t[UNTESTED] Manjaro-fy"

>>>>>>> 38621a6... maintenance
      echo -e   "q. \t Exit to Prompt \n\n"

      read -p   "Your Choice?:" mainSelection

      case $mainSelection in
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 38621a6... maintenance
        1) bash   "$postInstallsDir"/ubuntuTrustyPostInstall.sh  ;;
        2) bash   "$postInstallsDir"/archLinuxPostInstall.sh ;;

        3) bash   "$postInstallsDir"/openSuseLeapPostInstall.sh  ;;
        4) bash   "$postInstallsDir"/openSuseTWPostInstall.sh  ;;

        5) bash   "$postInstallsDir"/fedora24PostInstall.sh  ;;
        6) bash   "$rootdir"/tasks/themes/github/githubThemes.sh ;;
<<<<<<< HEAD

        [qQ]) quitScript      ;;

        * ) invalidSection ;;


=======
        1) bash "$postInstallsDir"/ubuntuTrustyPostInstall.sh  ;;
        2) bash  "$postInstallsDir"/archLinuxPostInstall.sh ;;
        3) bash  "$postInstallsDir"/openSuseLeapPostInstall.sh  ;;
        4) bash  "$postInstallsDir"/fedora24PostInstall.sh  ;;
        5) bash "$postInstallsDir"/elementaryOSLokiPostInstall.sh  ;;
        6) bash "$rootdir"/tasks/themes/github/githubThemes.sh ;;
        7) bash "$rootdir"/tasks/themes/github/manjarofy.sh ;;


        [qQ]) quitScript
               ;;
>>>>>>> 69ac26b... moving ubuntu functions around and adding Xenial
=======
        7) bash   "$rootdir"/tasks/themes/github/manjarofy.sh ;;

        [qQ]) quitScript      ;;

        * ) invalidSection ;;


>>>>>>> 38621a6... maintenance
        esac
done
