#!/bin/bash

home="/home/$USER"
programsDir="/home/$USER/foobartest"
foo="$home/TESTTTTTTTTTTTTTT"

clear 

if [ -d $foo ]; then  
	echo -e "$foo exists already"
else 
	echo -e "Making $foo location"
	mkdir $foo
fi 


echo -e "\v#####################################################"
ls ~