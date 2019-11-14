## Installing

### installApp function 

'installApp' is the name of the function and take an unlimited amount of arguements.
    - it DOES echo out those arguements in a line similar "Installing <arguements here>"
    - it then uses the $install var to install the selected 

### $install variable

- This is based on the package manager

- Examples
  - sudo apt install
  - sudo eopkg install
  - sudo zypper install 
  - sudo dnf install
  - sudo pacman -S 

all that has to be done is ' $install <arguement> '

- this does not echo out anything as it's a variable and not a standalone function 
