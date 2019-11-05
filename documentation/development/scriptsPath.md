# What happens when main script is ran 

**1. intialTasks function is called**

**2. intialChecks function called**

### Checks for packages and if not already installed by default, it installs them
1. Check lsb related packages
    - *packageManDetection* to detect the package manager
      - * I think I have this called elsewhere too ... REMOVE it there
        - the reason I have this here is some distros like arch and Fedora (I think) doesn't have lsb installed by default and TO install it I need to know the package manager .. so say I can "sudo dnf install ..." even if my scripts do not have all the info about the fedora version here ... 
        - I probably should do a check for "supported=yes" but logically i'd be getting into a loop of A needs to know C before I can even check for C and so forth and so on 

2. Check for Wget AND Curl 

3.  Get info from **lsb-release** 
    - *lsbReleaseInfo* is the function
        
        - **Info gathered**
        
          -  Seems like a "Full name"
         - lsbDescription= `$(lsb_release -sd )`
        
          - Release number ... not sure if this varies from distro to distro
            - lsbRelease= `$(lsb_release -sr)`
        
          - Codename on Ubuntu
            - lsbCodename= `$(lsb_release -sc)`
        
          - more Exact name? ... this could be handy
            - lsbDistribID= `$(lsb_release -si)`
        


4.  Get info from ***/etc/os-release*** 
    - *osreleaseInfo* is the function
    - Info gathered 
      -  OSRELEASE_NAME=`$(grep "^NAME=" /etc/os-release | cut -d '=' -f 2 | sed 's/\"//g' )`
      - OSRELEASE_IDLIKE=`$(grep "^ID_LIKE=" /etc/os-release | cut -d '=' -f 2 | sed 's/\"//g' )`
      - OSRELEASE_ID=`$(grep "^ID=" /etc/os-release | cut -d '=' -f 2 | sed 's/\"//g' )`
      - OSRELEASE_VERSIONID=`$(grep "^VERSION_ID=" /etc/os-release | cut -d '=' -f 2 | sed 's/\"//g')`
      - OSRELEASE_VERSION=`$(grep "^VERSION=" /etc/os-release | cut -d '=' -f 2 | sed 's/\"//g' )`
    - *Ubuntu specific check*
      - OSRELEASE_UBUNTU_CODENAME=`$(grep "^UBUNTU_CODENAME="  /etc/os-release | cut -d '=' -f 2 | sed 's/\"//g' )`

- Nov 2019: The lines above have not been updated yet ... to maybe use awk instead of grep ... and tr instead of  sed 