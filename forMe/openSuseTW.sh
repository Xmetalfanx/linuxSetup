#!/bin/bash

localInstall= $zypperInstall

. common.conf

#################################################
# Functions 

function installVSCode 
{

    #  Install vscode via RPM 
    echo "Installing vscode via RPM "

    sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

    sudo zypper refresh
    $localInstall code 
    echo "vscode Installed"
    prompB4proceeding

}

function pacmanRepo
{
    # 2 - Add Pacman Repo 
    echo "Adding Pacman Repo"
    $addRepo http://download.opensuse.org/repositories/X11:/Cinnamon:/Current/openSUSE_Tumbleweed/
    echo "Some multimedia related notes say to 1. Add Pacman and then switch to that (priority) repo "
    prompB4proceeding
    ####################

}


## Software I use 
function installCommonSoftware
{
    # Install software 
    $zypperInstall $software

    installVSCode

}

function dupZypper
{
    clear
    # 1 - Upgrade
    echo "Starting Tumbleweed Distrobution upgrade"
    sudo zypper dup
    echo "Tumbleweed Upgrde Done"
    prompB4proceeding
}


# End Functions 
################################################
################################################

################################################
### START 

# 1 - Dist Upgrade 
dupZypper

# 2 - Add Pacman Repo 
pacmanRepo

# 3 - Install Software 
installCommonSoftware
