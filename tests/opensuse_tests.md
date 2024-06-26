# Main Tasks for RPM Distros, Fedora and OpenSuse

## Main Tasks - Test Redo

#### OpenSuse

| Menu Item | Menu Tasks                  |     | Opensuse 15.5 | Opensuse Leap 15.6 | OpenSuse TW |
| --------- | --------------------------- | --- | ------------- | ------------------ | ----------- |
| 1         | Update System               |     |               | Pass               |             |
| C         | Install Codecs              |     |               | Pass               |             |
| R         | Install third party repos\* |     |               | Pass               |             |

---

## Theming Installation

- What themes are available for what distro and what "Desktop"/Window Manager makes this hard to test at times


##### Theming related

| Menu Item | Menu Items             |     | Leap 15.5                  | Leap 15.6       | Tumbleweed |
| --------- | ---------------------- | --- | -------------------------- | --------------- | ---------- |
| A         | All Listed Themes      |     |                            |                 |            |
| 1         | Mint Themeing Sub-menu | --- | ----                       | ----            | ----       |
| 2         | Yaru Themeing Sub-menu | --- | ----                       | ----            | ----       |
| T         | Install Misc Themes    |     | N/A (nothing for OpenSUSE) | N/A (not coded) |            |
| 3         | Install Adapta         |     | Pass                       | Pass            |            |
| 4         | Install Arc            |     |                            | Pass            |            |
| 6         | Install Breeze         |     | Pass                       | Pass            |            |
| I         | Install Misc Icons     |     | Pass                       | Pass            |            |
| 5         | Install Numix          |     | Passes \1                  | Pass \1         |            |

- \1 why is numix pulling in Cinnamon?

#### Mint Theming Sub-menu

| Menu Item | Menu Items                               |     | Leap 15.5 | Leap 15.6 | Tumbleweed |
| --------- | ---------------------------------------- | --- | --------- | --------- | ---------- |
| 1         | Mint Themes - (from distro repos)        | --- | Pass      | Pass      |            |
| 2         | Current Mint themes - from Mint's Github |     |           |           |            |
| 3         | Legacy Mint themes - from Mint's Github  |     |           |           |            |
| 4         | Mint-Y Icons - from Mint's Github        |     |           |           |            |
| 5         | MintYZ themes - from github              |     |           | Fail - \1 |            |

- \1 sassc package not in default repos but in an experimental or community repo

#### Yaru Theming Sub-menu

| Menu Item | Menu Items                         |     | Leap 15.5 | Leap 15.6 | Tumbleweed |
| --------- | ---------------------------------- | --- | --------- | --------- | ---------- |
| 2         | YaruColors - from Github           |     |           |           |            |
| 1         | Yaru Theming - (from distro repos) | --- | Fail \1   | fail - \1 |            |

- \1 Fails to detect .icon dir 

---

- Third Party Repo Info
  - Pacman Repos

---

## Software Menus


##### Common/Various Software

| Menu Item | Menu Task                |     | OpensuseLeap 15.5 | Opensuse Leap 15.6  | Opensuse TW |
| --------- | ------------------------ | --- | ----------------- | ------------------- | ----------- |
| 1         | Add Common Software      |     | Pass              | Pass                |             |
| 6         | Build Essential Packages |     | Pass              | Pass - preinstalled |             |

---
##### Web Browsers

### Browser Installer

|     | Menu Items              |     | Leap 15.5 | Leap 15.6 | Tumbleweed           |
| --- | ----------------------- | --- | --------- | --------- | -------------------- |
| 1   | Google Chrome           |     |           |           | Pass                 |
| 2   | [Sub-Menu] Chromium     |     | ---       | ---       | ---                  |
| 3   | Ungoogled Chromium (FP) |     |           |           |                      |
| 4   | [Sub-Menu] Firefox      |     | ---       | ---       | ---                  |
| 5   | Librewolf (FP)          |     |           |           |                      |
| 6   | Vivaldi                 |     |           | Pass      | redo in next release |

- did i forget to refresh repos on vivaldi step?

#### Chromium Sub-Menu

|     | Menu Items                                        |     | Leap 15.5 | Leap 15.6 | Tumbleweed |
| --- | ------------------------------------------------- | --- | --------- | --------- | ---------- |
| 1   | Download Chromium from your distro's default repo |     | Pass      |           |            |
| 2   | Install Chromium Flatpak                          |     |           |           |            |

