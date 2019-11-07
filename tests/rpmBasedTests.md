# Main Tasks for RPM Distros, Fedora and OpenSuse

## Main Tasks

### Fedora

| Menu Item | Menu Tasks                  |     | Fedora 29 | Fedora 30 | Fedora 31 |
| --------- | :-------------------------- | --- | --------- | --------- | --------- |
| 1         | Update System               |     | Pass      | Pass      |           |
| C         | Install Codecs              |     | Pass      | Pass      |           |
| R         | Install third party repos\* |     | Pass      | Pass      |           |

### OpenSuse

| Menu Item | Menu Tasks                  |     | Opensuse 15 | Opensuse Leap 15.1 | OpenSuse TW |
| --------- | --------------------------- | --- | ----------- | ------------------ | ----------- |
| 1         | Update System               |     | Pass        | Pass               | Pass        |
| C         | Install Codecs              |     | Pass        | Pass               | Not Tested  |
| R         | Install third party repos\* |     | Pass        | Pass               | Fail        |

---

## Theming Installation

- What themes are available for what distro and what "Desktop"/Window Manager makes this hard to test at times

## Fedora

| Menu Item | Menu Items          |     | Fedora 29  | Fedora 30  | Fedora 31 |
| --------- | ------------------- | --- | ---------- | ---------- | --------- |
| 1         | Adapta Theming      |     | Pass       | Pass       |           |
| 2         | Arc Theming         |     | Pass       | Pass       |           |
| 3         | Mint-y Theming      |     | Pass       | Pass       |           |
| 4         | Numix Theming       |     | Pass       | Pass       |           |
| 5         | Plata Theming       |     | Pass       | Pass       |           |
| 6         | Yaru Theming        |     | Not Tested | Not Tested |           |
| 7         | Breeze Theming      |     | Not Tested | Not Tested |           |
| A         | All Listed Themes   |     | Pass       | Fail       |           |
| I         | Install Misc Icons  |     | Pass       | Pass       |           |
| T         | Install Misc Themes |     | Pass       | Fail       |           |

## OpenSuse

| Menu Item | Menu Items             |     | Opensuse Leap 15 | OpenSuse Leap 15.1 | OpenSuse Tw |
| --------- | ---------------------- | --- | ---------------- | ------------------ | ----------- |
| 1         | Install Adapta Theme   |     | Fail             | Pass               | Pass        |
| 2         | Install Arc Theme      |     | Fail             | Fail               | Pass        |
| 3         | Install Mint-Y Theme   |     | Not Tested       | Not Tested         | Pass        |
| 4         | Install Numix Theme    |     | Pass             | Not Tested         | Pass        |
| 5         | Install Plata Theme    |     | Fail/not coded   | Not Tested         | Pass        |
| 6         | Install Yaru Theming   |     | Not Tested       | Not Tested         | Pass        |
| 7         | Install Breeze Theming |     | Not Tested       | Not Tested         |             |
| A         | All Listed Themes      |     | Not Tested       | Not Tested         | Not Tested  |
| I         | Install Misc Icons     |     | Not Coded        | Not Coded          | Pass        |
| T         | Install Misc Themes    |     | Fail             | Pass               | Not Tested  |

---

- Third Party Repo Info

  - Fedora

    - Both RPM Fusion Repos

  - OpenSuse

    - Pacman Repos

\*\*\* I REFORMATTED the OpenSUSE 15.0 VM I had when 15.1 came out ... if something says pass on 15.1 and fail on 15.0, there is a good change that 15.0's code is fixed too, but I will not change the status until i know for sure

---

## Software Menus

### Fedora

#### Common/Various Software

| Menu Item | Menu Task                |     | Fedora 29  | Fedora 30  | Fedora 31  |
| --------- | ------------------------ | --- | ---------- | ---------- | ---------- |
| 1         | Add Common Software      |     | Pass       | Pass       | Not Tested |
| 10        | Install Intel-Microcode  |     | Not Tested | Not Tested | Not Tested |
| 11        | Java Support             |     | Not Tested | Not Tested | Not Tested |
| 6         | Build Essential Packages |     | Pass       | Pass       | Not Tested |
| 7         | Etcher                   |     | Pass       | Pass       | Not Tested |
| 8         | Fish and Oh-my-Fish      |     |            |            | Not Tested |
| 9         | Wine and/or PlayonLinux  |     | Not Tested | Pass       | Not Tested |

---

#### Multimedia Programs

