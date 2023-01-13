# app_version-somethingelse.fileformat does seem to be the naming systems


# Set Variables
function setVars() {
    ############################################################################################
    # Vars

    exampleFile_all="curlTests/gitexamples_all.txt"

    # vars from os-release
    os_release_ubuntu_codename=$(awk -F= '/UBUNTU_CODENAME/ { print $2}' /etc/os-release )
    os_release_version_codename=$(awk -F= '/VERSION_CODENAME/ { print $2}' /etc/os-release )

    # uname vars
    uname_processor=$(uname -p)
    uname_machine=$(uname -m)
    uname_hardware_platform=$(uname -m)

    ############################################
    # DEBUGGING
    distroBase="ubuntu"
    UBUNTU_CODENAME="focal"
    ######################################################3

}
setVars

# Gets version info
# if i remove the first part commented out, this doesn't REALLY need to be its own function
function getVersionInfo() {

    # ?? why is this command substitution not working ? it looks like it should work
    #version=${possibleDownloadLinks##download/}

    # sed to remove non-numeric characters on some results
    version=$(echo -e  ${possibleDownloadLinks} | awk -F/ ' { print $8}' | sed 's/[[:alpha:]]//g' )

}

# (If needed) further sorting of the possible links
function gitDownloadSort() {

	case $distroBase in
		debian) finalDownloadLink=$(echo -e ${possibleDownloadLinks} | tr " " "\n" | grep "${debianBranch}" ) ;;
		fedora) finalDownloadLink=$(echo -e ${possibleDownloadLinks} | tr " " "\n" | grep "f${fedoraBranch}"  ) ;;
		opensuse) finalDownloadLink=$(echo -e ${possibleDownloadLinks} | tr " " "\n" | grep "${leapBranch}" )  ;;
        ubuntu) finalDownloadLink=$(echo -e ${possibleDownloadLinks} | tr " " "\n" | grep ${UBUNTU_CODENAME} ) ;;
	esac

}


function displayDownloadLink() {
    echo -e "programName:\t\t${programName}"
    echo -e "fileFormat:\t\t${fileFormat}"

    # debugging
	echo -e "final download link:\t${finalDownloadLink}"

    echo -e "baseName:\t\t${gitDownloadFileName}"
    echo -e "version:\t\t${version}\v"
}

function gitDownloadLink() {

    #depending on repo, list of possible download links OR the download link
    possibleDownloadLinks=$(grep -E "${fileFormat}$" ${exampleFile_all} | grep -E "${nameFormat}" )

    # the var used to determine if there are likely multiple links listed
    possibleLinkLength=$(echo -e "${possibleDownloadLinks}" | awk '{ print NR}' )

    # if more than one link (likely) detected, pass to sort function
        # remove this echo later
    [[ "${possibleLinkLength}" > 1 ]] && gitDownloadSort || finalDownloadLink=${possibleDownloadLinks} || echo -e "link likely is: \n${finalDownloadLink}"

    # get version number
    getVersionInfo "${possibleDownloadLinks}"

    # get base name of file
    gitDownloadFileName=$(basename ${finalDownloadLink})

    displayDownloadLink
}

########################################################################################
# Tests
# the file var is only for local tests

clear

function atomDEBTest() {
    programName="atom"
    repoName="atom/atom"
    fileFormat="deb"
    nameFormat="${programName}-"

    gitDownloadLink
}
atomDEBTest

function debgetTest() {
    programName="deb-get"
    repoName="wimpysworld/deb-get"
    fileFormat="deb"
    nameFormat="${programName}_"

    gitDownloadLink
}
debgetTest

function strawberryTest() {
    programName="strawberry"
    repoName="strawberrymusicplayer/strawberry"
    fileFormat=".deb"

    # forseen problem if i use "version" here : version is not known at this point
    nameFormat="${programName}_"

    gitDownloadLink
}
strawberryTest

function atomRPMtest() {
    programName="atom"
    repoName="atom/atom"
    fileFormat="rpm"
    nameFormat="${programName}.*"

    gitDownloadLink
}
atomRPMtest
