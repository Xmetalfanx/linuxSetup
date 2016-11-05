#!/bin/bash

#Title : Ubuntu Trusty Tar -based Setup
#Description : This script installs the Arc Theme and Icon Packs used
#Author : Xmetalfanx / Xmetal
#Date 	: 2016-09-06
#Version: v0.5
#Usage 	: bash ubuntuTrustyPostInstall.sh

rootdir=$basedir

commonFunctions= . "$rootdir"/tasks/functions/f_common.cfg
$commonFunctions

postInstallsDir="$rootdir"/postInstalls
themeDir="$rootdir"/tasks/themes

<<<<<<< HEAD
<<<<<<< HEAD
=======

>>>>>>> 38621a6... maintenance
=======
>>>>>>> 6ccdd50... Started Changing way distro base is detected
ubuntuFunctInclude= . "$rootdir"/tasks/functions/includeUbuntuFunctions.cfg
$ubuntuFunctInclude

###################################################################################################
x=1

while [[ $x=1 ]]; do

			echo -e   "Xmetal's Ubuntu 14.04 Trusty based,  Post-Installation Script \n"
			echo -e   "Please Select Task \n"

			echo -e   "1. \t Update System"
			echo -e   "\v2. \t Adds Theme PPAs (Ravenfinity, Moka, Noobslab's Icon Repo (both), \n \t Noobslab's Theme Repo, Numix, and snwh's (Paper Theme) )"

			echo -e   "\v3. \t Install PPA Themes/Icons \n \t (Ambiance, Radiance, Moka, The Arc Theme AND Arc Icons, \n \t Numix Themes and Icons, Vertex Icons, AND Kawaiki Icons "

			echo -e   "\v4. \t Add Themes via Github (Themes may not all look right)"
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 38621a6... maintenance
			echo -e   "\v5. \t Add Various Software"
			echo -e  	"\v6. \t [16.10 based+ ] Install Budgie-Remix PPA [Ads SolMate LIKE Theming]"
			echo -e 	"\v7. \t [ElementaryOS] Add PPA Support, Synaptic, and Gnome-tweak Tool"
			echo -e 	"\v8.	[Ubuntu Mate] Add the Ubuntu Mate Development PPA"
<<<<<<< HEAD
=======
			echo -e   "5. \t Add Software"
			echo -e  	"6. \t Install Budgie-Remix PPA"
>>>>>>> 69ac26b... moving ubuntu functions around and adding Xenial
=======
>>>>>>> 38621a6... maintenance

			echo -e   "m. \tReturn to Main Menu"
			echo -e		"q. \tExit to Prompt \n\n"

			read -p "Your Choice?: " trustySelection

		case $trustySelection in

		  1) aptUpgrade
				 x=1	;;

		  2) addThemePPAs
				 x=1	;;

		  3) installPPAThemes
				 x=1 ;;

     4) # Sub-menus
		    bash "$themeDir"/github/githubThemes.sh  ;;

		5) # This is a sub-menu
   			bash "$postInstallsDir"/ubuntu/addSoftwareApt.sh ;;
<<<<<<< HEAD
=======

		6) budgieRemixPPA
		   x=1 ;;

		7) InstallLokiAdditions
		 	 x=1	 ;;

		8) addUMateDevPPA
				x=1		;;

		[aA]) aptUpdate
					addThemePPAs
					installPPAThemes
					bash "$themeDir"/github/githubThemes.sh
					bash "$postInstallsDir"/ubuntu/addSoftwareApt.sh

					x=1
					;;
>>>>>>> 69ac26b... moving ubuntu functions around and adding Xenial

<<<<<<< HEAD
		6) budgieRemixPPA
		   x=1 ;;

		7) InstallLokiAdditions
		 	 x=1	 ;;

		8) addUMateDevPPA
				x=1		;;

		[aA]) aptUpdate
					addThemePPAs
					installPPAThemes
					bash "$themeDir"/github/githubThemes.sh
					bash "$postInstallsDir"/ubuntu/addSoftwareApt.sh

					x=1
					;;
=======
		[mM])	bash "$rootdir"/xmetalLinuxScripts.sh	;;

		[qQ]) quitScript	;;

>>>>>>> 38621a6... maintenance

		[mM])	bash "$rootdir"/xmetalLinuxScripts.sh	;;

		[qQ]) quitScript	;;


		esac

done
