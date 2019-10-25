# Debian

## Main Tasks

| Menu Tasks     |     | Stable     | Testing |
| -------------- | --- | ---------- | ------- |
| Update System  |     | Not Tested | Pass    |
| Install Codecs |     | Not Tested | Pass    |

---

## Debian Specific Tasks 

- In the Debian submenu, that is

| Menu Tasks                                               |     | Stable     | Testing |
| -------------------------------------------------------- | --- | ---------- | ------- |
| Install (Both Free and Non-free) Linux Firmware Packages |     | Not Tested | Pass    |
| Install Intel Microcode Package                          |     | Not Tested | Pass    |
| Add Archive Support                                      |     | Not Tested | Pass    |


---

### Themeing related

| Menu Items           |     | Stable     | Testing    |
| -------------------- | --- | ---------- | ---------- |
| Install Adapta Theme |     | Not Tested | Not Tested |
| Install Arc Theme    |     | Not Tested | Not Tested |
| Install Mint-Y Theme |     | Not Coded  | Not Tested |
| Install Numix Theme  |     | Not Tested | Not Tested |
| Install Plata Theme  |     | Not Coded  | Not Tested |
| Install Misc Themes  |     | Not Tested | Not Tested |
| Install Misc Icons   |     | Not Tested | Not Tested |
| All Listed Themes    |     | Not Tested | Not Tested |

- if something is not coded yet, it's not failing, so i count "all themes (that ARE CODED) that work, as "all listed theming works"

---

## Software Menus

### Install/Update for the specific apps

| Menu Task                         |     | Stable     | Testing    |
| --------------------------------- | --- | ---------- | ---------- |
| Add Common Software               |     | Not Tested | Pass       |
| Etcher                            |     | Not Tested | Pass       |
| Wine and/or PlayonLinux           |     | Not Tested | Not Tested |
| Build Essential Packages          |     | Not Tested | Pass       |
| Install Fish Shell and Oh-My-Fish |     | Not Tested | Pass       |

---

- I am not assuming anything but in some cases it seems (XNViewMP I THINK is one of them ... GitKraken appears to be another) the same DEBs can be used on Debian or Ubuntu ... HOWEVER ... until I know for each app below ... I will assume that is not the case and I know its not a good idea unless the app dev says it to be so.

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
| makeMKV                 |     | Not Tested | Not Tested |
| Audio Recorder          |     | Not Tested | Not Tested |
| DeadBeef Media Player   |     | Not Tested | Not Coded* |
| XnViewMP                |     | Not Tested | Pass       |
| Celluloid/Gnome-Mpv     |     | Not Tested | Pass       |
| Strawberry Media Player |     | Not Tested | Pass       |

- Menus are still an issue with TMM ... and apparently Java was already installed in my test

- with Audio-Recorder on Debian ... the snap may be the only real options

- Deadbeef is in the [https://www.deb-multimedia.org/](https://www.deb-multimedia.org/) repo ... not sure I want to go that route ... maybe i could include that option and/or the snap option and give the user the choice/info to choose on their own

---

### Productivity/Office Apps

| Menu Task   |     | Stable     | Testing    |
| ----------- | --- | ---------- | ---------- |
| Atom Editor |     | Not Tested | Not Tested |
| vscode      |     | Not Tested | Pass       |
| GitKraken   |     | Not Tested | Fail       |
| Typora      |     | Not Tested | Not Tested |
