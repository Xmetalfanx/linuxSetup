function universalSoftwareFunction
{
	x=1

	clear

	while [[ $x=1 ]]; do

		echo -e   "Please Select Task \n"

		echo -e   "\v1. \t Adds Common Software (Ones I always Add) "
		echo -e   "\v2. \t ${bglightblue}[Sub-Menu] ${completeReset}Specific tasks for certain distrobutions or version of said-distros"
		echo -e   "\v3. \t ${bglightblue}[Sub-Menu]${completeReset} Web Browsers"

		echo -e "4. \t Download tinyMediaManager for multimedia manager"
		echo -e "5. \t Install Etcher to put ISOs on USB drives"
	  	echo -e "6. \t Install Atom Editor"
		echo -e "7. \t Install Wine and PlayOnLinux"
		echo -e "8. \t Install Sublime Text"

		echo -e  "\v m. \tReturn to Main Menu"
		echo -e	"q. \tExit to Prompt \n\n"

		read -p "Your Choice?: " softwareSelection

		case $softwareSelection in

		  	1) installApps $usefulApps
				x=1	;;

			2) specificUbuntuSoftwareMenu
				x=1 ;; 

		  	3) browserMenu
			 	x=1 ;;

			4) tinyMediaManagerInstall
				x=1;; 

			5) etcherInstall
				x=1;; 

			6) AtomInstall
				x=1;; 

			7) wineInstall
				x=1;; 

			8) sublimetextInstall
				x=1;; 
			
			[mM]) clear 
				  exit
				  ;;

		[qQ]) quitScript ;;

		* ) invalidSection ;;

		esac

	done
}