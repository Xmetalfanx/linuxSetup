#!/bin/bash

readonly dir=$(eval pwd)
readonly functionsdir=$(eval pwd)/functions

# includes

. $functionsdir/includeBasicConfigs.cfg
. $functionsdir/includeSpecificDistroCfg.cfg

# in f_common.cfg
intialTasks

##############################################
clear
echo -e "Check for icecream"
detectStatus icecream

echo -e "Checking for nano"
detectStatus nano

echo -e "Checking for Firefox"
detectStatus firefox

echo -e "Checking for pizza"
detectStatus pizza