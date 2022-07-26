# Tests to be done 

## Does Repo Install? (no software attempts )
| Test Name            | Already Installed | Not Installed |
|----------------------|-------------------|---------------|
| Fedora (RPMFusion)   | Pass - DONE       | Pass - DONE   |
| Ubuntu (random PPAs) | Pass - DONE       | Pass - DONE   |
| openSUSE (packman)   | Pass - DONE       | Pass - DONE   |


## Software install + prompt to user if a third party repo is needed 

- These tests only pass if something from the repo in question installs correctly 

### rpmfusion tests 

| Test Name          | Repo exists - Software installs | Repo Doesn't Exist - Software Installs |
|--------------------|---------------------------------|----------------------------------------|
| Fedora (RPMFusion) | Pass - DONE                     | Pass - Done                            |


### Packman Test 
| Test Name          | Repo exists - Software installs | Repo Doesn't Exist - Repo Installs | Repo Exists - Repo Doesn't (re)Installs |
|--------------------|---------------------------------|------------------------------------|-----------------------------------------|
| openSUSE Leap 15.4 | ---                             | ----                               | --                                      |
| openSUSE TW        | Pass - DONE                            | Pass - DONE                        | Pass - DONE                             |


Ubuntu 

Package install (based on user selection (tested "yes") OR default value "no" )

| Test Name            | Already Installed | Not Installed |
|----------------------|-------------------|---------------|
| Ubuntu (random PPAs) | Pass - DONE       | Pass - DONE   |
