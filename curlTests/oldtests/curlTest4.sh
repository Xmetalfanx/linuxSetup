# Set Variables
function setVars() {
    ############################################################################################
    # Vars

    #sourceFile="curlTests/gitexample.txt"
    sourceFile="curlTests/gitexample2.txt"

    # vars from os-release
    os_release_ubuntu_codename=$(awk -F= '/UBUNTU_CODENAME/ { print $2}' /etc/os-release)
    os_release_version_codename=$(awk -F= '/VERSION_CODENAME/ { print $2}'  /etc/os-release)

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

    fileFormat="deb"
    distroBase="ubuntu"

}
setVars


function gitDownloadLink() {
    # idea: $1 = repoName and it gets passed

    repoName=${1}
    githubAPILink="https://api.github.com/repos/${repoName}/releases/latest"

    getLink=$(curl -s -L ${githubAPILink} | awk '/deb",$/ { print $2}' | sed 's/\"//g' )

    echo -e "${getLink}"
}

# gitDownloadLink "atom/atom"
# sleep 2
# gitDownloadLink "wimpysworld/deb-get"
gitDownloadLink "strawberrymusicplayer/strawberry"