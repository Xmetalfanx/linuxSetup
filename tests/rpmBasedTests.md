# Main Tasks for RPM Distros, Fedora and OpenSuse

## Main Tasks

### Fedora

| Menu Tasks                  |     | Fedora 29 | Fedora 30 |
| --------------------------- | --- | --------- | --------- |
| Update System               |     | Pass      | Pass      |
| Install third party repos\* |     | Pass      | Pass      |
| Install Codecs              |     | Pass      | Pass      |

### OpenSuse

| Menu Tasks                  |     | Opensuse Leap 42.3 | Opensuse 15 | Opensuse Leap 15.1 | OpenSuse TW |
| --------------------------- | --- | ------------------ | ----------- | ------------------ | ----------- |
| Update System               |     | Not Tested         | Pass        | Pass               | Pass        |
| Install third party repos\* |     | Not Tested         | Pass        | Pass               | Fail        |
| Install Codecs              |     | Not Tested         | Pass        | Pass               | Not Tested  |

---

## Theming Installation

- What themes are available for what distro and what "Desktop"/Window Manager makes this hard to test at times

## Fedora

| Menu Items           |     | Fedora 29 | Fedora 30 |
| -------------------- | --- | --------- | --------- |
| Install Adapta Theme |     | Pass      | Pass      |
| Install Arc Theme    |     | Pass      | Pass      |
| Install Mint Theme   |     | Pass      | Pass      |
| Install Numix Theme  |     | Pass      | Pass      |
| Install Plata Theme  |     | Pass      | Pass      |
| Install Misc Icons   |     | Pass      | Pass      |
| Install Misc Themes  |     | Pass      | Fail      |
| All Listed Themes    |     | Pass      | Fail      |

## OpenSuse

| Menu Items           |     | OpenSuse Leap 42.3 | Opensuse Leap 15 | OpenSuse Leap 15.1 | OpenSuse Tw |
| -------------------- | --- | ------------------ | ---------------- | ------------------ | ----------- |
| Install Adapta Theme |     | Not Tested         | Fail             | Pass               | Pass        |
| Install Arc Theme    |     | Not Tested         | Fail             | Fail               | Pass        |
| Install Mint Theme   |     | Not Tested         | Not Tested       | Not Tested         | Pass        |
| Install Numix Theme  |     | Not Tested         | Pass             | Not Tested         | Pass        |
| Install Plata Theme  |     | Not Tested         | Fail/not coded   | Not Tested         | Pass        |
| Install Misc Icons   |     | Not Tested         | Not Coded        | Not Coded          | Not Tested  |
| Install Misc Themes  |     | Not Tested         | Fail             | Pass               | Not Tested  |
| All Listed Themes    |     | Not Tested         | Not Tested       | Not Tested         | Not Tested  |

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

| Menu Task                |     | Fedora 29  | Fedora 30 |
| ------------------------ | --- | ---------- | --------- |
| Add Common Software      |     | Pass       | Pass      |
| Etcher                   |     | Pass       | Pass      |
| Wine and/or PlayonLinux  |     | Not Tested | Pass      |
| Build Essential Packages |     | Pass       | Pass      |

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
| Strawberry Media Player |     | Not Tested | Pass                  |

- TMM issue on Fedora - 99.99999% sure it's not installing java first which TMM needs

#### Coding/Office/Productivity Programs

- Atom Devs are not signing the rpm (that is what the zypper warning is about)... no way of installing the RPM gets around this fact ... just hit I (ignore) at that step and it will install just fine

| Menu Task   |     | Fedora 29 | Fedora 30  |
| ----------- | --- | --------- | ---------- |
| Atom Editor |     | Fail*     | Not Tested |
| vscode      |     | Pass      | Pass       |
| Git Kraken  |     |           |            |
| Typora      |     | Pass      | Pass       |

*Upgraded to Fedora 30 with a fresh install before I could test again

---

#### Web Browser

| Menu Items    |     | Fedora 29    | Fedora 30 |
| ------------- | --- | ------------ | --------- |
| Google Chrome |     | Fail         | Pass      |
| Chromium      |     | Pass         | Pass      |
| Firefox       |     | Preinstalled | Pass      |
| Vivaldi       |     | Fail         | Pass      |

---

### Opensuse

#### Common/Various Software

| Menu Task                |     | Opensuse Leap 42.3 | OpensuseLeap 15 | OpensuseLeap 15.1 | Opensuse TW |
| ------------------------ | --- | ------------------ | --------------- | ----------------- | ----------- |
| Add Common Software      |     | Not Tested         | Pass            | Pass              | Pass        |
| Etcher                   |     | Not Tested         | Not Tested      | Not Tested        | Not Tested  |
| Wine and/or PlayonLinux  |     | Not Tested         | Not Tested      | Fail              | Not Tested  |
| Build Essential Packages |     | Not Tested         | Pass            | Pass              | Pass        |

- Wine fails on OpenSuse due to the package "playonlinux" not being usable ..it has to be "PlayOnLinux" and that is screwing that test up

---

#### Multimedia Programs

| Menu Task               |     | Opensuse Leap 42.3 | OpensuseLeap 15   | OpensuseLeap 15.1 | Opensuse TW |
| ----------------------- | --- | ------------------ | ----------------- | ----------------- | ----------- |
| Tiny Media Manager      |     | Not Tested         | Pass              | Pass              | Pass        |
| makeMKV                 |     | Not Tested         | Not Tested        | Not Tested        | Pass        |
| DeadBeef Media Player   |     | Not Tested         | Fail - Dep issues | Not Tested        | Pass        |
| XnViewMP                |     | Not Tested         | Pass              | Pass              | Pass        |
| Audio Recorder          |     | Not Tested         | Not Tested        | Not Tested        | Not Tested  |
| Celluloid/Gnome MPV     |     | Not Tested         | Not Tested        | Not Tested        | Pass        |
| Strawberry Media Player |     | Not Tested         | Not Tested        | Not Tested        | Pass        |

---

#### Coding/Office/Productivity Programs

- Atom Devs are not signing the rpm (that is what the zypper warning is about)... no way of installing the RPM gets around this fact ... just hit I **ignore** at that step and it will install just fine

| Menu Task   |     | Opensuse Leap 42.3 | OpensuseLeap 15 | OpensuseLeap 15.1 | Opensuse TW |
| ----------- | --- | ------------------ | --------------- | ----------------- | ----------- |
| Atom Editor |     | Not Tested         | Not Tested      | Not Tested        | Pass        |
| vscode      |     | Not Tested         | Pass            | Pass              | Pass        |
| GitKraken   |     | Not Tested         | Not Tested      | Not Tested        | Pass        |
| Typora      |     | Not Tested         | Pass            | Pass              | Pass        |

---

#### Web Browsers

| Menu Items    |     | OpenSuse Leap 42.3 | Opensuse Leap 15 | OpenSuse Leap 15.1 | OpenSuse Tw |
| ------------- | --- | ------------------ | ---------------- | ------------------ | ----------- |
| Google Chrome |     | Not Tested         | Not Tested       | Pass               | Pass        |
| Chromium      |     | Not Tested         | Pass             | Pass               | Fail        |
| Firefox       |     | Not Tested         | Fail             | Not Tested      | Not Tested  |
| Vivaldi       |     | Not Tested         | Not Tested       | Pass               | Pass        |

\*\*\*\* MozillaFirefox is the package name for Opensuse, not "firefox"... until i change this it's a probable fail