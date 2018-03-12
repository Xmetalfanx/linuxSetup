#!/bin/bash

. testfunctions.cfg 

########################################################


# Test installs 
function installTest
{
	echo -e "sudo apt install ${program[*]}"
}


## Get list of apps from file 
function getListPrograms
{
	file="defaultRepoApps.list"

	progNum=0
	while read -r program[progNum]; do
		((progNum++))
	done < $file 
}


getListPrograms

## Installs list of programs read by file 
installTest program[@]