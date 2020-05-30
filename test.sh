#!/bin/bash
javacheck="openjdk"
var1=$(java --version)


if [ "$var1" == *"$javacheck"* ]; then
    echo -e "true"
else
    echo -e "false"
fi

read -p "Press any key to continue"
