#Title : Manjaro Theme and Icon Installer
#Description : This script installs the MANY of the common themes/icons/cursors found (or use to be found) in Manjaro
#Author : Xmetalfanx / Xmetal
#Date 	: 2016-09-06
#Version: v0.5
#Usage 	: bash manjarofy.sh


echo "Installing the Vertex Maia theme "
    git clone https://github.com/manjaro/artwork-vertex-maia.git
    cd artwork-vertex-maia
    mv Vertex-Maia* ~/.themes
    cd ..
    rm -rf artwork-vertex-maia
<<<<<<< HEAD
=======
    clear
<<<<<<< HEAD
>>>>>>> a629009... fixing last few issues in manjaro-fy script
=======
>>>>>>> f8379d8... testing final fixes for manjarofy script

<<<<<<< HEAD
# This has an issue ... Maia-Cursor apparently isn't a directory
echo "Installing the Maia Cursor Theme"
git clone https://github.com/manjaro/maia-cursor.git
cd Maia-Cursor
mv Maia-Cursor ~/.icons
cd ..
rm -rf Maia-Cursor
clear

## Issue same destination as "Vertex Maia theme, 2 above
echo "Installing The vertex Theme"
git clone https://github.com/manjaro/vertex-manjaro.git
cd vertex-manjaro
mv Vertex-Maia* ~/.thenes
cd ..
rm -rf vertex-manjaro
read -p "Pause for Debugging"


echo "Installing the Maia GTK Theme"
git clone https://github.com/manjaro/artwork-maia-gtk.git
cd artwork-maia-gtk
mv Maia-gtk/ ~/.themes
cd ..
rm -rf cd artwork-maia-gtk
read -p "Pause for Debugging"


=======
>>>>>>> 3e2d2dc... removed github theme option, changed a few menus
## Manjaro Icon themes
echo "Manjaro's Vertex Maia Icon Theme "
<<<<<<< HEAD
git clone https://github.com/manjaro/vertex-maia-icon-themes.git
cd vertex-maia-icon-themes
mv Vertex-Maia/ ~/.icons
cd ..
rm -rf vertex-maia-icon-themes
read -p "Pause for Debugging"

=======
    git clone https://github.com/manjaro/vertex-maia-icon-themes.git
    cd vertex-maia-icon-themes
    mv Vertex-Maia/ ~/.icons
    cd ..
    rm -rf vertex-maia-icon-themes
>>>>>>> f8379d8... testing final fixes for manjarofy script


echo "Installing Group of Manjaro Themes "
    git clone https://github.com/manjaro/artwork-numix-manjaro-themes.git
    cd artwork-numix-manjaro-themes/
    mv Numix-Manjaro* ~/.themes
    cd ..
    rm -rf artwork-numix-manjaro-themes

<<<<<<< HEAD
# Issues - can not move
echo "Installing Components of Manjaro's Numix Reborn Theme"
git clone https://github.com/manjaro/artwork-numix-reborn-manjaro-themes.git
cd artwork-numix-manjaro-themes
=======
>>>>>>> 3e2d2dc... removed github theme option, changed a few menus

    # This has an issue ... Maia-Cursor apparently isn't a directory
echo "Installing the Maia Cursor Theme"
        git clone https://github.com/manjaro/maia-cursor.git
        cd maia-cursor
        mv Maia-Cursor ~/.icons
        cd ..
        rm -rf Maia-Cursor
        clear

## Issue same destination as "Vertex Maia theme, 2 above
echo "Installing The vertex Theme"
   git clone https://github.com/manjaro/vertex-manjaro.git
   cd vertex-manjaro
   mv Vertex-Maia* ~/.thenes
   cd ..
   rm -rf vertex-manjaro
  read -p "Pause for Debugging"


echo "Installing the Maia GTK Theme"
    git clone https://github.com/manjaro/artwork-maia-gtk.git
    cd artwork-maia-gtk
    mv Maia-gtk/ ~/.themes
    cd ..
    rm -rf artwork-maia-gtk

<<<<<<< HEAD
<<<<<<< HEAD
mkdir ~/Pictures/ManjaroWallpapers
mv /wallpapers/ ~/.pictures/ManjaroWallpapers
=======
    mkdir ~/Pictures/ManjaroWallpapers
    mv /wallpapers/ ~/.pictures/ManjaroWallpapers


>>>>>>> a629009... fixing last few issues in manjaro-fy script
cd ..
#rm -rf artwork-numix-manjaro-themes
read -p "Pause for Debugging"
=======


# https://github.com/manjaro/menda-icon-themes.git
>>>>>>> 3e2d2dc... removed github theme option, changed a few menus
