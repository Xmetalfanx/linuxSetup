echo  "Xmetal Ubuntu-based Post Install, Themes/Icons/Programs Script. Version 1.0"
read

echo "Running a Full Update to the system before any repository is added. Press [Enter] to continue"
read
sudo apt update
clear
sudo apt upgrade -y
clear

echo "System is fully updated.  Press [Enter] key to continue to add programs ..."
read
sudo apt install mpv filezilla deadbeef vlc synaptic virtualbox bleachbit gparted
clear

echo "Downloading and Installing the Atom Text Editor"
wget https://atom.io/download/deb
clear

# Converting the downloaded file to a deb file
sudo mv deb atom.deb
sudo gdebi atom.deb
clear
echo "Atom Text Editor installed"


# Install Google Chrome
read "Adding Google Chrome (Stable)"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt update
clear
sudo apt-get install google-chrome-stable
clear
