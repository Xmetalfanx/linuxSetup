#!/bin/bash


#################################################
## Variables 
prompt="read -p 'Press [Enter] to continue' "
rpmInstall="sudo rpm -i"
dnfInstall="sudo dnf install"
vscodeURL="https://go.microsoft.com/fwlink/?LinkID=760867"
software="filezilla picard easytag deluge hexchat firefox deadbeef mpv smplayer"

#################################################


#################################################
# Functions 

function prompB4proceeding
{
    $prompt
    
    # Clears Screen before next task 
    clear
}

function distUpgrade 
{
    sudo dnf upgrade -y 
    echo "Fedora Upgrade Complete"
    prompB4proceeding

}

function addRPMFusion
{
    echo "Adding BOTH RPMFusion Free and Non-Free Repos"

    echo -e "Setting up RPM Fusion repos"
    $dnfInstall https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

    echo "RPM Fusion Repos Added"
}

function massFedyTasks
{
    # Add RPM Fusion Repos


    # Setup Codecs/Multimedia 
        echo -e "Preparing Codecs"
        sudo dnf -y groupinstall multimedia

        # why this too? ... eh well ... leave it for now 
        $dnfInstall gstreamer1-libav
        echo -e "Codecs are now installed"

    #######################################################

    # Archive Support
        echo "Installing Archive Support"
        $dnfInstall cabextract lzip p7zip p7zip-plugins unrar

    ########################################################

    # Better Font Rendering 
        echo "Improve Font Rendoring"
        installApp fedy-font-config

        gsettings set org.gnome.settings-daemon.plugins.xsettings antialiasing "rgba"
        gsettings set org.gnome.settings-daemon.plugins.xsettings hinting "slight"

        echo "Font Rendering Tweaks Done"

}

function installTheming
{

    ########################################################

    # 7 - Theme Engines 
    $dnfInstall gtk-murrine-engine gtk-unico-engine
    ########################################################

    mintTheming="mint-themes mint-y-icons mint-x-icons"
    numixTheming="numix-gtk-theme numix-icon-theme numix-icon-theme-circle"


    # 8 - Theme Installs 
    $dnfInstall adapta-gtk-theme $numixTheming arc-theme bluebird-gtk3-theme clearlooks-phenix-gtk3-theme greybird-gtk3-theme bluebird-gtk2-theme greybird-gtk2-theme adwaita-gtk2-theme clearlooks-phenix-gtk2-theme $mintTheming
    ########################################################

}


function installVSCodeRPM
{

# 3 - Install vscode via RPM 
    echo "Installing vscode via RPM "
    wget -o vscode.rpm $vscodeURL
    $rpmInstall vscode.rpm

    echo "vscode Installed"
    prompB4proceeding

}

## Software I use 
function installCommonSoftware
{
    # Install software 
    sudo dnf install $software

    installVSCodeRPM

}
# End Functions 
################################################


# 1 - Make updates faster 
echo "fastestmirror=true" >> /etc/dnf/dnf.conf
########################################################

# 2 - Upgrade system
distUpgrade

# 3 - Fedy Tasks 
massFedyTasks

# 4 - Install Software 
installCommonSoftware

# 5 - Install Theming 