#!/bin/bash

clear 
#########################################################

configFiles="*.cfg"
# will find multiple files of course 
#find -type f -name "$configFiles"

##########################################################################

# bad var name ... 
programRootDir="./"
#testName="linuxSetupScripts.sh"
testName="*.cfg"

mainScriptFile=$(find -type f -name "$testName")
echo -e "\n$mainScriptFile" | sed 's/^$programRootDir//g'

