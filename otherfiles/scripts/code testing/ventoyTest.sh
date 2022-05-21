#!/bin/bash

function getVentoyInfo() {
	downloadPath="/home/$USER/Downloads"
	githubBaseURL="https://github.com"
	ventoyDownloadURL="https://github.com/ventoy/Ventoy/releases"




	ventoyISOURL=$(curl -s "$ventoyDownloadURL" | awk -F '"' '/download/ && /livecd.iso/ {print $2;exit }'  )
	totalISOURL=$githubBaseURL$ventoyISOURL

	ventoyTARURL=$(curl -s "$ventoyDownloadURL" | awk -F '"' '/download/ && /.tar.gz/ {print $2;exit }'  )
	totalTARURL=$githubBaseURL$ventoyTARURL


	clear 
	echo -e "totalISOURL:\t$totalISOURL"	
	#echo -e "$totalTARURL"
}


function downloadVentoy() {

	#echo -e "Download Tar Test"
	#wget $totalTARURL -P "$downloadPath"

	echo -e "\n\n Download ISO Test"
	wget $totalISOURL -P "$downloadPath"


	echo "Downloads should be done"
}

getVentoyInfo
downloadVentoy