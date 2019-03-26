readonly dir=$(eval pwd)
readonly functionsdir=$(eval pwd)/functions/

. $dir/functions/includeBasicConfigs.cfg

# in f_common.cfg 
intialTasks

echo -e "Start of my usually done post-install tasks "
xmetalTasks