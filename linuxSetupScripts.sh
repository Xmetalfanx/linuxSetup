#!/bin/bash

#Title :          Xmetal's Linux Post Setup Script
#Description :    This script will setup some common things afer a fresh install of various Linux distros
#Author :         Xmetalfanx / Xmetal

########################################################################
# Import Functions

# This is needed here so my scripts can use this to load other needed things
readonly dir=$(eval pwd)

. "$dir/functions/includeBasicConfigs.cfg"

########################################################################

# in f_common.cfg
intialTasks

mainMenuType
