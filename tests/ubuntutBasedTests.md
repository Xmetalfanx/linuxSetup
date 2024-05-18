# Ubuntu (/Ubuntu spins/favors)

- Tests done on the BASE mentioned .. not necessarily "stock" Ubuntu

## Common Tasks

| Menu Item | Menu Tasks     |     | Ubuntu 20.04 | Ubuntu 22.04 | Ubuntu 24.04 |
| --------- | -------------- | --- | ------------ | ------------ | ------------ |
| 1         | Update System  |     |              |              | Pass         |
| C         | Install Codecs |     |              |              | Pass         |

---

## Specific spins tasks

### Elementary

#### InstallSoftwareAdditions Tasks

- These use to be more specific to ElementaryOS only but i renamed things to be more broad (after all Gnome Tweaks, gdebi, and synaptic can be added to other Ubuntu bases)

| Menu Tasks                                                     | Test Results |
| -------------------------------------------------------------- | ------------ |
| (not included yet) Install elementaryTweakTool                 |              |
| Installing PPA Support, Gnome Tweak Tools, GDebi, and Synaptic |              |

---

## Software


## Theming Installation

### Theming related

| Menu Item | Menu Items             |     | Ubuntu 20.04 | Ubuntu 22.04 | Ubuntu 24.04 |
| --------- | ---------------------- | --- | ------------ | ------------ | ------------ |
| 1         | Mint Themeing Sub-menu | --- | ----         | ----         | ----         |
| 2         | Yaru Themeing Sub-menu | --- | ----         | ----         | ----         |
| 3         | Install Adapta         |     |              |              |              |
| 4         | Install Arc            |     |              |              |              |
| 5         | Install Numix          |     |              |              |              |
| 6         | Install Plata          |     |              |              |              |
| 7         | Install Breeze         |     |              |              |              |
| A         | All Listed Themes      |     |              |              |              |
| I         | Install Misc Icons     |     |              |              |              |
| T         | Install Misc Themes    |     |              |              |              |

- \1 why is numix pulling in Cinnamon?

#### Mint Theming Sub-menu

| Menu Item | Menu Items                          |     | Ubuntu 20.04 | Ubuntu 22.04 | Ubuntu 24.04 |
| --------- | ----------------------------------- | --- | ------------ | ------------ | ------------ |
| 1         | Mint Themes - (from distro repos)   | --- |              |              |              |
| 2         | Current Mint themes - Mint's Github |     |              |              |              |
| 3         | Legacy Mint themes - Mint's Github  |     |              |              |              |
| 4         | Mint-Y Icons - from Mint's Github   |     |              |              |              |
| 5         | MintYZ themes - from github         |     |              |              |              |

#### Yaru Theming Sub-menu

| Menu Item | Menu Items                         |     | Ubuntu 20.04 | Ubuntu 22.04 | Ubuntu 24.04 |
| --------- | ---------------------------------- | --- | ------------ | ------------ | ------------ |
| 2         | YaruColors - from Github           |     |              |              |              |
| 1         | Yaru Theming - (from distro repos) | --- |              | ----         |              |

---

- Third Party Repo Info
  - Pacman Repos

---

## Software Menus


##### Common/Various Software

| Menu Item | Menu Task           |     | Ubuntu 20.04 | Ubuntu 22.04 | Ubuntu 24.04 |
| --------- | ------------------- | --- | ------------ | ------------ | ------------ |
| 1         | Add Common Software |     |              |              | Pass         |

---
##### Web Browsers

### Browser Installer

|     | Menu Items              |     | Ubuntu 20.04 | Ubuntu 22.04 | Ubuntu 24.04                 |
| --- | ----------------------- | --- | ------------ | ------------ | ---------------------------- |
| 1   | Google Chrome           |     |              |              | Pass                         |
| 2   | [Sub-Menu] Chromium     |     | ---          | ---          | ---                          |
| 3   | Ungoogled Chromium (FP) |     |              |              |                              |
| 4   | [Sub-Menu] Firefox      |     | ---          | ---          | ---                          |
| 5   | Librewolf (FP)          |     |              |              | Pass (w/ adding FP support ) |
| 6   | Vivaldi                 |     |              |              | redo in next release         |


#### Chromium Sub-Menu

|     | Menu Items                         |     | Ubuntu 20.04 | Ubuntu 22.04 | Ubuntu 24.04 |
| --- | ---------------------------------- | --- | ------------ | ------------ | ------------ |
| 1   | Download Chromium from distro repo |     |              |              |              |
| 2   | Install Chromium Flatpak           |     |              |              |              |

#### Firefox Sub-Menu

