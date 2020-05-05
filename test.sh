#!/bin/bash

function userPrompt()
{
	read -p "Press [Enter] key"
}

function detectStatus()
{
	clear

	for indivdualPackage in $@
	{

		# idea: so nothing is displayed
		which $indivdualPackage > /dev/null 2>&1

		if [ $? == 0 ]; then
			echo -e "Package $indivdualPackage, found on this system"

			# for testing only
			userPrompt
		else
			echo -e "Package $indivdualPackage is not detected"

			echo -e "$indivdualPackage needs to be installed"
			userPrompt

			sudo zypper install $indivdualPackage
		fi

	}

}

detectStatus apt zypper