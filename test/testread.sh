#!/bin/bash

. testfunctions.cfg 

########################################################


# Test installs 
function installTest
{
	echo -e "sudo apt install ${program[*]}"
}


## Get list of apps from file 
function getPrograms
{
	file="defaultRepoApps.list"

	progNum=0
	while read -r program[progNum]; do
		((progNum++))
	done < $file 
}


getPrograms

## Installs list of programs read by file 
installTest program[@]