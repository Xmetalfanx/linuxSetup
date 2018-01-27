#!/bin/bash

function testDEinfo
{

	inxiTest=$(inxi -S | grep Desktop | cut -d " " -f 13)

	#inxiTest2='${inxiTest%%Distro*}'

	#echo -e "TEST: \t $inxiTest"
	echo -e "$inxiTest"

}

testDEinfo
