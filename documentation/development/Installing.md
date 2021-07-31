## Installing

### installApp function

'installApp' is the name of the function and take an unlimited amount of arguments.
    \- it DOES echo out those arguments in a line similar "Installing <arguments here>"
    \- it then uses the $install var to install the selected
    \- I think this is best when installing something from a default repo or AFTER the needed sources (PPA?  RPMFusion? Pacman repo?) are added already.

### $install variable

-   This is based on the package manager

-   Examples
    -   Debian/Ubuntu
        -   sudo apt install
    -   Solus
        -   sudo eopkg install
    -   OpenSuse
        -   sudo zypper install
    -   lFedora
        -   sudo dnf install
    -   Arch Linux/Manjaro 
        -   sudo pacman -S

-   all that has to be done is '$install <arguement> ', though it is better to use the installApp function that uses this variable.

-   this does NOT echo out anything as it's a variable and not a standalone function
