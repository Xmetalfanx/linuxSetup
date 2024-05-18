# Main Tasks for RPM Distros, Fedora and OpenSuse

## Main Tasks - Test Redo - May 2024

- Result - Fedora 40 detected and supported = pass 

### Distro

#### Fedora

| Menu Item | Menu Tasks                  |     | Fedora 39 | Fedora 40 |
| --------- | --------------------------- | --- | --------- | --------- |
| 1         | Update System               |     |           | Pass      |
| C         | Install Codecs              |     |           | Pass      |
| R         | Install third party repos\* |     |           | Pass      |


---


| Menu Item | Menu Tasks                                      |     | Fedora 39 | Fedora 40 |
| --------- | ----------------------------------------------- | --- | --------- | --------- |
| 1         | [Sub-Menu] Individual tasks from Fedy           |     | ---       | ---       |
| 2         | Add Fedy                                        |     |           | Pass      |
| 3         | Perform Common Fedy Tasks (wo/ installing Fedy) |     |           |           |

- #3 here is a batch option of what is listed in #1's menu 

| Menu Item | Menu Tasks                |     | Fedora 39 | Fedora 40                             |
| --------- | ------------------------- | --- | --------- | ------------------------------------- |
| 1         | Install Archive Support   |     |           | pass -installs 1-by-1, can i combine? |
| 2         | Install Microsoft Fonts   |     |           | Fail - no package of that name        |
| 3         | Install Codecs            |     |           | N/A                                   |
| 4         | Install Theme Engines     |     |           | Pass                                  |
| A         | Complete All Listed Tasks |     |           |                                       |

- isn't A redundent from #3 on the last (parent) menu? 
- these tasks PASS when used IN fedy on Fedora 40 ... i need to investigate 
---

- Third Party Repo Info

  - Fedora
    - Both RPM Fusion Repos
---

## Software Menus

### Common/Various Software

| Menu Item | Menu Task                |     | Fedora 39 | Fedora 40 |
| --------- | ------------------------ | --- | --------- | --------- |
| 1         | Add Common Software      |     |           | Pass      |
|           | Build Essential Packages |     |           | Pass      |
---
### Web Browsers

|     | Menu Items              |     | Fedora 39            | Fedora 40 |
| --- | ----------------------- | --- | -------------------- | --------- |
| 1   | Google Chrome           |     |                      | Pass      |
| 2   | [Sub-Menu] Chromium     |     | ---                  | ---       |
| 3   | Ungoogled Chromium (FP) |     |                      |           |
| 4   | [Sub-Menu] Firefox      |     | ---                  | ---       |
| 5   | Librewolf (FP)          |     |                      |           |
| 6   | Vivaldi                 |     | redo in next release |           |

- did i forget to refresh repos on vivaldi step?

#### Chromium Sub-Menu

|     | Menu Items                                        |     | Fedora 39 | Fedora 40 |
| --- | ------------------------------------------------- | --- | --------- | --------- |
| 1   | Download Chromium from your distro's default repo |     |           | Pass      |
| 2   | Install Chromium Flatpak                          |     |           |           |

#### Firefox Sub-Menu

|     | Menu Items                           |     | Fedora 39 | Fedora 40 |
| --- | ------------------------------------ | --- | --------- | --------- |
| 1   | from your distro's default repo      |     |           |           |
| 2   | LATEST Firefox Archive from Mozilla? |     |           |           |
| 3   | Install Firefox Flatpak              |     |           |           |
| 4   | (\*) Remove Firefox Snap, PPA        |     | N/A       | N/A       |

- \* (for Ubuntu)

---

##### Multimedia Programs

| Menu Item | Menu Task                |     | Fedora 39 | Fedora 40                              |
| --------- | ------------------------ | --- | --------- | -------------------------------------- |
| 1         | [Sub-Menu] makeMKV       |     |           |                                        |
| 2         | Audio Recorder           |     |           |                                        |
| 3         | XnViewMP                 |     |           |                                        |
| 4         | DeadBeef Media Player    |     |           | Pass - including adding RPMFusion      |
| 5         | Celluloid/Gnome-Mpv      |     |           |                                        |
| 6         | Strawberry Media Player  |     | ----      | Fails (redoing in next release anyway) |
| 7         | Tiny Media Manager       |     |           | Pass                                   |
| 8         | MediaElch AppImage       |     |           |                                        |
| 9         | Tenacity (Audacity Fork) |     |           |                                        |
| 10        | ANoise (Ubuntu only)     |     | ---       | ---                                    |
| 11        | ocenAudio                |     |           | Pass                                   |
| K         | MakeMKV Key              |     |           |                                        |

