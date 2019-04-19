#!/bin/bash

awk -F "=" '{ print $2 }' /etc/os-release | sed 's/\"//g'