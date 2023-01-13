clear

URL="http://www.example.com/foo.tar.gz"
fileName1="foobar.deb"
fileName2="barfoo.tar.gz"


function getExtension() {

    fileExt=${1#*.}

	echo -e "${fileExt}"
}


getExtension "${fileName1}"

getExtension "${fileName2}"