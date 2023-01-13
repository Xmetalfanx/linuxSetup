
# Goal of this function
    # all var names at the end are EXAMPLES ONLY
    # to get say fooIconFile="/foor/${programName}.svg"
    	# or barIconFile="/bar/${programName}.svg"
function assignIconAndMenuFiles() {


	for menuTypes in "${@}"
	do

		declare ${menuTypes}IconFile=${menuTypes}"FileDir"/${iconFile}
		declare ${menuTypes}MenuFile=${menuTypes}"FileDir"/${programName}.desktop

		echo -e "${menuTypes}IconFile:\t${menuTypes}IconFile"
		echo -e "${menuTypes}MenuFile:\t${menuTypes}MenuFile"

	done



}

assignIconAndMenuFiles "local" "moved"