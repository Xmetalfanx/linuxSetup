readonly dir=$(eval pwd)
readonly functionsdir=$(eval pwd)/functions

# includes
. $functionsdir/universal/includeUniversalFunctions.cfg
. $functionsdir/includeBasicConfigs.cfg


# in f_common.cfg 
intialTasks

echo -e "Start of my usually done post-install tasks "
xmetalTasks