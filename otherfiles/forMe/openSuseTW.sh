#!/bin/bash

localInstall= $zypperInstall

. common.conf
. opensuseTWFunctions.cfg


################################################
### START 

# 1 - Dist Upgrade 
dupZypper

# 2 - Add Pacman Repo 
pacmanRepo

# 3 - Install Software 
installCommonSoftware
