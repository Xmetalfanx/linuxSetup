# programFileName="xnview.sh"
# fullProgramPath=$(find ~+ -type f -name "$programFileName" )
# programPathOnly=$( echo -e "$fullProgramPath" | sed 's/xnview.sh//g' )
# execPath=$(echo -e "$programPath$programFileName" )


# echo $execPath  >> foobar.txt
# echo -e "exec=$fullProgramPath" >> foobar.txt
############################################################

function initSetup()
{
	programName="xnview"
	execName="xnview.sh"
	downloadsDir="/home/$USER/Downloads/"
	url="https://download.xnview.com/XnViewMP-linux-x64.tgz"
	fileName=$(basename $url)
	extractionLocation="$downloadsDir/$programName"
	downloadedFile="$downloadsDir/$fileName"
	execLocation=$(find /home/$USER/Downloads -type f -name "$execName")
	menuFile="$programName.deskop"
}

function userPrompt() {
  read -r -p "Press [Enter] to continue "
}

function downloadFile() {

	clear 
	if [ ! -f "$downloadedFile" ]; then 
		echo =-e "Downloading $programName"
		wget $url -P $downloadsDir
	else 
		echo -e "$programName already downloaded"
	fi
	userPrompt	
}

function extractFile() {
	
	clear 
	
	if [ ! -d "$extractionLocation" ]; then 
		mkdir $extractionLocation 
	else 
		echo -e "$extractionLocation location already exists\n"
	fi 

	userPrompt

	cd $downloadsDir

	tar -xvf $downloadedFile -C $extractionLocation 
}

function determineRootFolder()
{
	clear
	programRootDir=$(dirname $execLocation)
	echo -e "$programName root directory is:\t $programRootDir"
	userPrompt 
}

function moveProgramRootDir()
{
	echo -e "Copying $programRootDir to Desktop"
	cp -r $programRootDir /home/$USER/Desktop
	userPrompt
}

function createExecLine()
{
	touch $menuFile

	echo -e "creating Menu info"
	echo -e "Exec=$execLocation" >> $menuFile
}

initSetup 
#downloadFile
#extractFile
determineRootFolder
moveProgramRootDir
createExecLine 
