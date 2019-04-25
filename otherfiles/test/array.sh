#!/bin/bash

OSRELEASE_UBUNTU_CODENAME=$(cat /etc/os-release | grep "^UBUNTU_CODENAME=" | cut -d '=' -f 2 | sed 's/\"//g')
lsbOSRelease=$(lsb_release -sc)

function ppaBranchCheck(){
    # just do echos for now .... this is testing only, anyway 

    if [[ $supportedBases =~ $lsbOSRelease ]]; then
        echo -e "PPA works on the Ubuntu base you are on "
        PPASupported=yes

        echo -e "$lsbOSRelease found in $supportedBases"
    
    #checks to even see if user is on Ubuntu
    elif [[ -z $lsbOSRelease ]]; then
        echo -e "It appears you are not on ubuntu , or at least a currently supported version of Ubuntu"

        echo -e "$lsbOSRelease not found in $supportedBases"
    
    else 
        echo "PPA not made for the Ubuntu Base you are on"
        PPASupported=no

        echo -e "$OSRELEASE_UBUNTU_CODENAME not found in $supportedBases"
    fi 
}

# example 
function PPALatestLibreOffice()
{

    supportedBases="trusty xenial"
		
  	# ppaRepoAddition $PPAName $PPASource
	
    ppaBranchCheck $supportedBases

    # NOTE: in this test this if statement would be in another function ... the ppa functions like this should be as SLIM as possible 

    ## maybe have this in a ppa function that is the "meta add ppa function"
}

PPALatestLibreOffice


#################################
# Leave below this line for now 

function intialArrayTest 
{
    var1="one two three four five six"

    test="five"

    if [[ $var1 == *$test* ]]; then
        echo "$test found in array"
    else 
        echo "$test NOT found in array"
    fi 
 }

#intialArrayTest
###########################################