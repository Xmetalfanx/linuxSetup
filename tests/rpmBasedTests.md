# Main Tasks

| Menu Tasks                  |   | Fedora 29 | Fedora 30  | Opensuse Leap 42.3 | Opensuse 15 | Opensuse Leap 15.1 | OpenSuse TW |
|-----------------------------|---|-----------|------------|--------------------|-------------|--------------------|-------------|
| Update System               |   | Pass      | Pass       | Not Tested         | Pass        | Pass               | Pass        |
| Install third party repos\* |   | Pass      | Pass       | Not Tested         | Pass        | Pass               | Fail        |
| Install Codecs              |   | Pass      | Not Tested | Not Tested         | Pass        | Pass               | Not Tested  |

---

# Software Menus

## Install/Update for the specific apps

| Menu Task                |   | Fedora 29  | Fedora 30  | Opensuse Leap 42.3 | OpensuseLeap 15 | OpensuseLeap 15.1 | Opensuse TW |
|--------------------------|---|------------|------------|--------------------|-----------------|-------------------|-------------|
| Add Common Software      |   | Pass       | Pass       | Not Tested         | Pass            | Pass              | Pass        |
| Etcher                   |   | Pass       | Not Tested | Not Tested         | Not Tested      | Not Tested        | Not Tested  |
| Wine and/or PlayonLinux  |   | Not Tested | Pass       | Not Tested         | Not Tested      | Fail              | Not Tested  |
| Build Essential Packages |   | Pass       | Pass       | Not Tested         | Pass            | Pass              | Pass        |

- Wine fails on OpenSuse due to the package "playonlinux" not being usable ..it has to be "PlayOnLinux" and that is screwing that test up 


## Multimedia Apps

| Menu Task             |   | Fedora 29  | Fedora 30                     | Opensuse Leap 42.3 | OpensuseLeap 15   | OpensuseLeap 15.1 | Opensuse TW |
|-----------------------|---|------------|-------------------------------|--------------------|-------------------|-------------------|-------------|
| Tiny Media Manager    |   | Pass       | Fail - Downloads, Doesn't run | Not Tested         | Pass              | Pass              | Pass        |
| makeMKV               |   | Not Tested | Pass                          | Not Tested         | Not Tested        | Not Tested        | Pass        |
| DeadBeef Media Player |   | Fail       | Fail                          | Not Tested         | Fail - Dep issues | Not Tested        | Pass        |
| XnViewMP              |   | Pass       | Not Tested                    | Not Tested         | Pass              | Pass              | Pass        |
| Audio Recorder        |   |            |                               |                    |                   |                   |             |

- TMM issue on Fedora - 99.99999% sure it's not installing java first which TMM needs 

---

## Productivity/Office Apps

| Menu Task   |   | Fedora 29 | Fedora 30 | Opensuse Leap 42.3 | OpensuseLeap 15 | OpensuseLeap 15.1 | Opensuse TW |
|-------------|---|-----------|-----------|--------------------|-----------------|-------------------|-------------|
| Atom Editor |   | Fail      | Pass      | Not Tested         | Pass            | Pass              | Fail        |
| vscode      |   | Pass      | Pass      | Not Tested         | Pass            | Pass              | Pass        |

- Atom Devs are not signing the rpm (that is what the zypper warning is about)... no way of installing the RPM gets around this fact ... just hit I (ignore) at that step and it will install just fine 

--- 

## Web Browser Installation
| Menu Items    |   | Fedora 29    | Fedora 30 | OpenSuse Leap 42.3 | Opensuse Leap 15 | OpenSuse Leap 15.1 | OpenSuse Tw |
|---------------|---|--------------|-----------|--------------------|------------------|--------------------|-------------|
| Google Chrome |   | Fail         | Pass      | Not Tested         | Not Tested       | Pass               | Pass        |
| Chromium      |   | Pass         | Pass      | Not Tested         | Pass             | Pass               | Fail        |
| Firefox       |   | Preinstalled | Pass      | Not Tested         | Fail             | Not ... Sure       | Not Tested  |
| Vivaldi       |   | Fail         | Pass      | Not Tested         | Not Tested       | Pass               | Pass        |

\*\*\*\* MozillaFirefox is the package name for Opensuse, not "firefox"... until i change this it's a probable fail

# Theming Installation

| Menu Items           |   | Fedora 29 | Fedora 30 | OpenSuse Leap 42.3 | Opensuse Leap 15 | OpenSuse Leap 15.1 | OpenSuse Tw |
|----------------------|---|-----------|-----------|--------------------|------------------|--------------------|-------------|
| Install Adapta Theme |   | Pass      | Pass      | Not Tested         | Fail             | Pass               | Pass        |
| Install Arc Theme    |   | Pass      | Pass      | Not Tested         | Fail             | Fail               | Pass        |
| Install Mint Theme   |   | Pass      | Pass      | Not Tested         | Not Tested       | Not Tested         | Pass        |
| Install Numix Theme  |   | Pass      | Pass      | Not Tested         | Pass             | Not Tested         | Pass        |
| Install Plata Theme  |   | Pass      | Pass      | Not Tested         | Fail/not coded   | Not Tested         | Pass        |
| Install Misc Icons   |   | Pass      | Pass      | Not Tested         | Not Coded        | Not Coded          | Not Tested  |
| Install Misc Themes  |   | Pass      | Fail      | Not Tested         | Fail             | Pass               | Not Tested  |
| All Listed Themes    |   | Pass      | Fail      | Not Tested         | Not Tested       | Not Tested         | Not Tested  |



---

- Third Party Repo Info

  - Fedora

    - Both RPM Fusion Repos

  - OpenSuse

    - Pacman Repos


*** I REFORMATTED the OpenSUSE 15.0 VM I had when 15.1 came out ... if something says pass on 15.1 and fail on 15.0, there is a good change that 15.0's code is fixed too, but I will not change the status until i know for sure 