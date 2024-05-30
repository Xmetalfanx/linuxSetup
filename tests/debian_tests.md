# Debian

- retesting Early April 2024

## Main Tasks

| Menu | Menu Tasks                                          |     | Stable | Testing | Devuan  |
| ---- | --------------------------------------------------- | --- | ------ | ------- | ------- |
| 1    | Update System                                       |     | Pass   |         | Pass    |
| 2    | Optimizing Mirrors                                  |     |        |         | Fail \* |
| C    | Install Codecs - extra repos already in source list |     |        |         | Pass    |
| C    | Install Codecs - extra repos not pre-added          |     |        |         |         |

\* seems to have to do with the "contrib" and those components

---

### Theming related

| Menu Item | Menu Items             |     | Stable | Testing   | Devuan           |
| --------- | ---------------------- | --- | ------ | --------- | ---------------- |
| 1         | Mint Themeing Sub-menu | --- | ----   | ----      | ----             |
| 2         | Yaru Themeing Sub-menu | --- | ----   | ----      | ----             |
| 3         | Install Adapta         |     |        |           | packages removed |
| 4         | Install Arc            |     |        |           | Pass             |
| 5         | Install Numix          |     |        |           | Pass             |
| 6         | Install Breeze         |     |        |           | Pass             |
| A         | All Listed Themes      |     |        |           |                  |
| I         | Install Misc Icons     |     |        | Not Coded | NEEDS TESTING    |
| T         | Install Misc Themes    |     |        |           | NEEDS TESTING    |

- numix-gtk-theme is in Debian stable/Buster (I am not running Buster), but NOT in Testing/Bullseye


#### Mint Theming Sub-menu

| Menu Item | Menu Items                               |     | Stable | Testing | Devuan             |
| --------- | ---------------------------------------- | --- | ------ | ------- | ------------------ |
| 1         | Mint Themes - (from distro repos)        | --- | ----   | ----    | "Fail" - not coded |
| 2         | Current Mint themes - from Mint's Github |     |        |         | Pass               |
| 3         | Legacy Mint themes - from Mint's Github  |     |        |         | Pass               |
| 4         | Mint-Y Icons - from Mint's Github        |     |        |         | Pass               |
| 5         | MintYZ themes - from github              |     |        |         | Pass               |

#### Yaru Theming Sub-menu

| Menu Item | Menu Items                         |     | Stable | Testing | Devuan   |
| --------- | ---------------------------------- | --- | ------ | ------- | -------- |
| 1         | Yaru Theming - (from distro repos) | --- | ----   | ----    | Pass     |
| 2         | YaruColors - from Github           |     |        |         | 1/2 Pass |

- YaruColors works from my scripts but IT'S install scripts seems clunky in my tests (not always working the way it should)

## Software Menus

### Install/Update for the specific apps

| Menu Item | Menu Task                |     | Stable | Testing | Devuan                               |
| --------- | ------------------------ | --- | ------ | ------- | ------------------------------------ |
| 1         | Add Common Software      |     |        |         | 1/2 pass - never gets to yt-dlp step |
| 6         | Build Essential Packages |     |        |         | Pass                                 |

\* - message issue and debianMessage (?) not found

---

### Browser Installer

|     | Menu Items              |     | Stable | Testing | Devuan                            |
| --- | ----------------------- | --- | ------ | ------- | --------------------------------- |
| 1   | Google Chrome           |     |        |         | Pass                              |
| 2   | [Sub-Menu] Chromium     |     | ---    | ---     | ---                               |
| 3   | Ungoogled Chromium (FP) |     |        |         | Pass (includes adding FP support) |
| 4   | [Sub-Menu] Firefox      |     | ---    | ---     | ---                               |
| 5   | Librewolf (FP)          |     |        |         | Pass                              |
| 6   | Vivaldi (non- DebGet)   |     |        |         | redo in next release              |

- did i forget to refresh repos on vivaldi step?

#### Chromium Sub-Menu

|     | Menu Items                                        |     | Stable | Testing | Devuan |
| --- | ------------------------------------------------- | --- | ------ | ------- | ------ |
| 1   | Download Chromium from your distro's default repo |     |        |         | Pass   |
| 2   | Install Chromium Flatpak                          |     |        |         | Pass   |

#### Firefox Sub-Menu

|     | Menu Items                                         |     | Stable | Testing | Devuan       |
| --- | -------------------------------------------------- | --- | ------ | ------- | ------------ |
| 1   | from your distro's default repo                    |     |        |         | Preinstalled |
| 2   | LATEST Firefox Archive from Mozilla?               |     |        |         | Pass         |
| 3   | Install Firefox Flatpak                            |     |        |         | Pass         |
| 4   | (\*) Remove Firefox Snap, & replace w/ Mozilla PPA |     | N/A    | N/A     | N/A          |

