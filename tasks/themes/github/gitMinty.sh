function  MintyThemes
{
    echo "Installing Mint-y Theme from Git "
    git clone https://github.com/linuxmint/mint-y-theme.git
    clear
    mkdir ~/.themes
    cd mint-y-theme/usr/share/themes
    mv * ~/.themes
    rm -rf mint-y-theme
}


function MintyIcons
{

    echo "Installing Mint-y Icons "
    git clone https://github.com/linuxmint/mint-y-icons.git
    clear
    mkdir ~/.icon/mint-y-icons
    cd mint-y-icons/usr/share/icons
    mv * ~/.icons/mint-y-icons
    clear
}

########################################
MintyThemes
MintyIcons
