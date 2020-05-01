#!/bin/bash

####################################
# Time related variables 

#1 week	604800 seconds
#1 month (30.44 days) 	2629743 seconds
#1 year (365.24 days) 	 31556926 seconds

## Format all in seconds
let day=86400
let week=604800
let month=2629743
let year=31556926
#####################################

let currentDate=$(date +"%s")

# static date set, but that date would be read from a var that reads /var/log/pacman.log and gets the correct date info 
# the var's format may be a string but it's on the YYYY-MM-DD format (i think... if not then DD-MM, but i am sure i am right )
let archUpdateDate=$(date +"%s" -d "2019-11-11")


#This var ONLY is for the other calculations ... it is not displayed to the user, itself
diffInSeconds=$[currentDate-archUpdateDate]

diffInDays=$[diffInSeconds/day]
diffInWeeks=$[diffInSeconds/week]
diffInMonths=$[diffInSeconds/month]
diffInYears=$[diffInSeconds/year]


clear
#echo "(current Date) $currentDate - (last time arch was updated) $archUpdateDate"
#echo 
echo "Arch was last updated: $diffInYears, $diffInMonths, $diffInDays ago"
echo
echo "Difference in days:  $diffInDays days"
echo
echo "Difference in Months: $diffInMonths months"
echo
#echo
#echo "Difference in Months: $diffInWeeks weeks"
#echo
echo "Difference in Years: $diffInYears years"
echo
