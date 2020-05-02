# Wine Checks

## Checks

### Default Repo Checks

| Task/Goal                    | Debian | Linux Mint 19 | Ubuntu |
| ---------------------------- | ------ | ------------- | ------ |
| Default repo Install of Wine | Pass   | Pass          | Pass   |

### WineHQ Checks

| Task/Goal                                     | Debian | Linux Mint 19 | Ubuntu                     |
| --------------------------------------------- | ------ | ------------- | -------------------------- |
| Install of any needed dependencies for WineHQ |        |               | Pass (non needed, perhaps) |
| WineHQ Install                                | Fail   |               | Pass                       |

-   In both default Wine and WineHQ tests, a fresh install of Ubuntu Mate 20.04 (final ISO.... no beta ISOs in otherwards) was what I used to test 
-   Debian is complaining about Gdebi not being installed 

* * *

## Dependencies

### Debian

    https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Debian_10/amd64/libfaudio0_20.01-0~buster_amd64.deb

### Linux Mint

### Ubuntu

* * *

## WineHQ

### Debian

-   line that uses SU comes back as a fair no matter what i type in as the PW 
-   complaining about name of wine package 
    -   winehq-stable depends on wine-stable but it cant be installed 

### Linux Mint

### Ubuntu