- \1 - Almost pass ... not SEEING created menu on Mate, passes completely works and appears on xfce 

---

##### Coding/Office/Productivity Programs

- Atom Devs are not signing the rpm (that is what the zypper warning is about)... no way of installing the RPM gets around this fact ... just hit I **ignore** at that step and it will install just fine


| Menu Item | Menu Task         |     | Fedora 39 | Fedora 40 |
| --------- | ----------------- | --- | --------- | --------- |
| 1         | Atom Editor       |     |           | Pass      |
| 2         | vscode            |     |           | Pass      |
| 3         | VSCodium          |     |           | Pass      |
| 4         | GitKraken         |     |           | Pass      |
| 5         | Typora            |     |           | N/A       |
| 6         | Micro Text Editor |     |           | Pass      |

- Typora has an official Flatpak but my prior code was only snap related and now this is N/A since i removed snap support

---

##### Shells 
| Menu Item | Menu Task                                  |     | Fedora 39 | Fedora 40 |
| --------- | ------------------------------------------ | --- | --------- | --------- |
| 1         | Install fish, & Oh-My-Fish                 |     |           | Pass      |
| 2         | Install zsh (Vanilla)                      |     |           |           |
| 3         | Install zsh & a extra items (no Oh-My-Zsh) |     |           |           |
| 4         | Install zsh & Oh-My-ZSH                    |     |           |           |
| 5         | Install zsh & Zap Plugin Manager           |     |           | Pass      |



### System Tools

| Menu Item | Menu Task                       |     | Fedora 39 | Fedora 40                           |
| --------- | ------------------------------- | --- | --------- | ----------------------------------- |
| 1         | [Sub-Menu] Download Ventoy      |     | ---       | ---                                 |
| 2         | [Debian/Ubuntu] Install deb-get |     |           |                                     |
| 3         | [OpenSUSE ] Install opi \3      |     | N/A       | N/A                                 |
| 4         | Install-Extract Etcher          |     |           | no menu (even xfce)                 |
| 5         | Intel Microcode support         |     |           | Pass                                |
| 6         | Java support                    |     |           |                                     |
| 7         | Stacer                          |     |           | Pass                                |
| 8         | ImageLauncher                   |     |           | Fail - last release version in 2020 |
| 9         | Czhawka 4.1.0 \*                |     |           |                                     |

- WHERE IS build essentials at?

---

## Theming Installation

- What themes are available for what distro and what "Desktop"/Window Manager makes this hard to test at times


##### Theming related

| Menu Item | Menu Items             |     | Fedora 39 | Fedora 40 |
| --------- | ---------------------- | --- | --------- | --------- |
| 1         | Mint Themeing Sub-menu | --- | ----      | ----      |
| 2         | Yaru Themeing Sub-menu | --- | ----      | ----      |
| 3         | Install Adapta         |     |           | removed   |
| 4         | Install Arc            |     |           | Pass      |
| 5         | Install Numix          |     |           | Pass      |
| 6         | Install Plata          |     |           | Removed   |
| 7         | Install Breeze         |     |           | Pass      |
| A         | All Listed Themes      |     |           |           |
| I         | Install Misc Icons     |     |           | Pass      |
| T         | Install Misc Themes    |     |           | Pass      |

- \1 - Due to being EOL packages maybe removed

#### Mint Theming Sub-menu

| Menu Item | Menu Items                               |     | Fedora 39 | Fedora 40 |
| --------- | ---------------------------------------- | --- | --------- | --------- |
| 1         | Mint Themes - (from distro repos)        | --- |           | Pass      |
| 2         | Current Mint themes - from Mint's Github |     |           |           |
| 3         | Legacy Mint themes - from Mint's Github  |     |           |           |
| 4         | Mint-Y Icons - from Mint's Github        |     |           |           |
| 5         | MintYZ themes - from github              |     |           |           |

#### Yaru Theming Sub-menu

| Menu Item | Menu Items                         |     | Fedora 39 | Fedora 40                                 |
| --------- | ---------------------------------- | --- | --------- | ----------------------------------------- |
| 1         | Yaru Theming - (from distro repos) | --- |           | Same issue as below                       |
| 2         | YaruColors - from Github           |     |           | Fail - cant find .icon and .theme folders |

---