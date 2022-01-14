# Main Tasks for RPM Distros, Fedora and OpenSuse

## Main Tasks

### Fedora

| Menu Item | Menu Tasks                  |     | Fedora 29 | Fedora 30 | Fedora 31 |
| --------- | --------------------------- | --- | --------- | --------- | --------- |
| 1         | Update System               |     | Pass      | Pass      | Pass      |
| C         | Install Codecs              |     | Pass      | Pass      | Pass      |
| R         | Install third party repos\* |     | Pass      | Pass      | Pass      |

### OpenSuse

| Menu Item | Menu Tasks                  |     | Opensuse 15 | Opensuse Leap 15.1 | OpenSuse TW |
| --------- | --------------------------- | --- | ----------- | ------------------ | ----------- |
| 1         | Update System               |     | Pass        | Pass               | Pass        |
| C         | Install Codecs              |     | Pass        | Pass               | Pass        |
| R         | Install third party repos\* |     | Pass        | Pass               | Pass        |

---

## Theming Installation

- What themes are available for what distro and what "Desktop"/Window Manager makes this hard to test at times

### Fedora

| Menu Item | Menu Items          |     | Fedora 29  | Fedora 30  | Fedora 31 |
| --------- | ------------------- | --- | ---------- | ---------- | --------- |
| 1         | Adapta Theming      |     | Pass       | Pass       | Pass      |
| 2         | Arc Theming         |     | Pass       | Pass       | Pass      |
| 3         | Mint-y Theming      |     | Pass       | Pass       | Pass      |
| 4         | Numix Theming       |     | Pass       | Pass       | Pass      |
| 5         | Plata Theming       |     | Pass       | Pass       |           |
| 6         | Yaru Theming        |     | Not Tested | Not Tested |           |
| 7         | Breeze Theming      |     | Not Tested | Not Tested |           |
| A         | All Listed Theming  |     | Pass       | Fail       |           |
| I         | Install Misc Icons  |     | Pass       | Pass       | Pass      |
| T         | Install Misc Themes |     | Pass       | Fail       |           |

### OpenSuse

| Menu Item | Menu Items          |     | Opensuse Leap 15 | OpenSuse Leap 15.1 | OpenSuse Tw |
| --------- | ------------------- | --- | ---------------- | ------------------ | ----------- |
| 1         | Adapta Theming      |     | Fail             | Pass               | Pass        |
| 2         | Arc Theming         |     | Fail             | Fail               | Pass        |
| 3         | Mint-Y Theming      |     | Not Tested       | Not Tested         | Pass        |
| 4         | Numix Theming       |     | Pass             | Not Tested         | Pass        |
| 5         | Plata Theming       |     | Fail/not coded   | Not Tested         | Pass        |
| 6         | Yaru Theming        |     | Not Tested       | Not Tested         | Pass        |
| 7         | Breeze Theming      |     | Not Tested       | Not Tested         |             |
| A         | All Listed Theming  |     | Not Tested       | Not Tested         | Not Tested  |
| I         | Install Misc Icons  |     | Not Coded        | Not Coded          | Pass        |
| T         | Install Misc Themes |     | Fail             | Pass               | Not Tested  |

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

| Menu Item | Menu Task                |     | Fedora 29  | Fedora 30  | Fedora 31 |
| --------- | ------------------------ | --- | ---------- | ---------- | --------- |
| 1         | Add Common Software      |     | Pass       | Pass       | Pass      |
| 10        | Install Intel-Microcode  |     | Not Tested | Not Tested | Pass      |
| 11        | Java Support             |     | Not Tested | Not Tested | Pass      |
| 6         | Build Essential Packages |     | Pass       | Pass       | Pass      |
| 7         | Etcher                   |     | Pass       | Pass       | Fail      |
| 8         | Fish and Oh-my-Fish      |     | Not Tested | Not Tested | Pass      |
| 9         | Wine and/or PlayonLinux  |     | Not Tested | Pass       | Fail      |

- Intel Microcode is ASSUMING that I am using the correct (and nothing else is needed) package

---

#### Multimedia Programs

| Menu Item | Menu Task               |     | Fedora 29  | Fedora 30  | Fedora 31 |
| --------- | ----------------------- | --- | ---------- | ---------- | --------- |
| 1         | makeMKV                 |     | Not Tested | Pass       | Pass      |
| 2         | Audio Recorder          |     | Not Tested | Not Tested |           |
| 3         | XnViewMP                |     | Pass       | Fail\*     |           |
| 4         | DeadBeef Media Player   |     | Not Tested | Pass       |           |
| 5         | Celluloid/Gnome MPV     |     | Not Tested | Pass       |           |
| 6         | Strawberry Media Player |     | Not Tested | Pass       |           |
| 7         | Tiny Media Manager      |     | Pass       | Pass       |           |
| 8         | MediaElch               |     |            |            |           |

- TMM issue on Fedora - IT runs HOWEVER I already installed Java first ... double check (say Java is not instatlled by the standalone java support option ... that installing TMM would install Java first )

- Nov 2019 Update: this issue I noted may be solved with new Java install method for Fedora (untested at the time of typing this)

- MakeMKV not stopping to show the user the license info

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
| 10        | Intel-Microcode          |     | Not Tested      | Not Tested        | Pass        |
| 11        | Java Support             |     | Not Tested      | Not Tested        | Pass        |
| 6         | Build Essential Packages |     | Pass            | Pass              | Pass        |
| 7         | Etcher                   |     | Not Tested      | Not Tested        | Pass        |
| 8         | Fish and Oh-My-Fish      |     | Not Tested      | Not Tested        | Pass        |
| 9         | Wine and/or PlayonLinux  |     | Not Tested      | Fail              | Pass        |

- Note: a Fail listed here is not going to be changed unless I know it works on that version ... if some things say fail and others pass, than the one that failed MAY be fixed too, but until i know for sure i will be honest and not change it since i have not seen the fix

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

| Menu Item | Menu Tasks    |     | Opensuse Leap 15 | OpenSuse Leap 15.1 | OpenSuse TW |
| --------- | ------------- | --- | ---------------- | ------------------ | ----------- |
| 1         | Google Chrome |     | Not Tested       | Pass               | Pass        |
| 2         | Chromium      |     | Pass             | Pass               | Pass        |
| 3         | Firefox       |     | Fail             | Not Tested         | Pass        |
| 4         | Vivaldi       |     | Not Tested       | Pass               | Pass        |
