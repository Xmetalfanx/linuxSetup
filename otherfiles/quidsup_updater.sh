echo "Updating System"

---
Update_Ubuntu() {
  #Ubuntu
  echo "Preparing to Install Deb Packages with Apt..."
  sudo apt update
}
Install_AptGet() {
  #Debian, Ubuntu
  echo "Preparing to Install Deb Packages with Apt-Get..."
  sudo apt-get -y install
}
Install_Aptitude() {
  #Debian, Ubuntu
  echo "Preparing to Install Deb Packages with Aptitude..."
  sudo aptitude -y install
}
Update_RPM() {
  #Redhat, Fedora
  sudo dnf update
}
Update_Arch() {
  #Arch
  sudo pacman -Syyu
}

Install_Yum() {
  #Older versions of Redhat, Fedora, CentOS
  echo "Preparing to Install RPM packages using Yum..."
  sudo yum -y install
}
Install_Zypper() {
  #OpenSuse
  echo "Preparing to Install RPM packages using Zypper..."
  sudo zypper install
}




---
echo "Updating Ubuntu 16.04 based systems "
sudo apt update
clear
sudo apt upgrade -y


echo "Updating Ubuntu-based system prior to 16.04 "
sudo apt-get update
clear
sudo apt-get upgrade -y

echo "Updating Arch based systems as well as optimizing mirrors"
sudo pacman-mirrors -g
echo "Mirrors Optimized .. Now Updating System"
sudo pacman -Syyu

echo "Updating Fedora 23 and higher"
sudo dnf update


echo "Updating OpenSuse based System "
sudo zypper up

echo "Update Done "
