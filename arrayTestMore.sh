#!/bin/bash


currentUbuntu=(
    xenial          # 16.04
    bionic          # 18.04
    focal           # 20.04
 )

echo -e "${currentUbuntu[@]}"

foobar="xenial"

if [[ "${currentUbuntu[*]}" == *"${foobar}"* ]]; then
    echo -e "$foobar var found in the array"
else
    echo -e "$foobar var not found in the array"
fi 