#!/bin/bash

PROMPT=$(read -r -p "press any key to continue")

APPLISTFILE=$(pwd)/apps.list

# Install app from list passed in as an arguement
function installAppList()
{
    ## This first test should install one at a time i think ... this is only a test 

    while read -r currentApp;
    do
        # Is this needed? 
        #declare -a totalApps
        totalApps+=($currentApp)
    done < $APPLISTFILE

   echo -e "Installing ${totalApps[*]}"
   sudo pacman -S ${totalApps[*]}
}

installAppList $APPLISTFILE