# app_version-somethingelse.fileformat does seem to be the naming systems


# Set Variables
function setVars() {
    ############################################################################################
    # Vars

    #sourceFile="curlTests/gitexample.txt"
    sourceFile="curlTests/gitexample2.txt"

    # vars from os-release
    os_release_ubuntu_codename=$(cat /etc/os-release | awk -F\= '/UBUNTU_CODENAME/ { print $2}' )
    os_release_version_codename=$(cat /etc/os-release | awk -F\= '/VERSION_CODENAME/ { print $2}' )

    # uname vars
    uname_processor=$(uname -p)
    uname_machine=$(uname -m)
    uname_hardware_platform=$(uname -m)

    # for a possible idea to do supported distro/versions in an array... i think
    supportedUbuntu=(
        'bionic'    # 18.04
        'focal'     # 20.04
        'jammy'     # 22.04
    )

    # exception list: i am not a fan of this ... the idea should be include "first" in awk, not exclude first
    exceptionArray=(
        "debug"
        "dbg"
    )

    # for testing
    codename="jammy"

}
setVars


function gitDownloadLink() {
    clear

    githubAPILink="https://api.github.com/repos/${repoName}/releases/latest"

    # getLink=$(curl -s -L ${githubAPILink} | awk '/deb",$/ { print $2}' | sed 's/\"//g' )
    #echo -e "${getLink}"


    #version=$(curl -s $githubAPILink | awk '$0 ~ "tag_name" { print $2}' | sed 's/\"//g;s/,//')
    #echo -e "${version}"

    # "browser_download_url"
    versionURL="https://github.com/${repoName}/releases/download/${version}/"
    # echo -e "${versionURL}"
    # sleep 3

    #fileNameFormat="${programName}_${version}*.${fileFormat}"

    #possibleDownload=$(curl -s $githubAPILink | awk -v format="${fileFormat}" -v codeName=${codename} '/browser_download_url/ && $2 ~ format && $2 !~ /(debug|dbg)/ { print $2 }' | cut -d\" -f2)
    
    
    #possibleDownloadLinks=$(curl -s $githubAPILink | awk -v format=$fileFormat '/browser_download_url/ && $2 ~ format { print $2} ' | tr -d \" )
    
    possibleDownloadLinks=$(curl -s gitexample.txt | awk '/browser_download_url/ { print $2} ' | grep -E "${programName}*${fileFormat}" | tr -d \" )
    
    echo -e "${possibleDownloadLinks}"
   
}


########################################################################################
# Tests 
function atomTest() {
    programName="atom"
    repoName="atom/atom"
    fileformat="deb"
    gitDownloadLink "${repoName}"
}
atomTest

function debgetTest(){
    programName="deb-get"
    repoName="wimpysworld/deb-get"
    fileFormat="deb"
    gitDownloadLink "${repoName}"
}


# function strawberryTest() {
#     programName="strawberry"
#     repoName="strawberrymusicplayer/strawberry"
#     fileFormat="deb"
#     gitDownloadLink "${repoName}"
# }
# strawberryTest