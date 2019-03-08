#!/bin/bash

. common.conf
. fedoraFunctions.cfg

################################################
### START 
# 1 - Make updates faster 
su -c 'echo "fastestmirror=true" >> /etc/dnf/dnf.conf'

# 2 - Upgrade system
distUpgrade

# 3 - Fedy Tasks 
massFedyTasks

# 4 - Install Software 
installCommonSoftware

# 5 - Install Theming 
installTheming
