# Main Tasks for RPM Distros, Fedora and OpenSuse

## Main Tasks

### Fedora

| Menu Tasks                 |      | Fedora 29  | Fedora 30  | Fedora 31 |
| -------------------------- | :--- | ---------- | ---------- | --------- |
| Update System              |      | Pass       | Pass       |           |
| Install third party repos* |      | Pass       | Pass       |           |
| Install Codecs             |      | Pass       | Pass       |           |
| Install Intel-Microcode    |      | Not Tested | Not Tested |           |

### OpenSuse

| Menu Tasks                  |     | Opensuse 15 | Opensuse Leap 15.1 | OpenSuse TW |
| --------------------------- | --- | ----------- | ------------------ | ----------- |
| Update System               |     | Pass        | Pass               | Pass        |
| Install third party repos\* |     | Pass        | Pass               | Fail        |
| Install Codecs              |     | Pass        | Pass               | Not Tested  |
| Install Intel-Microcode     |     | Not Tested  | Not Tested         | Not Tested  |

---

## Theming Installation

- What themes are available for what distro and what "Desktop"/Window Manager makes this hard to test at times

## Fedora

| Menu Items           |     | Fedora 29  | Fedora 30  | Fedora 31 |
| -------------------- | --- | ---------- | ---------- | --------- |
| Install Adapta Theme |     | Pass       | Pass       |           |
| Install Arc Theme    |     | Pass       | Pass       |           |
| Install Mint Theme   |     | Pass       | Pass       |           |
| Install Numix Theme  |     | Pass       | Pass       |           |
| Install Plata Theme  |     | Pass       | Pass       |           |
| Install Breeze Theme |     | Not Tested | Not Tested |           |
| Install Yaru Theme   |     | Not Tested | Not Tested |           |
| Install Misc Icons   |     | Pass       | Pass       |           |
| Install Misc Themes  |     | Pass       | Fail       |           |
| All Listed Themes    |     | Pass       | Fail       |           |

## OpenSuse

| Menu Items             |     | Opensuse Leap 15 | OpenSuse Leap 15.1 | OpenSuse Tw |
| ---------------------- | --- | ---------------- | ------------------ | ----------- |
| Install Adapta Theme   |     | Fail             | Pass               | Pass        |
| Install Arc Theme      |     | Fail             | Fail               | Pass        |
| Install Mint Theme     |     | Not Tested       | Not Tested         | Pass        |
| Install Numix Theme    |     | Pass             | Not Tested         | Pass        |
| Install Plata Theme    |     | Fail/not coded   | Not Tested         | Pass        |
| Install Misc Icons     |     | Not Coded        | Not Coded          | Pass        |
| Install Breeze Theming |     | Not Tested       | Not Tested         |             |
| Install Yaru Theming   |     | Not Tested       | Not Tested         | Pass        |
| Install Misc Themes    |     | Fail             | Pass               | Not Tested  |
| All Listed Themes      |     | Not Tested       | Not Tested         | Not Tested  |

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

| Menu Task                |     | Fedora 29  | Fedora 30 | Fedora 31 |
| ------------------------ | --- | ---------- | --------- | --------- |
| Add Common Software      |     | Pass       | Pass      |           |
| Etcher                   |     | Pass       | Pass      |           |
| Wine and/or PlayonLinux  |     | Not Tested | Pass      |           |
| Build Essential Packages |     | Pass       | Pass      |           |

---

#### Multimedia Programs

| Menu Task               |     | Fedora 29  | Fedora 30                     |
| ----------------------- | --- | ---------- | ----------------------------- |
| Tiny Media Manager      |     | Pass       | Fail - Downloads, Doesn't run |
| makeMKV                 |     | Not Tested | Pass                          |
| DeadBeef Media Player   |     | Not Tested | Pass                          |
| XnViewMP                |     | Pass       | Fail*                         |
| Audio Recorder          |     | Not Tested | Not Tested                    |
| Celluloid/Gnome MPV     |     | Not Tested | Pass                          |
| Strawberry Media Player |     | Not Tested | Pass                          |