- \* (for Ubuntu)

### Productivity/Office Apps

| Menu Item | Menu Task         |     | Stable | Testing | Devuan |
| --------- | ----------------- | --- | ------ | ------- | ------ |
| 1         | Atom Editor       |     |        |         | Pass   |
| 2         | vscode            |     |        |         | Pass   |
| 3         | VSCodium          |     |        |         | Pass   |
| 4         | GitKraken         |     |        |         | Pass   |
| 5         | Typora            |     | N/A    | N/A     | N/A    |
| 6         | Micro Text Editor |     |        |         |        |

- Typora has an official Flatpak but my prior code was only snap related and now this is N/A since i removed snap support

---

### Multimedia Apps

| Menu Item | Menu Task                |     | Stable | Testing | Devuan                     |
| --------- | ------------------------ | --- | ------ | ------- | -------------------------- |
| 1         | [Sub-Menu] makeMKV       |     |        |         |                            |
| 2         | Audio Recorder           |     |        |         | Support removed - \2       |
| 3         | XnViewMP                 |     |        |         | Pass                       |
| 4         | DeadBeef Media Player    |     |        |         | Pass                       |
| 5         | Celluloid/Gnome-Mpv      |     |        |         | Pass                       |
| 6         | Strawberry Media Player  |     |        |         | MAJOR REDO IN NEXT RELEASE |
| 7         | Tiny Media Manager       |     |        |         | Pass                       |
| 8         | MediaElch AppImage       |     |        |         | Pass                       |
| 9         | Tenacity (Audacity Fork) |     |        |         |                            |
| 10        | ANoise (Ubuntu only)     |     | N/A    | N/A     | N/A                        |
| 11        | ocenAudio                |     |        |         | Pass                       |
| K         | MakeMKV Key              |     |        |         | Pass                       |

- \1 - artifacts after the ".deb" name
- \2 - Snap support removed and this needs to be recoded
- tmm fail seems to be due to the ~/Program/tmm (type dir) not created at the right time

#### MakeMKV SubMenu

| Menu Item | Menu Task                   |     | Stable | Testing | Devuan                                |
| --------- | --------------------------- | --- | ------ | ------- | ------------------------------------- |
| 1         | Compile and Install MakeMKV |     |        |         | Fail compiling (dev packages missing) |
| 2         | Install MakeMKV Flatpak     |     |        |         | Pass                                  |

---

### Shell Menu

| Menu Item | Menu Task                                      |     | Stable | Testing | Devuan |
| --------- | ---------------------------------------------- | --- | ------ | ------- | ------ |
| 1         | Install fish , & Oh-My-Fish                    |     |        |         | Pass   |
| 2         | Install zsh (Vanilla)                          |     |        |         |        |
| 3         | Install zsh & a few extra items (no Oh-My-Zsh) |     |        |         |        |
| 4         | Install zsh & Oh-My-ZSH                        |     |        |         |        |
| 5         | Install zsh & Zap Plugin Manager               |     |        |         | Pass   |

- \1 - needs testing

### System Tools

| Menu Item | Menu Task                       |     | Stable | Testing | Devuan    |
| --------- | ------------------------------- | --- | ------ | ------- | --------- |
| 1         | [Sub-Menu] Download Ventoy      |     | ---    | ---     | ---       |
| 2         | [Debian/Ubuntu] Install deb-get |     |        |         | Fail - \4 |
| 3         | [OpenSUSE ] Install opi \3      |     | N/A    | N/A     | N/A       |
| 4         | Install-Extract Etcher          |     |        |         | Pass      |
| 5         | Intel Microcode support         |     |        |         | Pass      |
| 6         | Java support                    |     |        |         |           |
| 7         | Stacer                          |     |        |         | Pass      |
| 8         | ImageLauncher                   |     |        |         | Fail \2   |
| 9         | Czhawka 4.1.0 \*                |     |        |         |           |

- WHERE IS build essentials at?

- \* (newer versions need gtk4 packages, which not all distros have)

- \2 - nothing displayed
- \3 - Open Package Installer
- \4 - because it's not official Debian?- not going to work with Devuan |

#### Ventoy Submenu

| Menu Item | Menu Task      |     | Stable | Testing | Devuan |
| --------- | -------------- | --- | ------ | ------- | ------ |
| 1         | Ventoy ISO     |     |        |         | Pass   |
| 2         | Ventoy Tarball |     |        |         | Pass   |