|     | Menu Items                           |     | Ubuntu 20.04 | Ubuntu 22.04 | Ubuntu 24.04 |
| --- | ------------------------------------ | --- | ------------ | ------------ | ------------ |
| 1   | from your distro's default repo      |     |              |              |              |
| 2   | LATEST Firefox Archive from Mozilla? |     |              |              |              |
| 3   | Install Firefox Flatpak              |     |              |              |              |
| 4   | (\*) Remove Firefox Snap, PPA        |     |              |              |              |

- \* (for Ubuntu)

---

##### Multimedia Programs

| Menu Item | Menu Task                |     | Ubuntu 20.04 | Ubuntu 22.04 | Ubuntu 24.04       |
| --------- | ------------------------ | --- | ------------ | ------------ | ------------------ |
| 1         | [Sub-Menu] makeMKV       |     |              |              |                    |
| 2         | Audio Recorder           |     |              |              |                    |
| 3         | XnViewMP                 |     |              |              | Pass               |
| 4         | DeadBeef Media Player    |     |              |              | Pass               |
| 5         | Celluloid/Gnome-Mpv      |     |              |              | Fail - patch added |
| 6         | Strawberry Media Player  |     | ----         | ---          | ----               |
| 7         | Tiny Media Manager       |     |              |              |                    |
| 8         | MediaElch AppImage       |     |              |              |                    |
| 9         | Tenacity (Audacity Fork) |     |              |              |                    |
| 10        | ANoise (Ubuntu only)     |     |              |              |                    |
| 11        | ocenAudio                |     |              |              | Pass               |
| K         | MakeMKV Key              |     |              |              |                    |

---

##### Coding/Office/Productivity Programs


| Menu Item | Menu Task         |     | Ubuntu 20.04 | Ubuntu 22.04 | Ubuntu 24.04 |
| --------- | ----------------- | --- | ------------ | ------------ | ------------ |
| 1         | Atom Editor       |     |              |              |              |
| 2         | vscode            |     |              |              | Pass         |
| 3         | VSCodium          |     |              |              | Pass         |
| 4         | GitKraken         |     |              |              | Pass         |
| 5         | Typora            |     | N/A          | N/A          | N/A          |
| 6         | Micro Text Editor |     |              |              | Pass         |

- Typora has an official Flatpak but my prior code was only snap related and now this is N/A since i removed snap support

---

##### Shells
| Menu Item | Menu Task                                |     | 20.04 | 22.04 | 24.04 |
| --------- | ---------------------------------------- | --- | ----- | ----- | ----- |
| 1         | Install fish, & Oh-My-Fish               |     |       |       |       |
| 2         | Install zsh (Vanilla)                    |     |       |       |       |
| 3         | Install zsh & extra items (no Oh-My-Zsh) |     |       |       |       |
| 4         | Install zsh & Oh-My-ZSH                  |     |       |       |       |
| 5         | Install zsh & Zap Plugin Manager         |     |       |       |    Pass   |


### System Tools

| Menu Item | Menu Task                       |     | Ubuntu 20.04 | Ubuntu 22.04 | Ubuntu 24.04 |
| --------- | ------------------------------- | --- | ------------ | ------------ | ------------ |
| 1         | [Sub-Menu] Download Ventoy      |     | ---          | ---          | ---          |
| 2         | [Debian/Ubuntu] Install deb-get |     |              |              |              |
| 3         | [OpenSUSE] Install opi \3       |     |              |              |              |
| 4         | Install-Extract Etcher          |     |              |              |              |
| 5         | Intel Microcode support         |     |              |              |              |
| 6         | Java support                    |     |              |              |              |
| 7         | Stacer                          |     |              |              | Pass         |
| 8         | ImageLauncher                   |     |              |              | Fail?        |
| 9         | Czhawka 4.1.0 \*                |     |              |              |              |
|           | Build Essential Packages        |     |              |              | Pass         |



- WHERE IS build essentials at?

---

## PPA Menu


| Menu Item | Menu Task                     |     | Ubuntu 20.04 | Ubuntu 22.04 | Ubuntu 24.04 |
| --------- | ----------------------------- | --- | ------------ | ------------ | ------------ |
| 1         | [Multimedia] ANoise           |     |              |              |              |
| 2         | [Multimedia] Audio-Recorder   |     |              |              |              |
| 3         | [Multimedia] MakeMKV          |     |              |              |              |
| 4         | [Multimedia] SMPlayer         |     |              |              |              |
| 5         | [Multimedia] Strawberry       |     |              |              |              |
| 6         | [Productivity] LibreOffice    |     |              |              |              |
| 7         | [System-Tools] Boot-Repair    |     |              |              |              |
| 8         | [System-Tools] Pantheon Tweak |     |              |              |              |
| 9         | Kubuntu Backport PPA          |     |              |              |              |


