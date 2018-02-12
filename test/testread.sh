#!/usr/bin/bash

file="multimedia.list"


index=0
while read line
do 
	multimediaProgs[index]="$line"
	index=$index+1

done < $file

echo "sudo eopkg install ${multimediaProgs[@]}"




################################
#while read -r line
#do 
#    multimediaprogs="$line"
#    echo "sudo eopkg $multimediaprogs"
#done  < "$file" 
