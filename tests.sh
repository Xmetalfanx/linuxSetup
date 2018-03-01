universalFunctions= . "$rootdir"/tasks/functions/includeUniversalFunctions.cfg
$universalFunctions

###################################################################
function packageSearch
{
  installedValue=$(sudo apt-cache policy mpv | grep Installed | sed 's/^.*Installed://g;s/\s//g')

  if [ $installedValue == '(none)' ]; then
    
    echo "Package does NOT exists"
  else
    echo "Package exists"
  fi 
}


function getGitName
{
  url="https://github.com/linuxmint/mint-y-icons.git"
  packageName=${url/*\//}

  clear
  echo -e "URL Name is: $url"
  echo -e "PackageName is: $packageName"
  echo
}



while [ $x=1 ]; do

    clear
    echo -e   "1. \t Test - Fedora test if a pacakge is installed"
    echo -e   "2. \t Test - get Plasma info"
    echo -e   "3. \t Test - Univeral Install usefulApps function"
    echo -e   "4. \t Test - get name of github repo"
    echo -e   "5. \t Test - PackageSearch VLC"
    echo -e   "6. \t Test - PackageSearch mpv "


    echo -e   "q. \t Exit to Prompt \n\n"
    read -p   "Your Choice?:" testsSelection

    case $testsSelection in

      1) dnfCheckPkgInstalled hexchat 
          x=1 ;; 

      2) getPlasmaInfo $plasmaDEVersion $plasmaFrameworkVersion 
          x=1 ;; 

      3) massInstallUsefulApps 
         x=1 ;;

      4) getGitName 
        x=1 ;;

      5) packageSearch VLC
        x=1 ;;

      6) packageSearch mpv
        x=1 ;; 


      [qQ]) quitScript  ;;

      * ) invalidSection ;;

      esac
done