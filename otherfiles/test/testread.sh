#!/bin/bash

# Test installs 
function installTest
{
	echo -e "sudo apt install ${program[*]}"
}

## Get list of apps from file 
function getListPrograms
{

	# $1 is the full filename of the list you want to use 

	progNum=0
	while read -r program[progNum]; do
		((progNum++))
	done < $1
}

## Do I have to declare these seperately? (note: I will not have "tons of" lists though ... )
myDefaultApps=$dir/data/defaultRepoApps.list
test1=$dir/data/testlist1.list



## Gets list of apps from file
## Pass what list you want to function  
getListPrograms $test1

## ?? Check if installed goes here? 

## Installs list of programs read by file 
installTest program[@]