#!/bin/bash

####################################################
# Variables 
addRepo="sudo zypper addrepo -f"

prompt="read -p 'Press [Enter] to continue' "
rpmInstall="sudo rpm -i"
software="filezilla picard easytag deluge hexchat firefox deadbeef mpv smplayer variety"
#################################################

#################################################
# Functions 

function prompB4proceeding
{
    $prompt
    
    # Clears Screen before next task 
    clear
}

function installVSCode 
{

    #  Install vscode via RPM 
    echo "Installing vscode via RPM "

    sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc

    sudo zypper refresh
    sudo zypper install code 
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
    sudo zypper install $software

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


#########################################################
########################################################

pacmanRepo
installCommonSoftware
