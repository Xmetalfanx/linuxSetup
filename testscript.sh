testcase=`cat /etc/os-release | grep ^NAME= | sed s/\"//g | sed s/^NAME=//g   `

echo -e "$testcase"

exit 0 
