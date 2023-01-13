clear
echo -e "NEW TRY "


# Set Variables
function setVars() {
    ############################################################################################
    # Vars

    #sourceFile="curlTests/gitexample.txt"
    sourceFile="curlTests/gitexample2.txt"

    # vars from os-release
    os_release_ubuntu_codename=$(awk -F= '/UBUNTU_CODENAME/ { print $2}' /etc/os-release )
    os_release_version_codename=$(awk -F= '/VERSION_CODENAME/ { print $2}' /etc/os-release )

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


# this seems like overkill for my scripts elsewhere
function ubuntuCodenameCheck() {
    # HOLD ON i dont want to check if the user is on a supported version, I WANT TO CHECK if $downloadPossibilities CONTAINS
    # os_release_ubuntu_codename (example here anyway)

    echo -e "os_release_ubuntu_codename:\t${os_release_ubuntu_codename}"
    echo -e "${downloadPossibilities}\n"


    ## I HAVEN'T A CLUE if this syntax is correct
        ## seeing output, this seems like it cant be correct
    if [[ ${downloadPossibilities} == *"${os_release_ubuntu_codename}"* ]]; then
            echo -e "debugging: supported Ubuntu codename found in possible links"
    else
            echo -e "debugging: supported codename not found in possible links"
    fi

    echo -e "debugging: exiting UbuntuCodename function"
}

function codenameChecks() {
    echo -e "$fileFormat"

    # if "all" is detected in the filename
    if [[ ${downloadPossibilities} == *"all"* ]]; then
        echo "debugging: all detected in downloadPossibilities"
    else
        echo "debugging: all not detected"
        echo -e "Debugging fileFormat info below"

        # fileFormat check
        if [[ ${fileFormat} == "deb" ]]; then
            #echo -e "fileformat: deb"
            # ubuntu Codename Check
            ubuntuCodenameCheck

        elif [[ ${fileFormat} == "rpm" ]]; then
            echo -e "fileformat: rpm"

        else
           echo -e "fileFormat not detected"
        fi
    fi
}

function intialCodeThatWorks() {

    # works
    ######## cat $sampleFile | awk '$0 !~ /debug|dbg/ { print }'
    return

}

function testCode() {

   # possible download links
    downloadPossibilities=$(cat $sourceFile | awk -v codename=${os_release_ubuntu_codename} '$0 ~ codename && $0 !~ /debug|dbg/ { print }' )

    echo -e "\v\vPossible Download Links:\n\v${downloadPossibilities}"

    codenameChecks

}

function testCode2() {

    # a for-in loop maybe wrong here
    if [ "${supportedUbuntu[@]}" == *"${os_release_ubuntu_codename}"* ]; then
        # possible download links
        downloadPossibilities=$(cat $sourceFile | awk -v codename=${os_release_ubuntu_codename} '$0 ~ codename && $0 !~ /debug|dbg/ { print }' )

        echo -e "\v\vPossible Download Links:\n\v${downloadPossibilities}"
    fi ;

    codenameChecks

}
#testCode2



function testExceptArray() {
    exceptions=(
        'debug',
        "dbgsyn"
    )

    # this (below), works
    #match=$(cat ${sourceFile} | awk -v format="$fileFormat" '$0 ~ format && $0 !~ "debug|dbgs" { print }' )

    echo -e "${os_release_ubuntu_codename}"
    sleep 1

    match=$(cat ${sourceFile} | awk -v format=$fileFormat '{if ( $1 ~ /format/ ) print $1 }' )


    # it's looping through for each element in the array ... this cant be right
    echo -e "${match}"
}

testExceptArray

###################################################################################

#cat $sampleFile | awk -v exceptions=$exceptionArray '$0 !~ exceptions { print }'

############################################################
#possibleDownloadLinks=$(awk ' { print }' ${sourceFile})
#echo -e "${possibleDownloadLinks}"
############################################################
