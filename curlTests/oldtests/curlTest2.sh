CPU_TYPE=$(lscpu | awk '/Architecture/ { print $2 }' )
UBUNTU_CODENAME=$(awk -F= '/UBUNTU_CODENAME/ {print $2}' /etc/os-release)

clear

# the meta function to get the URL
function gitDownload() {

   echo -e "Test ${programName} - ${fileFormat}"
   githubAPIURL="https://api.github.com/repos/${repo}/releases/latest"

   # awk gets "tag_name" line with the version number
   # sed removes the double quote on one side and the ", on the other
   # LATEST_VERSION=$(curl -s -g -L "${githubAPIURL}" | awk -F\: '/tag_name/ {print $2}' | sed 's/[",]//g' )
   # echo -e "${LATEST_VERSION}"

   # i added an s to this var but it MAY be one package listed

   gitPackages=$(curl -s -g -L "${githubAPIURL}" | awk -v format=${fileFormat} '/download_url/ && /format/ { print }' )


	echo -e "\v${gitPackages}"
   exit





   codenameCheck=$(echo -e "${gitPackages}" | awk -v codename=$UBUNTU_CODENAME '$2 ~ codename && $2 !~ "dbgsym" { print $2}' )


   if [ -n "${codenameCheck}" ]; then
      downloadPath=${codenameCheck}
   else
      downloadPath=$(echo -e "${gitPackages}" | awk '{print $2}' )
   fi

   echo -e "${downloadPath}\v"

}


################################################################################
# sample software functions

function strawberry() {
   programName="strawberry"
   repo="strawberrymusicplayer/strawberry"
   fileFormat="deb"

   # probably not correct now
   gitDownload "gitexample2.txt"
}

function debget() {
   programName="deb-get"
   repo="wimpysworld/deb-get"
   fileFormat="deb"

   gitDownload "gitexample.txt"
}

function atomDEB() {
   programName="atom"
   repo="atom/atom"
   fileFormat="deb"

   gitDownload
}

function atomRPM() {
   programName="atom"
   repo="atom/atom"
   fileFormat="rpm"

   gitDownload
}

function ublock() {
   programName="ublock"
   repo="gorhill/uBlock"
   fileFormat="xpi"

   gitDownload
}

function smartTubeNext() {
   programName="smartTubeNext"
   repo="yuliskov/SmartTubeNext"
   fileFormat="apk"

   gitDownload
}

# End Sample software functions
################################################################################

################################################################################
# calling the software functions

# debget
strawberry
# atomDEB
# atomRPM
# ublock
# smartTubeNext