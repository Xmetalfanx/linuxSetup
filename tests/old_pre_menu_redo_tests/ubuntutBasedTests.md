# Ubuntu (/Ubuntu spins/favors)

- Tests done on the BASE mentioned .. not necessarily "stock" Ubunutu

## Common Tasks

| Menu Tasks     | Ubuntu 16.04 LTS | Ubuntu 18.04 LTS | Ubuntu 19.10     |
| -------------- | ---------------- | ---------------- | ---------------- |
| Install Codecs | Not Coded/Tested | Not Coded/Tested | Not Coded/Tested |
| Update System  | Not Tested       | Pass             | ???              |

---

## Specific spins tasks

### ElementaryOS Tasks

| Menu Tasks                                                     | Test Results |
| -------------------------------------------------------------- | ------------ |
| (not included yet) Install elementaryTweakTool                 | Not Tested   |
| Installing PPA Support, Gnome Tweak Tools, GDebi, and Synaptic | Not Tested   |

---

## Software

### Common/Various Software

| Menu Item | Menu Task                | Ubuntu 16.04 | Ubuntu 18.04 | Ubuntu 19.10 |
| --------- | ------------------------ | ------------ | ------------ | ------------ |
| 1         | Add Common Software      | Not Tested   | Pass         | Not Tested   |
| 6         | Build Essential Packages | Not Tested   | Pass         | Not Tested   |
| 7         | Etcher                   | Not Tested   | Pass         | Not Tested   |
| 10        | Intel-Microcode package  | Not Tested   | Pass         | Pass         |
| 11        | Java Support             | Not Tested   | Pass         | Not Tested   |

- The Wine menu item here, takes you to a submenu (see the Wine test table, below)... so that is why it is no longer here ... it's just a link to another menu

---

# Wine Related Install

| Wine install                | 18.04 Bionic (A) | 19.10 Eoan | Linux Mint 19.3 |
| --------------------------- | ---------------- | ---------- | --------------- |
| Default Repo Install        | Pass             | Not Tested | Not Tested      |
| Install via WineHQ Repo/PPA | Not Tested       | Not Tested | Not Tested      |

(A) The exact distro I have tested is a fresh install of Lubuntu 18.03.x ... right now it's just looping back to this same menu

(note to self: maybe setup a VM to test 19.10 with 20.04 coming out soon AND my only 19.10 install already having Wine)

---

### Multimedia Apps

| Menu Item | Menu Tasks              |     | Ubuntu 16.04 LTS | Ubuntu 18.04 LTS | Ubuntu 20.04 |
| --------- | ----------------------- | --- | ---------------- | ---------------- | ------------ |
| 1         | makeMKV                 |     | Not Tested       | Pass             |              |
| 2         | Audio Recorder          |     | Not Tested       | Not Tested       |              |
| 3         | XnViewMP                |     | Not Tested       | Pass             |              |
| 4         | DeadBeef Media Player   |     | Not Tested       | Pass             |              |
| 5         | Celluloid/Gnome-Mpv     |     | Not Tested       | Pass             |              |
| 6         | Strawberry Media Player |     | Not Tested       | Pass             |              |
| 7         | Tiny Media Manager      |     | Not Tested       | Pass             |              |

- listing TMM as a fail for now since java is NOT DETECTED but DOESN'T install ... issue is ... it's not that it doesn't work ... I just haven't code "install java" for Ubuntu base yet ... it's not done yet

- Strawberry (since there are DEBs for every Ubuntu and Debian branch vs "one for Debian" and "one for Ubuntu")... for now I have decided to use the AppImage for Ubuntu 19.10

### Productivity/Office Apps

| Menu Item | Menu Tasks  |     | Ubuntu 16.04 LTS | Ubuntu 18.04 LTS | Ubuntu 20.04 |
| --------- | ----------- | --- | ---------------- | ---------------- | ------------ |
| 1         | Atom Editor |     | Not Tested       | Pass             |              |
| 2         | vscode      |     | Not Tested       | Pass             |              |
| 3         | GitKraken   |     | Not Tested       | Pass             |              |
| 4         | Typora      |     | Not Tested       | Not Tested       |              |

---

N/A = Not Applicable

Testing these on all the Ubuntu flavors and variants (Linux Lite, ElementaryOS, ..etc) will be a problem for me... where it says "ubuntu" the test IS FOR Ubuntu

---

### Web Browsers

| Menu Item | Menu Tasks    |     | Ubuntu 16.04 LTS | Ubuntu 18.04 LTS |
| --------- | ------------- | --- | ---------------- | ---------------- |
| 1         | Google Chrome |     | Not Tested       | Pass             |
| 2         | Chromium      |     | Not Tested       | Pass             |
| 3         | Firefox       |     | Not Tested       | Pass             |
| 4         | Vivaldi       |     | Not Tested       | Pass             |

---

## Theming Menu

- for theming i am focusing testing on the official flavors vs "theming on Linux Lite" (like Xubuntu anyway), or Linux Mint

| Menu Item | Menu Task              |     | Ubuntu 16.04 | Ubuntu 18.04   |
| --------- | ---------------------- | --- | ------------ | -------------- |
| 1         | Adapta Theming         |     | Not Tested   | Fail           |
| 2         | Arc Theming            |     | Not Tested   | Pass           |
| 3         | Mint-Y Theming         |     | Not Tested   | Not Coded/Fail |
| 4         | Numix Theming          |     | Not Tested   | Pass           |
| 5         | Plata Theming          |     | Not Tested   | Fail           |
| 6         | Yaru Theming           |     | Not Tested   | Not Tested     |
| 7         | Breeze Theming         |     | Not Tested   | Not Tested     |
| A         | \*\*All Listed Theming |     | Not Tested   | Not Tested     |
| I         | misc Icons             |     | Not Tested   | Fail           |
| T         | misc Themes            |     | Not Tested   | Pass           |

- Plata's PPA gets added but the theme doesn't install
