# Script Path, of how/when things operate

1.  'intialTasks' function called

    -   located in _f_common.cfg_ file

    -   '_IntialChecks_' function called

            - located in *f_generalInfo.cfg* file

            - scriptDependencyChecks
            - Checks for dependencies the scripts need to say get different info about the system
              - check for lsb package... installs it if not installed
              - seems to not be installed on arch, openSuse, and Fedora by default
                - note to self: probably should change this to something more universal

            - Checks for Wget and/or Curl ... installs them if they are not already installed

2.  obtainDistroInformation

    A) Gets information first from lsb, _lsbReleaseInfo_ is the function

    -   **Info gathered**

        -   Seems like a "Full name"

            -   lsbDescription= `$(lsb_release -sd )`

        -   Release number ... not sure if this varies from distro to distro

            -   lsbRelease= `$(lsb_release -sr)`

        -   Codename on Ubuntu

            -   lsbCodename= `$(lsb_release -sc)`

        -   more Exact name? ... this could be handy
            -   lsbDistribID= `$(lsb_release -si)`

    B) Gets more info based on /etc/os-release, _osreleaseInfo_ is the function

    -   Info gathered

    -   OSRELEASE_NAME

    -   `$(awk -F= '/^NAME=/ { print $2 }' /etc/os-release | tr -d \")`

    -   OSRELEASE_IDLIKE

    -   `$(awk -F= '/^ID_LIKE=/ { print $2 }' /etc/os-release | tr -d \" )`

    -   OSRELEASE_ID

    -   `$(awk -F= '/^ID=/ { print $2 }' /etc/os-release | tr -d \")`

    -   OSRELEASE_VERSIONID

    -   `$(awk -F= '/^VERSION_ID=/ { print $2 }' /etc/os-release | tr -d \")`

    -   OSRELEASE_VERSION

    -   `$(awk -F= '/^VERSION=/ { print $2 }' /etc/os-release | tr -d \")`

    -   _Ubuntu specific check_

    -   OSRELEASE_UBUNTU_CODENAME=`$(grep "^UBUNTU_CODENAME=" /etc/os-release | cut -d '=' -f 2 | sed 's/\"//g' )`

3.  function _determineDistro_ is called to run a series of checks to determine the distro

    -   the criteria includes:

        -   prior obtained lsb and/or os-release information

        -   special files such as /etc/fedora-release to detect Fedora (in this example)

        -   MORE specific branch checking is done in the loop, when an if statement is triggered...

        -   _supported_ is the variable that is set to yes or no and it depends on what branch of said-distro you are on.
            -   ALL distros that I currently support should have a _supported=_ variable set.
                -   if it's a rolling release I should have a check to see the last time the distro was updated and if passed a certain period of time, displays a message to the user

## specificChecks

### getDesktopInfo

    - Uses XDG_CURRENT_DESKTOP to determine the Desktop Environment used.

## distroBranchOutput

-   Displays Distro and branch information to the user, about what is being detected

## lastUpdateCheck
