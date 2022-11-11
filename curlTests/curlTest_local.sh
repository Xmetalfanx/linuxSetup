# app_version-somethingelse.fileformat does seem to be the naming systems


# Set Variables
function setVars() {
    ############################################################################################
    # Vars

    exampleFile1="curlTests/gitexample.txt"
    exampleFile2="curlTests/gitexample2.txt"
    exampleFile3="curlTests/gitexample3.txt"

    # vars from os-release
    os_release_ubuntu_codename=$(cat /etc/os-release | awk -F\= '/UBUNTU_CODENAME/ { print $2}' )
    os_release_version_codename=$(cat /etc/os-release | awk -F\= '/VERSION_CODENAME/ { print $2}' )

    # uname vars
    uname_processor=$(uname -p)
    uname_machine=$(uname -m)
    uname_hardware_platform=$(uname -m)

    # for testing when i am not on an Ubuntu base 
    #codename="jammy"

}
setVars

# the idea is if there is more than one line than other checks are needed and it cant be the file download link
# i need to maybe do a search and look for the NUMBER OF matches .. if > 1, then .... its not the download link (say more than one "https")
function lineTestIdea() {

    # what if it's not a newline in the output but a carrage return? 
    # carrage return is \r ... i think 
    if [[ ${possibleDownloadLinks} == *"\r"* ]]; then
        echo "newline found"
    else 
        echo "no newline found"
    fi 

}

function getVersionInfo() {
    # ?? why is this sed not working
    #version=$(echo -e ${possibleDownloadLinks} | sed 's/${gitURLStart}//g' )

    # ?? why is this command substitution not working ? it looks like it should work
    #version=${possibleDownloadLinks##download/}

    echo -e "possible Links:\t ${possibleDownloadLinks}"
    version=$(echo -e  ${possibleDownloadLinks} | awk -F\/ ' { print $8}' )

    echo -e "\vversion: ${version}"

}

function gitDownloadLink() {
    clear
    
    # idea for this next var is to be able to use it to slim down where i am getting
    # the version number, better
    gitURLStart="https://github.com/${repoName}/releases/download/"

    #depending on repo, list of possible download links OR the download link
    # idea: can i check to see if this var (?? has a newline ... aka multiple lines .. IF NOT then this IS the download link)
    
    #echo -e "${nameFormat}"
    possibleDownloadLinks=$(cat ${exampleFile3} | grep -E "${fileFormat}"$ )

    #lineTestIdea

    name=$(echo -e ${possibleDownloadLinks} | awk -F\/ ' { print $9}' )
    echo -e "name:\n$name\n\v"
    exit


    getVersionInfo "${possibleDownloadLinks}"

}



########################################################################################
# Tests 
function atomTest() {
    programName="atom"
    repoName="atom/atom"
    fileformat="deb"
    nameFormat="${programName}-"
    
    gitDownloadLink
}
atomTest

function debgetTest() {
    programName="deb-get"
    repoName="wimpysworld/deb-get"
    fileFormat="deb"
    nameFormat="${programName}_"

    gitDownloadLink
}
#debgetTest

function strawberryTest() {
    programName="strawberry"
    repoName="strawberrymusicplayer/strawberry"
    fileFormat="deb"

    # forseen problem: version is not known at this point
    nameFormat="${programName}_"

    gitDownloadLink
}
#strawberryTest