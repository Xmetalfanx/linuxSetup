#!/usr/bin/bash

file="defaultrepoapps.list"


index=0
while read line
do
	usefulProgs[index]="$line"
	index=$index+1

done < $file

echo "sudo eopkg install ${usefulProgs[@]}"




################################
#while read -r line
#do
#    multimediaprogs="$line"
#    echo "sudo eopkg $multimediaprogs"
#done  < "$file"
