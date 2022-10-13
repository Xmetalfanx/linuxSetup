clear 
echo -e "NEW TRY "


# Set Variables 
function setVars() {
    ############################################################################################
    # Vars 

    #sourceFile="curlTests/gitexample.txt"
    sourceFile="curlTests/gitexample2.txt"

    # vars from os-release
    os_release_ubuntu_codename=$(cat /etc/os-release | awk '/UBUNTU_CODENAME/ { print }' )
    os_release_version_codename=$(cat /etc/os-release | awk '/VERSION_CODENAME/ { print }' )

    # uname vars 
    uname_processor=$(uname -p)
    uname_machine=$(uname -m)
    uname_hardware_platform=$(uname -m)


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

}
setVars 


# this seems like overkill for my scripts elsewhere 
function ubuntuCodenameCheck() {
    # HOLD ON i dont want to check if the user is on a supported version, I WANT TO CHECK if $downloadPossibilities CONTAINS 
    # os_release_ubuntu_codename (example here anyway)

    echo -e "os_release_ubuntu_codename:\t${os_release_ubuntu_codename}"

    echo -e "${downloadPossibilities}"
    exit

    ## I HAVEN'T A CLUE if this syntax is correct 
        ## seeing output, this seems like it cant be correct 
    if [[ ${downloadPossibilities} =~ .*"${os_release_ubuntu_codename}"*. ]]; then
           echo -e "debugging: supported Ubuntu codename found in possible links"
        
    else
            echo -e "supported codename not found in possible links"

    fi
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

    # possible download links 
    downloadPossibilities=$(cat $sourceFile | awk '$0 !~ /debug|dbg/ { print }' )

    echo -e "Possible Download Links:\n\v${downloadPossibilities}"

    # debugging 
    # exit

    codenameChecks

}

intialCodeThatWorks


function testExceptArray() {
    # for each in "${exceptionArray[@]}"; do
    #     echo -e "${each}"
    # done

    #for exception in "${exceptionArray[@]}"; do
        #echo -e "\v\v${exception}"

        #exceptionMatch=$(cat $sourceFile | grep -E "${exceptionArray}")
        exceptionMatch=$(cat ${sourceFile} | awk -v format=${fileFormat} '/format$/ { print }' )

        # it's looping through for each element in the array ... this cant be right 
        echo -e "${exceptionMatch}\v"
    #done


}

#cat $sampleFile | awk -v exceptions=$exceptionArray '$0 !~ exceptions { print }'


############################################################
#possibleDownloadLinks=$(cat ${sourceFile} | awk ' { print }' )
#echo -e "${possibleDownloadLinks}"
############################################################