- TMM issue on Fedora - 99.99999% sure it's not installing java first which TMM needs

#### Coding/Office/Productivity Programs

- Atom Devs are not signing the rpm (that is what the zypper warning is about)... no way of installing the RPM gets around this fact ... just hit I (ignore) at that step and it will install just fine

| Menu Task   |     | Fedora 29  | Fedora 30 | Fedora 31 |
| ----------- | --- | ---------- | --------- | --------- |
| Atom Editor |     | Fail*      | Pass      |           |
| vscode      |     | Pass       | Pass      |           |
| Git Kraken  |     | Not Tested | Pass      |           |
| Typora      |     | Pass       | Pass      |           |

*Upgraded to Fedora 30 with a fresh install before I could test again

---

#### Web Browser

| Menu Items    |     | Fedora 29    | Fedora 30 | Fedora 31 |
| ------------- | --- | ------------ | --------- | --------- |
| Google Chrome |     | Fail         | Pass      |           |
| Chromium      |     | Pass         | Pass      |           |
| Firefox       |     | Preinstalled | Pass      |           |
| Vivaldi       |     | Fail         | Pass      |           |

---

### Opensuse

#### Common/Various Software

| Menu Task                |     | OpensuseLeap 15 | OpensuseLeap 15.1 | Opensuse TW |
| ------------------------ | --- | --------------- | ----------------- | ----------- |
| Add Common Software      |     | Pass            | Pass              | Pass        |
| Etcher                   |     | Not Tested      | Not Tested        | Fail        |
| Wine and/or PlayonLinux  |     | Not Tested      | Fail              | Pass        |
| Build Essential Packages |     | Pass            | Pass              | Pass        |

- Wine fails on OpenSuse due to the package "playonlinux" not being usable ..it has to be "PlayOnLinux" and that is screwing that test up

---

#### Multimedia Programs

| Menu Task               |     | OpensuseLeap 15   | OpensuseLeap 15.1 | Opensuse TW |
| ----------------------- | --- | ----------------- | ----------------- | ----------- |
| Tiny Media Manager      |     | Pass              | Pass              | Pass        |
| makeMKV                 |     | Not Tested        | Not Tested        | Pass        |
| DeadBeef Media Player   |     | Fail - Dep issues | Not Tested        | Pass        |
| XnViewMP                |     | Pass              | Pass              | Pass        |
| Audio Recorder          |     | Not Tested        | Not Tested        | Pass        |
| Celluloid/Gnome MPV     |     | Not Tested        | Not Tested        | Pass        |
| Strawberry Media Player |     | Not Tested        | Not Tested        | Pass        |

---

#### Coding/Office/Productivity Programs

- Atom Devs are not signing the rpm (that is what the zypper warning is about)... no way of installing the RPM gets around this fact ... just hit I **ignore** at that step and it will install just fine

| Menu Task   |     | OpensuseLeap 15 | OpensuseLeap 15.1 | Opensuse TW |
| ----------- | --- | --------------- | ----------------- | ----------- |
| Atom Editor |     | Not Tested      | Not Tested        | Pass        |
| vscode      |     | Pass            | Pass              | Pass        |
| GitKraken   |     | Not Tested      | Not Tested        | Pass        |
| Typora      |     | Pass            | Pass              | Pass        |

---

#### Web Browsers

| Menu Items    |     | Opensuse Leap 15 | OpenSuse Leap 15.1 | OpenSuse Tw |
| ------------- | --- | ---------------- | ------------------ | ----------- |
| Google Chrome |     | Not Tested       | Pass               | Pass        |
| Chromium      |     | Pass             | Pass               | Pass        |
| Firefox       |     | Fail             | Not Tested         | Pass        |
| Vivaldi       |     | Not Tested       | Pass               | Pass        |
