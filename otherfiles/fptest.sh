function flatpakCheck() {
	programName=$1

	flatpakExists=$(flatpak list | awk -v a="$programName" '$1 ~ a {print $1}' )

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

	programName=$1

	snapExists=$(snap list | awk -v programName="$programName" '$1 ~ programName {print $1}')
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


function checkUpackageType() {

	echo -e "$programName"

	if [ $uFormatType == "snap" ]; then
		universalFormatExists=$($uFormatType list | awk -v programName="$programName" '$1 ~ programName {print $1}')
	elif [ $uFormatType == "flatpak" ]; then
		universalFormatExists=$($uFormatType list | awk -v programName="$programName" '$1 ~ programName {print $1}')
	fi
	# this var should display something IF the flatpak is installed

	echo -e "\n Debugging; universalFormatExists: $universalFormatExists"
}

function universalPackageInstallCheck() {
	# snap or flatpak
	uFormatType=$1
	programName=$2

	# echo -e "debugging: uFormatType: $uFormatType"
	# echo -e "debugging: programName: $programName"

	checkUpackageType

	# -z = "is zero?"
	# -n = "is non-zero?"
	# -v =
	if [ -n "$universalFormatExists" ]; then
		echo -e "$uFormatType $universalFormatExists is installed"
	else
		echo -e "$uFormatType $universalFormatExists is NOT installed"
	fi

	echo "#################################################"

}


universalPackageInstallCheck "flatpak" "Bitwarden"
universalPackageInstallCheck "flatpak" "foo"


# universalPackageInstallCheck "snap" "core18"
# universalPackageInstallCheck "snap" "foobar"
