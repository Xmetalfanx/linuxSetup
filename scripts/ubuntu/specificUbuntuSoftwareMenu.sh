function specificUbuntuSoftwareMenu
{

	clear

	while [[ $x=1 ]]; do

		echo -e   "Xmetal's Ubuntu based,  Post-Installation Script \n"

		echo -e   "Please Select Task \n"

		echo -e  	"\v1. \t[16.10 based+ ] Install Budgie-Remix Theming [Adds Solus Mate like Theming ]"
		echo -e 	"\v2. \t[ElementaryOS] Add PPA Support, Synaptic, and Gnome-tweak Tool"
		echo -e 	"\v3. \t[Ubuntu Mate] Add the Ubuntu Mate Development PPA"
		echo -e 	"[Kubuntu] Install Kubuntu Backports PPA "

		1) budgieRemixPPA
			budgieTheme
		   	x=1 ;;

		2) InstallLokiAdditions
		 	 x=1 ;;

		3) addUMateDevPPA
			x=1	;;

		[mM])	clear 
				exit
				;;

			[qQ]) quitScript ;;

			* ) invalidSection ;;

			esac

	done



}
