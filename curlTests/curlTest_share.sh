clear

# changes based on what distro i am booted into
distroBase="ubuntu"

# app_version-somethingelse.fileFormat does seem to be the naming systems

function userPrompt() {
  read -r -p "Press [Enter] to continue "
}

# Set Variables
function setVars() {

    # vars from os-release
    os_release_ubuntu_codename=$(awk -F= '/UBUNTU_CODENAME/ { print $2}'/etc/os-release )
    os_release_version_codename=$(awk -F= '/VERSION_CODENAME/ { print $2}' /etc/os-release)

    # for a possible idea to do supported distro/versions in an array... i think
    supportedUbuntu=(
        'bionic'    # 18.04
        'focal'     # 20.04
        'jammy'     # 22.04
    )

    # for testing on non-Ubuntu bases
    codeName="jammy"

    fileFormat="deb"

}
setVars

# idea: function to sort out specific names
# here we know the list of possible links is more than one
function gitDownloadSort() {

	# I need to refactor this down i think ... like putting the tr and grep statements into a "sort" var or something

    # I should change to say debianVersion or Fedora/leapBranch ... whatever.. stay consistant i mean
    case $distroBase in

		debian) branchFilter=${debianBranch} ;;
		fedora) branchFilter=${fedoraBranch} ;;
		opensuse) branchFilter=${leapBranch} ;;
		# changed since that code is not in my test scripts
        ubuntu) branchFilter="jammy" ;;

	esac

    # if possibl... contains branchfilter
    [[ "${possibleDownloadLinks}" == *"${branchFilter}"* ]] && echo "branchfilter detected" && programURL=$(echo -e  "${possibleDownloadLinks}" | grep -E "${branchFilter}" )

	#echo -e "\vprogramURL:\t${programURL}"

}

function getVersionNumber() {

    github_API_URL="https://api.github.com/repos/${repoName}/releases/latest"

    version=$(curl -s "${github_API_URL}" | awk -F \" '/tag_name/ { print $4}' )

    echo -e "version:\t${version}"
}

function calcNumOfLinks() {
    possibleLinkLength=$(echo -e "${possibleDownloadLinks}" | awk 'END { print NR }' )

    ####################################
    # Debugging
    #echo -e "possibleLinkLength: ${possibleLinkLength}"
    #userPrompt
    #########################################

    # if the list of possible links is more than one, pass to the sorting function
	[[ "${possibleLinkLength}" == 1 ]] && programURL=${possibleDownloadLinks} || gitDownloadSort

}

function displayFinalLink() {
    echo -e "\vprogramURL:\t${programURL}"
    echo -e "###################################################################"
	userPrompt
    clear
}


function gitDownloadLink() {
    echo -e "programName:\t${programName}"

	possibleDownloadLinks=$(curl -s "${github_API_URL}" | awk '/browser_download_url/  { print $2 }' | tr -d \"  | grep -E "${fileFormat}"$ | grep -E "${nameFormat}" )

	####################################
    # Debugging
	echo -e "\vpossibleDownloadLinks:\n${possibleDownloadLinks}"
    userPrompt
    ###########################################

    # error - if zero is the string length
    [ -z "${possibleDownloadLinks}"  ] && echo -e "error getting links for ${programName}" && return

	calcNumOfLinks

	displayFinalLink
}


########################################################################################
# Tests
function atomTest() {
    programName="atom"
    repoName="atom/atom"
    fileFormat="rpm"

    getVersionNumber

    nameFormat="${programName}"

    gitDownloadLink "${repoName}"
}
atomTest

function debgetTest(){
    programName="deb-get"
    repoName="wimpysworld/deb-get"
    fileFormat="deb"

    getVersionNumber

    nameFormat="${programName}_${version}"

    gitDownloadLink "${repoName}"


}
debgetTest

function strawberryTest() {
    programName="strawberry"
    repoName="strawberrymusicplayer/strawberry"
    fileFormat="deb"

    getVersionNumber

    nameFormat="${programName}_${version}"

    gitDownloadLink ${repoName} ${fileFormat}
}
strawberryTest


function czkawkaTest () {
    programName="czkawka"
    repoName="qarmin/czkawka"
    fileFormat="AppImage"

    getVersionNumber

    nameFormat="linux_${programName}_gui.${fileFormat}"

    gitDownloadLink ${repoName}
}

czkawkaTest


