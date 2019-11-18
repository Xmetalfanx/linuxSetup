# Script Path

## 1. intialTasks function called

-  located in f_common.cfg file

### A) IntialChecks function called

- scriptDependencyChecks
  - Checks for dependencies the scripts need to say get different info about the system
    - check for lsb package... installs it if not installed
      - seems to not be installed on arch, openSuse, and Fedora by default
        - note to self: probably should change this to something more universal

  - Checks for Wget and/or Curl ... installs them if they are not already installed


- obtainDistroInformation
  - Gets information first from lsb

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
          


  - Gets more info based on /etc/os-release

    - *osreleaseInfo* is the function
    - Info gathered 
      -  OSRELEASE_NAME=`$(awk -F= '/^NAME=/ { print $2 }' /etc/os-release | tr -d \")`
      - OSRELEASE_IDLIKE=`$(awk -F= '/^ID_LIKE=/ { print $2 }' /etc/os-release | tr -d \" )`
      - OSRELEASE_ID=`$(awk -F= '/^ID=/ { print $2 }' /etc/os-release | tr -d \")`
      - OSRELEASE_VERSIONID=`$(awk -F= '/^VERSION_ID=/ { print $2 }' /etc/os-release | tr -d \")`
      - OSRELEASE_VERSION=`$(awk -F= '/^VERSION=/ { print $2 }' /etc/os-release | tr -d \")`
  
    - *Ubuntu specific check*
      - OSRELEASE_UBUNTU_CODENAME=`$(grep "^UBUNTU_CODENAME="  /etc/os-release | cut -d '=' -f 2 | sed 's/\"//g' )`
