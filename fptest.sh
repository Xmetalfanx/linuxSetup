function flatpakCheck() {
	progName=$1

	flatpakExists=$(flatpak list | awk -v a="$progName" '$1 ~ a {print $1}' )
	
	# -z = "is zero?"
	# -n = "is non-zero?"
	# -v = 
	if [ -n "$flatpakExists" ]; then
		echo -e "Flatpak $flatpakExists is installed"
	else 
		echo -e "Flatpak $flatpakExists is NOT installed"
	fi 
}


function snapCheck() {

	progName=$1

	snapExists=$(snap list | awk -v a="$progName" '$1 ~ a {print $1}')
	# this var should display something IF the flatpak is installed 

	# -z = "is zero?"
	# -n = "is non-zero?"
	# -v = 
	if [ -n "$snapExists" ]; then
		echo -e "Snap $snapExists is installed"
	else 
		echo -e "Snap $snapExists is NOT installed"
	fi 


	echo "#################################################"

}

flatpakCheck "Spotify"
flatpakCheck "foo"

snapCheck "deadbeef"
snapCheck "foo"
