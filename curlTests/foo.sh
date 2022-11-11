
function gitDownloadLink() {
    # works as it doesn't get the "deb" in the .RPM entry 
    # ${fileFormat}$ to match the file format at the end
    # ${nameFormat} to HOPEFULLY address issues with all the different naming schemes 
    
    download_link=$(cat curlTests/gitexample3.txt | grep "${fileFormat}"$ | grep "${nameFormat}" )
    
    echo -e "downloadLink:\n${download_link}"

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


function debgetTest(){
    programName="deb-get"
    repoName="wimpysworld/deb-get"
    fileFormat="deb"
    nameFormat="${programName}_"

    gitDownloadLink
}
#debgetTest

function strawberry() {
    programName="strawberry"
    fileFormat="deb"
    nameFormat="${programName}_"
}
#strawberry

# End test functions 
###########################################################