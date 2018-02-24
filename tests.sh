universalFunctions= . "$rootdir"/tasks/functions/includeUniversalFunctions.cfg
$universalFunctions

###################################################################
function getGitName
{
  url="https://release.tinymediamanager.org/dist/tmm_2.9.8_6644bb9_linux.tar.gz"
  packageName=${url/*\//}

  clear
  echo -e "URL Name is: $url"
  echo -e "PackageName is: $packageName"
  echo
}



while [ $x=1 ]; do

   
    echo -e   "1. \t Test - Fedora test if a pacakge is installed"
    echo -e   "2. \t Test - get Plasma info"
    echo -e   "3. \t Test - Univeral Install usefulApps function"
    echo -e   "4. \t Test - get name of github repo"



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

      [qQ]) quitScript  ;;

      * ) invalidSection ;;

      esac
done