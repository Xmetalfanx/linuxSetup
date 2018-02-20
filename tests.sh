while [ $x=1 ]; do

    clear 
    echo -e   "1. \t Test - Fedora test if a pacakge is installed"
    echo -e   "2. \t Test - get Plasma info"

    echo -e   "q. \t Exit to Prompt \n\n"
    read -p   "Your Choice?:" testsSelection

    case $testsSelection in

      1) dnfCheckPkgInstalled hexchat ;;

      2) getPlasmaInfo $plasmaDEVersion $plasmaFrameworkVersion;;

      [qQ]) quitScript  ;;

      * ) invalidSection ;;

      esac
done