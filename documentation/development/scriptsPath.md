# What happens when main script is ran 

## includeBasicConfigs.cfg is included 

   

## intialTasks function is called

### intialChecks function called

### Checks for packages and if not already installed by default, it installs them
1. Check lsb related packages
2. Check for Wget AND Curl 

3.  Get info from lsb-release - lsbReleaseInfo is the function
4.  Get info from /etc/os-release - osreleaseInfo is the function 