#!/bin/bash

# 1 - Make updates faster 
echo "fastestmirror=true" >> /etc/dnf/dnf.conf
########################################################

# 2 - Upgrade system
sudo dnf upgrade -y 
echo "Fedora Upgrade Complete"
########################################################


# 3 - Add RPM Fusion Repos 
echo "Adding BOTH RPMFusion Free and Non-Free Repos"

echo -e "Setting up RPM Fusion repos"
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

echo "RPM Fusion Repos Added"
########################################################




# 4 - Setup Codecs/Multimedia 
echo -e "Preparing Codecs"
sudo dnf -y groupinstall multimedia

# why this too? ... eh well ... leave it for now 
sudo dnf install gstreamer1-libav
echo -e "Codecs are now installed"
########################################################



# 5 - Archive Support
echo "Installing Archive Support"
installApp cabextract lzip p7zip p7zip-plugins unrar

########################################################




# 6 - Better Font Rendering 
echo "Improve Font Rendoring"
installApp fedy-font-config

gsettings set org.gnome.settings-daemon.plugins.xsettings antialiasing "rgba"
gsettings set org.gnome.settings-daemon.plugins.xsettings hinting "slight"

echo "Font Rendering Tweaks Done"

########################################################

# 7 - Theme Engines 
sudo dnf install gtk-murrine-engine gtk-unico-engine
########################################################


# 8 - Theme Installs 
sudo dnf install adapta-gtk-theme numix-gtk-theme numix-icon-theme numix-icon-theme-circle arc-theme bluebird-gtk3-theme clearlooks-phenix-gtk3-theme greybird-gtk3-theme bluebird-gtk2-theme greybird-gtk2-theme adwaita-gtk2-theme clearlooks-phenix-gtk2-theme
########################################################


# 9 - Install Apps 
sudo dnf install filezilla picard easytag deluge hexchat firefox deadbeef mpv smplayer 
########################################################