| Menu Item | Menu Task               |     | Fedora 29  | Fedora 30                     |
| --------- | ----------------------- | --- | ---------- | ----------------------------- |
| 1         | makeMKV                 |     | Not Tested | Pass                          |
| 2         | Audio Recorder          |     | Not Tested | Not Tested                    |
| 3         | XnViewMP                |     | Pass       | Fail\*                        |
| 4         | DeadBeef Media Player   |     | Not Tested | Pass                          |
| 5         | Celluloid/Gnome MPV     |     | Not Tested | Pass                          |
| 6         | Strawberry Media Player |     | Not Tested | Pass                          |
| 7         | Tiny Media Manager      |     | Pass       | Fail - Downloads, Doesn't run |
| 8         | MediaElch               |     |            |                               |

- TMM issue on Fedora - 99.99999% sure it's not installing java first which TMM needs
- Nov 2019 Update: this issue I noted may be solved with new Java install method for Fedora (untested at the time of typing this)

#### Coding/Office/Productivity Programs

- Atom Devs are not signing the rpm (that is what the zypper warning is about)... no way of installing the RPM gets around this fact ... just hit I (ignore) at that step and it will install just fine

| Menu Item | Menu Task   |     | Fedora 29  | Fedora 30 | Fedora 31 |
| --------- | ----------- | --- | ---------- | --------- | --------- |
| 1         | Atom Editor |     | Fail\*     | Pass      |           |
| 2         | vscode      |     | Pass       | Pass      |           |
| 3         | Git Kraken  |     | Not Tested | Pass      |           |
| 4         | Typora      |     | Pass       | Pass      |           |

*Upgraded to Fedora 30 with a fresh install before I could test again

---

#### Web Browser

| Menu Item | Menu Items    |     | Fedora 29    | Fedora 30 | Fedora 31 |
| --------- | ------------- | --- | ------------ | --------- | --------- |
| 1         | Google Chrome |     | Fail         | Pass      |           |
| 2         | Chromium      |     | Pass         | Pass      |           |
| 3         | Firefox       |     | Preinstalled | Pass      |           |
| 4         | Vivaldi       |     | Fail         | Pass      |           |

---

### Opensuse

#### Common/Various Software

| Menu Item | Menu Task                |     | OpensuseLeap 15 | OpensuseLeap 15.1 | Opensuse TW |
| --------- | ------------------------ | --- | --------------- | ----------------- | ----------- |
| 1         | Add Common Software      |     | Pass            | Pass              | Pass        |
| 6         | Build Essential Packages |     | Pass            | Pass              | Pass        |
| 7         | Etcher                   |     | Not Tested      | Not Tested        | Fail        |
| 8         | Fish and Oh-My-Fish      |     | Not Tested      | Not Tested        | Not Tested  |
| 9         | Wine and/or PlayonLinux  |     | Not Tested      | Fail              | Pass        |
| 10        | Intel-Microcode          |     | Not Tested      | Not Tested        | Not Tested  |
| 11        | Java Support             |     | Not Tested      | Not Tested        | Not Tested  |

---

#### Multimedia Programs

| Menu Item | Menu Task               |     | OpensuseLeap 15   | OpensuseLeap 15.1 | Opensuse TW |
| --------- | ----------------------- | --- | ----------------- | ----------------- | ----------- |
| 1         | makeMKV                 |     | Not Tested        | Not Tested        | Pass        |
| 2         | Audio Recorder          |     | Not Tested        | Not Tested        | Pass        |
| 3         | XnViewMP                |     | Pass              | Pass              | Pass        |
| 4         | DeadBeef Media Player   |     | Fail - Dep issues | Not Tested        | Pass        |
| 5         | Celluloid/Gnome MPV     |     | Not Tested        | Not Tested        | Pass        |
| 6         | Strawberry Media Player |     | Not Tested        | Not Tested        | Pass        |
| 7         | Tiny Media Manager      |     | Pass              | Pass              | Pass        |

---

#### Coding/Office/Productivity Programs

- Atom Devs are not signing the rpm (that is what the zypper warning is about)... no way of installing the RPM gets around this fact ... just hit I **ignore** at that step and it will install just fine

| Menu Item | Menu Task   |     | OpensuseLeap 15 | OpensuseLeap 15.1 | Opensuse TW |
| --------- | ----------- | --- | --------------- | ----------------- | ----------- |
| 1         | Atom Editor |     | Not Tested      | Not Tested        | Pass        |
| 2         | vscode      |     | Pass            | Pass              | Pass        |
| 3         | GitKraken   |     | Not Tested      | Not Tested        | Pass        |
| 4         | Typora      |     | Pass            | Pass              | Pass        |

---

#### Web Browsers

| Menu Items    |     | Opensuse Leap 15 | OpenSuse Leap 15.1 | OpenSuse TW |
| ------------- | --- | ---------------- | ------------------ | ----------- |
| Chromium      |     | Pass             | Pass               | Pass        |
| Firefox       |     | Fail             | Not Tested         | Pass        |
| Google Chrome |     | Not Tested       | Pass               | Pass        |
| Vivaldi       |     | Not Tested       | Pass               | Pass        |
