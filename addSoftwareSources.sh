echo  "Xmetal Ubuntu-based Post Install, Themes/Icons/Programs Script. Version 1.0"
read

echo "Running a Full Update to the system before any repository is added. Press [Enter] to continue"
read
sudo apt update
clear
sudo apt upgrade -y
clear


echo "Adding Theme and Icon Pack, next ... Press [Enter] key to continue"
read
sudo add-apt-repository -y ppa:ravefinity-project/ppa && sudo add-apt-repository -y ppa:moka/stable && sudo add-apt-repository -y ppa:noobslab/icons && sudo add-apt-repository -y ppa:noobslab/icons2  && sudo add-apt-repository -y ppa:noobslab/themes && sudo add-apt-repository -y ppa:numix/ppa && sudo add-apt-repository -y ppa:snwh/pulp

echo  "PPAs/ Repositories added for Themes and Icons.  Press [Enter] key to continue"
read
clear
