clear
echo "Adding Themes/Icons"

sudo apt-get install ambiance-colors radiance-colors moka-gtk-theme arc-icons vertex-icons kawaiki-icons arc-theme numix-icon-theme numix-icon-theme-circle numix-gtk-theme

echo "installing Mint-y Theme"
git clone https://github.com/linuxmint/mint-y-theme.git
clear
cd mint-y-theme/usr/share/themes
mv * ~/.themes


echo "Installing Mint-y Icons "
git clone https://github.com/linuxmint/mint-y-icons.git
clear
cd mint-y-icons/usr/share/icons
mv * ~/.icons
