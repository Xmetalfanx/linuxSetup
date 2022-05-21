#!/bin/bash

packageVersion="1.9.1"
deadbeefDEBURL="https://sourceforge.net/projects/deadbeef/files/travis/linux/${packageVersion}/deadbeef-static_${packageVersion}-1_amd64.deb"

echo -e "$deadbeefDEBURL"
sleep 2

wget $deadbeefDEBURL

# what i am getting 
# https://sourceforge.net/projects/deadbeef/files/travis/linux/1.9.1/deadbeef-1.9.1_amd64.deb
# https://sourceforge.net/projects/deadbeef/files/travis/linux/1.9.1/deadbeef-static_1.9.1-1_amd64.deb/download
# correct above