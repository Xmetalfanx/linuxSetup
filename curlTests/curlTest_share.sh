# app_version-somethingelse.fileFormat does seem to be the naming systems


# Set Variables
function setVars() {

    # vars from os-release
    os_release_ubuntu_codename=$(cat /etc/os-release | awk -F\= '/UBUNTU_CODENAME/ { print $2}' )
    os_release_version_codename=$(cat /etc/os-release | awk -F\= '/VERSION_CODENAME/ { print $2}' )

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


function gitDownloadLink() {

	# for Debugging
	#echo -e "\v${programName}"

    githubAPILink="https://api.github.com/repos/${repoName}/releases/latest"

	# To get Version number
    #version=$(curl -s $githubAPILink | awk '$0 ~ "tag_name" { print $2}' | sed 's/\"//g;s/,//')
    #echo -e "${version}"

    # debugging 
    #echo -e "programName:\t$programName"
    #echo -e "fileFormat:\t $fileFormat"
    #echo -e "codeName:\t$codeName"
    #sleep 4

    #possibleDownloadLinks=$(curl -s $githubAPILink | grep "${fileFormat}\"$" | awk '{ print $2 }' | tr -d '"' )

    possibleDownloadLinks=$(curl -s $githubAPILink | awk -v format=$fileFormat '/browser_download_url/ && $2 ~ format { print $2}' | tr -d '"' )

    #echo -e "$possibleDownloadLinks\v"
    ######################################################################################

}


########################################################################################
# Tests
function atomTest() {
    programName="atom"
    repoName="atom/atom"

    gitDownloadLink "${repoName}"
}
atomTest

# results
# https://github.com/atom/atom/releases/download/v1.60.0/atom-amd64.deb


function debgetTest(){
    programName="deb-get"
    repoName="wimpysworld/deb-get"
    gitDownloadLink "${repoName}"
}
debgetTest

#results
# https://github.com/wimpysworld/deb-get/releases/download/0.3.6/deb-get_0.3.6-1_all.deb


function strawberryTest() {
    programName="strawberry"
    repoName="strawberrymusicplayer/strawberry"

    gitDownloadLink "${repoName}"
}
strawberryTest

# "debug" is getting caught in the "deb" ($fileFormat) search 

# Results
# https://github.com/strawberrymusicplayer/strawberry/releases/download/1.0.10/strawberry-dbgsym_1.0.10-bionic_amd64.ddeb
# https://github.com/strawberrymusicplayer/strawberry/releases/download/1.0.10/strawberry-dbgsym_1.0.10-bookworm_amd64.deb
# https://github.com/strawberrymusicplayer/strawberry/releases/download/1.0.10/strawberry-dbgsym_1.0.10-bullseye_amd64.deb
# https://github.com/strawberrymusicplayer/strawberry/releases/download/1.0.10/strawberry-dbgsym_1.0.10-buster_amd64.deb
# https://github.com/strawberrymusicplayer/strawberry/releases/download/1.0.10/strawberry-dbgsym_1.0.10-focal_amd64.ddeb
# https://github.com/strawberrymusicplayer/strawberry/releases/download/1.0.10/strawberry-dbgsym_1.0.10-jammy_amd64.ddeb
# https://github.com/strawberrymusicplayer/strawberry/releases/download/1.0.10/strawberry-dbgsym_1.0.10-kinetic_amd64.ddeb
# https://github.com/strawberrymusicplayer/strawberry/releases/download/1.0.10/strawberry-debuginfo-1.0.10-1-omv4003.x86_64.rpm
# https://github.com/strawberrymusicplayer/strawberry/releases/download/1.0.10/strawberry-debuginfo-1.0.10-1.fc35.x86_64.rpm
# https://github.com/strawberrymusicplayer/strawberry/releases/download/1.0.10/strawberry-debuginfo-1.0.10-1.fc36.x86_64.rpm
# https://github.com/strawberrymusicplayer/strawberry/releases/download/1.0.10/strawberry-debuginfo-1.0.10-1.lp153.x86_64.rpm
# https://github.com/strawberrymusicplayer/strawberry/releases/download/1.0.10/strawberry-debuginfo-1.0.10-1.lp154.x86_64.rpm
# https://github.com/strawberrymusicplayer/strawberry/releases/download/1.0.10/strawberry-debuginfo-1.0.10-1.mga8.x86_64.rpm
# https://github.com/strawberrymusicplayer/strawberry/releases/download/1.0.10/strawberry-debugsource-1.0.10-1-omv4003.x86_64.rpm
# https://github.com/strawberrymusicplayer/strawberry/releases/download/1.0.10/strawberry-debugsource-1.0.10-1.fc35.x86_64.rpm
# https://github.com/strawberrymusicplayer/strawberry/releases/download/1.0.10/strawberry-debugsource-1.0.10-1.fc36.x86_64.rpm
# https://github.com/strawberrymusicplayer/strawberry/releases/download/1.0.10/strawberry-debugsource-1.0.10-1.lp153.x86_64.rpm
# https://github.com/strawberrymusicplayer/strawberry/releases/download/1.0.10/strawberry-debugsource-1.0.10-1.lp154.x86_64.rpm
# https://github.com/strawberrymusicplayer/strawberry/releases/download/1.0.10/strawberry-debugsource-1.0.10-1.mga8.x86_64.rpm
# https://github.com/strawberrymusicplayer/strawberry/releases/download/1.0.10/strawberry_1.0.10-bionic_amd64.deb
# https://github.com/strawberrymusicplayer/strawberry/releases/download/1.0.10/strawberry_1.0.10-bookworm_amd64.deb
# https://github.com/strawberrymusicplayer/strawberry/releases/download/1.0.10/strawberry_1.0.10-bullseye_amd64.deb
# https://github.com/strawberrymusicplayer/strawberry/releases/download/1.0.10/strawberry_1.0.10-buster_amd64.deb
# https://github.com/strawberrymusicplayer/strawberry/releases/download/1.0.10/strawberry_1.0.10-focal_amd64.deb
# https://github.com/strawberrymusicplayer/strawberry/releases/download/1.0.10/strawberry_1.0.10-jammy_amd64.deb
# https://github.com/strawberrymusicplayer/strawberry/releases/download/1.0.10/strawberry_1.0.10-kinetic_amd64.deb