#!/bin/bash


function testDEinfo
{
	clear

	test=`inxi -S | grep Desktop | cut -d ':' -f 2`

	echo -e "TEST: \t $test"

}


########################################################################
