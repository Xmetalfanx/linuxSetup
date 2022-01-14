# Debian

## Main Tasks

| Menu | Menu Tasks     |  | Stable     | Testing |
|------|----------------|--|------------|---------|
| 1    | Update System  |  | Not Tested | Pass    |
| C    | Install Codecs |  | Not Tested | Pass    |

* * *

## Debian Specific Tasks

- In the Debian submenu, that is

| Menu Tasks                                               |  | Stable     | Testing |
|----------------------------------------------------------|--|------------|---------|
| Add Archive Support                                      |  | Not Tested | Pass    |
| Install (Both Free and Non-free) Linux Firmware Packages |  | Not Tested | Pass    |

* * *

### Themeing related

| Menu Item | Menu Items          |  | Stable     | Testing    |
|-----------|---------------------|--|------------|------------|
| 1         | Install Adapta      |  | Not Tested | Pass       |
| 2         | Install Arc         |  | Not Tested | Pass       |
| 3         | Install Mint-Y      |  | Not Coded  | Not Coded  |
| 4         | Install Numix       |  | Not Tested | Pass       |
| 5         | Install Plata       |  | Not Coded  | Not Tested |
| 6         | Install Yaru        |  | Not Tested | Not Coded  |
| 7         | Install Breeze      |  | Not Tested | Pass       |
| A         | All Listed Themes   |  | Not Tested | Not Tested |
| I         | Install Misc Icons  |  | Not Tested | Not Coded  |
| T         | Install Misc Themes |  | Not Tested | Pass       |

- numix-gtk-theme is in Debian stable/Buster (I am not running Buster), but NOT in Testing/Bullseye

* * *

## Software Menus

### Install/Update for the specific apps

| Menu Item | Menu Task                 |  | Stable     | Testing |
|-----------|---------------------------|--|------------|---------|
| 1         | Add Common Software       |  | Not Tested | Pass    |
| 6         | Build Essential Packages  |  | Not Tested | Pass    |
| 7         | Etcher                    |  | Not Tested | Pass    |
| 8         | Fish Shell and Oh-My-Fish |  | Not Tested | Pass    |
| 10        | Intel Microcode Package   |  | Not Tested | Pass    |
| 11        | Java Support              |  | Not Tested | Pass    |

* * *

# Wine Related Install

| Wine install                 | Buster     | Bullseye   |
|------------------------------|------------|------------|
| Install Default repo version | Pass(A)    | Not Tested |
| Install via WineHQ PPA       | Not Tested | Not Tested |

(A) Test done on Sparky Linux Stable (based on Debian Stable)

* * *

- I am not assuming anything but in some cases it seems (XNViewMP I THINK is one of them ... GitKraken appears to be another) the same DEBs can be used on Debian or Ubuntu ... HOWEVER ...until I know for each app below ... I will assume that is not the case and I know its not a good idea unless the app dev says it to be so.

* * *

### Browser Installer

| Menu Items    |  | Stable     | Testing |
|---------------|--|------------|---------|
| Chromium      |  | Not Tested | Pass    |
| Firefox       |  | Not Tested | Pass    |
| Google Chrome |  | Not Tested | Pass    |
| Vivaldi       |  | Not Coded  | Pass    |

* * *

### Multimedia Apps

| Menu Item | Menu Task               |  | Stable     | Testing    |
|-----------|-------------------------|--|------------|------------|
| 1         | makeMKV                 |  | Not Tested | Pass       |
| 2         | Audio Recorder          |  | Not Tested | Not Tested |
| 3         | XnViewMP                |  | Not Tested | Pass       |
| 4         | DeadBeef Media Player   |  | Not Tested | Pass       |
| 5         | Celluloid/Gnome-Mpv     |  | Not Tested | Pass       |
| 6         | Strawberry Media Player |  | Not Tested | Pass       |
| 7         | Tiny Media Manager      |  | Not Tested | Pass       |
| 8         | MediaElch AppImage      |  | Not Tested | Pass       |

- Menus are still an issue with TMM ...and apparently Java was already installed in my test

- with Audio-Recorder on Debian ...the snap may be the only real option -  Snap also doesn't seem to be installed by default

* * *

### Productivity/Office Apps

| Menu Item | Menu Task   |  | Stable     | Testing   |
|-----------|-------------|--|------------|-----------|
| 1         | Atom Editor |  | Not Tested | Pass      |
| 2         | vscode      |  | Not Tested | Pass      |
| 3         | GitKraken   |  | Not Tested | Pass      |
| 4         | Typora      |  | Not Tested | Not Coded |