#### Firefox Sub-Menu

|     | Menu Items                           |     | Leap 15.5 | Leap 15.6    | Tumbleweed |
| --- | ------------------------------------ | --- | --------- | ------------ | ---------- |
| 1   | from your distro's default repo      |     |           | preinstalled |            |
| 2   | LATEST Firefox Archive from Mozilla? |     |           |              |            |
| 3   | Install Firefox Flatpak              |     |           |              |            |
| 4   | (\*) Remove Firefox Snap, PPA        |     | N/A       | N/A          | N/A        |

- \* (for Ubuntu)


---

##### Multimedia Programs

| Menu Item | Menu Task                |     | Leap 15.5 | Leap 15.6 | Tumbleweed |
| --------- | ------------------------ | --- | --------- | --------- | ---------- |
| 1         | [Sub-Menu] makeMKV       |     |           |           |            |
| 2         | Audio Recorder           |     |           |           |            |
| 3         | XnViewMP                 |     | Pass      | Pass      |            |
| 4         | DeadBeef Media Player    |     | Pass      | Pass      |            |
| 5         | Celluloid/Gnome-Mpv      |     | Pass      | Pass      |            |
| 6         | Strawberry Media Player  |     |           | Pass      |            |
| 7         | Tiny Media Manager       |     | Pass      |           |            |
| 8         | MediaElch AppImage       |     | Pass      |           |            |
| 9         | Tenacity (Audacity Fork) |     |           |           |            |
| 10        | ANoise (Ubuntu only)     |     | ---       | ---       | ----       |
| 11        | ocenAudio                |     | Pass      |           |            |
| K         | MakeMKV Key              |     |           |           |            |

---

##### Coding/Office/Productivity Programs

- Atom Devs are not signing the rpm (that is what the zypper warning is about)... no way of installing the RPM gets around this fact ... just hit I **ignore** at that step and it will install just fine


| Menu Item | Menu Task         |     | Leap 15.5 | Leap 15.6 | Tumbleweed |
| --------- | ----------------- | --- | --------- | --------- | ---------- |
| 1         | Atom Editor       |     | Pass      |           |            |
| 2         | vscode            |     | Pass      |           |            |
| 3         | VSCodium          |     | Pass      | Pass      |            |
| 4         | GitKraken         |     | Pass      | Pass      |            |
| 5         | Typora            |     | N/A       | N/A       | N/A        |
| 6         | Micro Text Editor |     | Pass      | Pass      |            |

- Typora has an official Flatpak but my prior code was only snap related and now this is N/A since i removed snap support

---

##### Shells 
| Menu Item | Menu Task                                  |     | Leap 15.5 | Leap 15.6 | Tumbleweed |
| --------- | ------------------------------------------ | --- | --------- | --------- | ---------- |
| 1         | Install fish, & Oh-My-Fish                 |     |           | Pass      |            |
| 2         | Install zsh (Vanilla)                      |     |           |           |            |
| 3         | Install zsh & a extra items (no Oh-My-Zsh) |     |           |           |            |
| 4         | Install zsh & Oh-My-ZSH                    |     |           |           |            |
| 5         | Install zsh & Zap Plugin Manager           |     | Pass      | Pass      |            |


### System Tools

| Menu Item | Menu Task                       |     | Leap 15.5                   | Leap 15.6                      | Tumbleweed |
| --------- | ------------------------------- | --- | --------------------------- | ------------------------------ | ---------- |
| 1         | [Sub-Menu] Download Ventoy      |     | ---                         | ---                            | ---        |
| 2         | [Debian/Ubuntu] Install deb-get |     |                             |                                |            |
| 3         | [OpenSUSE] Install opi \3       |     |                             | Pass                           |            |
| 4         | Install-Extract Etcher          |     |                             |                                |            |
| 5         | Intel Microcode support         |     |                             | Fail?/Pass - already installed |            |
| 6         | Java support                    |     | Preinstalled - seems a pass |                                |            |
| 7         | Stacer                          |     |                             |                                |            |
| 8         | ImageLauncher                   |     |                             | Fail (I think)                 |            |
| 9         | Czhawka                         |     |                             |                                |            |

- WHERE IS build essentials at?
