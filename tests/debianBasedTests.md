# Debian

## Main Tasks

| Menu Tasks                      |     | Stable     | Testing |
| ------------------------------- | --- | ---------- | ------- |
| Update System                   |     | Not Tested | Pass    |
| Install Codecs                  |     | Not Tested | Pass    |
| Install Intel Microcode Package |     | Not Tested | Pass    |

---

## Debian Specific Tasks 

* In the Debian submenu, that is

| Menu Tasks                                               |     | Stable     | Testing |
| -------------------------------------------------------- | --- | ---------- | ------- |
| Install (Both Free and Non-free) Linux Firmware Packages |     | Not Tested | Pass    |
| Add Archive Support                                      |     | Not Tested | Pass    |

---

### Themeing related

| Menu Items          |     | Stable     | Testing    |
| ------------------- | --- | ---------- | ---------- |
| Install Adapta      |     | Not Tested | Pass       |
| Install Arc         |     | Not Tested | Pass       |
| Install Mint-Y      |     | Not Coded  | Not Coded  |
| Install Numix       |     | Not Tested | Pass       |
| Install Plata       |     | Not Coded  | Not Tested |
| Install Yaru        |     | Not Tested | Not Coded  |
| Install Breeze      |     | Not Tested | Pass       |
| Install Misc Themes |     | Not Tested | Pass       |
| Install Misc Icons  |     | Not Tested | Not Coded  |
| All Listed Themes   |     | Not Tested | Not Tested |

- numix-gtk-theme is in Debian stable/Buster (I am not running Buster), but NOT in Testing/Bullseye

---

## Software Menus

### Install/Update for the specific apps

| Menu Task                         |     | Stable     | Testing |
| --------------------------------- | --- | ---------- | ------- |
| Add Common Software               |     | Not Tested | Pass    |
| Etcher                            |     | Not Tested | Pass    |
| Wine and/or PlayonLinux           |     | Not Tested | Pass    |
| Build Essential Packages          |     | Not Tested | Pass    |
| Install Fish Shell and Oh-My-Fish |     | Not Tested | Pass    |

---

* I am not assuming anything but in some cases it seems (XNViewMP I THINK is one of them ... GitKraken appears to be another) the same DEBs can be used on Debian or Ubuntu ... HOWEVER ...until I know for each app below ... I will assume that is not the case and I know its not a good idea unless the app dev says it to be so.

---

### Browser Installer

| Menu Items    |     | Stable     | Testing |
| ------------- | --- | ---------- | ------- |
| Google Chrome |     | Not Tested | Pass    |
| Chromium      |     | Not Tested | Pass    |
| Firefox       |     | Not Tested | Pass    |
| Vivaldi       |     | Not Coded  | Pass    |

---

### Multimedia Apps

| Menu Task               |     | Stable     | Testing    |
| ----------------------- | --- | ---------- | ---------- |
| Tiny Media Manager      |     | Not Tested | Pass       |
| makeMKV                 |     | Not Tested | Fail       |
| Audio Recorder          |     | Not Tested | Not Tested |
| DeadBeef Media Player   |     | Not Tested | Not Coded* |
| XnViewMP                |     | Not Tested | Pass       |
| Celluloid/Gnome-Mpv     |     | Not Tested | Pass       |
| Strawberry Media Player |     | Not Tested | Pass       |

* Menus are still an issue with TMM ...and apparently Java was already installed in my test

* with Audio-Recorder on Debian ...the snap may be the only real option -  Snap also doesn't seem to be installed by default 

* Deadbeef is in the [https://www.deb-multimedia.org/](https://www.deb-multimedia.org/) repo ...not sure I want to go that route ...maybe i could include that option and/or the snap option and give the user the choice/info to choose on their own

---

### Productivity/Office Apps

| Menu Task   |     | Stable     | Testing   |
| ----------- | --- | ---------- | --------- |
| Atom Editor |     | Not Tested | Pass      |
| vscode      |     | Not Tested | Pass      |
| GitKraken   |     | Not Tested | Pass      |
| Typora      |     | Not Tested | Not Coded |
