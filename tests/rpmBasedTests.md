
# Main Tasks 

| Menu Tasks                 |   | Fedora 29 | Fedora 30  | Opensuse Leap 42.3 | Opensuse 15 | Opensuse Leap 15.1 | OpenSuse TW |
|:---------------------------|:--|:----------|:-----------|:-------------------|:------------|:-------------------|:------------|
| Update System              |   | Pass      | Not Tested | Not Tested         | Pass        | Not Tested         | Pass        |
| Install third party repos* |   | Pass      | Not Tested | Not Tested         | Pass        | Not Tested         | Fail        |
| Install Codecs             |   | Pass      | Not Tested | Not Tested         | Pass       | Not Tested           | Not Tested  |


# Software Menus
## Install/Update for the specific apps

| Menu Task                |   | Fedora 29  | Fedora 30  | Opensuse Leap 42.3 | OpensuseLeap 15 | OpensuseLeap 15.1 | Opensuse TW |
|:-------------------------|:--|:-----------|:-----------|:-------------------|:----------------|:------------------|:------------|
| Add Common Software      |   | Pass**     | Not Tested | Not Tested         | Pass**          | Not Tested        | Pass **     |
| Etcher                   |   | Pass       | Not Tested | Not Tested         | Not Tested      | Not Tested        | Not Tested  |
| Wine and/or PlayonLinux  |   | Not Tested | Not Tested | Not Tested         | Not Tested      | Not Tested        | Not Tested  |
| Build Essential Packages |   | Pass       | Not Tested | Not Tested         | Pass     | Not Tested        | Pass        |

**Warning about package downgrades due to ffmpeg ... I will let the user decide what to do 

## Multimedia Apps

| Menu Task             |   | Fedora 29 | Fedora 30  | Opensuse Leap 42.3 | OpensuseLeap 15   | OpensuseLeap 15.1 | Opensuse TW |
|:----------------------|:--|:----------|:-----------|:-------------------|:------------------|:------------------|:------------|
| Tiny Media Manager    |   | Pass      | Not Tested | Not Tested         | Pass              | Not Tested        | Pass        |
| makeMKV               |   | Pass      | Not Tested | Not Tested         | Fail***           | Not Tested        | Not Tested  |
| DeadBeef Media Player |   | Fail      | Not Tested | Not Tested         | Fail - Dep issues | Not Tested        | Pass        |
| XnViewMP              |   | Pass      | Not Tested | Not Tested         | Pass              | Not Tested        | Pass        |
- What it does now is downloads the needed file and extracts it ... in a subfolder in /Downloads (the user's Downloads folder) .. for now i am not going to remove the archive file ... if the users wants to do that, fine 

***not sure about MakeMKV on Leap ... it seemed to go ok .. I did not see any errors and thing worked as normal but not everything compiled 

- TinyMM still has the issue of reinstalling java even if it's detected (detecting needs to be fixed)... other than that ... it works 

## Productivity/Office Apps 

| Menu Task   |   | Fedora 29 | Fedora 30  | Opensuse Leap 42.3 | OpensuseLeap 15 | OpensuseLeap 15.1 | Opensuse TW |
|:------------|:--|:----------|:-----------|:-------------------|:----------------|:------------------|:------------|
| Atom Editor |   | Fail      | Not Tested | Not Tested         | Fail            | Not Tested        | Fail        |
| vscode      |   | Pass      | Not Tested | Not Tested         | Pass            | Not Tested        | Pass        |


*** Downloads fine but does not extract

**** Javacheck passes fine ... tarball downloads, but like in a few Fedora tests (XNviewMP and TMM again) it's the extraction that fails

## Web Browser Installation 

| Menu Items    |   | Fedora 29    | Fedora 30  | OpenSuse Leap 42.3 | Opensuse Leap 15 | OpenSuse Leap 15.1 | OpenSuse Tw |
|:--------------|:--|:-------------|------------|--------------------|------------------|--------------------|-------------|
| Google Chrome |   | Fail         | Not Tested | Not Tested         | Not Tested       | Not Tested         | Pass        |
| Chromium      |   | Pass         | Not Tested | Not Tested         | Pass             | Not Tested         | Fail        |
| Firefox       |   | Preinstalled | Not Tested | Not Tested         | Fail****         | Not Tested         | Not Tested  |
| Vivaldi       |   | Fail         | Not Tested | Not Tested         | Not Tested       | Not Tested         | Pass        |

**** MozillaFirefox is the package name for Opensuse, not "firefox" 

# Theming Installation 

| Menu Items           |   | Fedora 29  | Fedora 30  | OpenSuse Leap 42.3 | Opensuse Leap 15 | OpenSuse Leap 15.1 | OpenSuse Tw |
|:---------------------|:--|:-----------|:-----------|:-------------------|:-----------------|:-------------------|:------------|
| Install Adapta Theme |   | Pass **    | Not Tested | Not Tested         | Fail             | Not Tested         | Pass        |
| Install Arc Theme    |   | Pass       | Not Tested | Not Tested         | Fail             | Not Tested         | Pass        |
| Install Mint Theme   |   | Pass       | Not Tested | Not Tested         | Not Tested       | Not Tested         | Pass        |
| Install Numix Theme  |   | Pass       | Not Tested | Not Tested         | Pass             | Not Tested         | Pass        |
| Install Plata Theme  |   | Pass       | Not Tested | Not Tested         | Fail/not coded   | Not Tested         | Pass        |
| Install Misc Icons   |   | Not Tested | Not Tested | Not Tested         | Fail             | Not Tested         | Not Tested  |
| Install Misc Themes  |   | Not Tested | Not Tested | Not Tested         | Fail             | Not Tested         | Not Tested  |
| All Listed Themes    |   | Fail       | Not Tested | Not Tested         | Not Tested       | Not Tested         | Not Tested  |

--- 

- Third Party Repo Info

  - Fedora

    - Both RPM Fusion Repos

  - OpenSuse

    - Pacman Repos
