
# Main Tasks 

| Menu Tasks                 |   | Fedora 29 | Fedora 30  | Opensuse Leap 42.3 | Opensuse 15 | Opensuse Leap 15.1 | OpenSuse TW |
|:---------------------------|:--|:----------|:-----------|:-------------------|:------------|:-------------------|:------------|
| Update System              |   | Pass      | Not Tested | Not Tested         | Not Tested  | Not Tested         | Pass        |
| Install third party repos* |   | Pass      | Not Tested | Not Tested         | Not Tested  | Not Tested         | Fail        |
| Install Codecs             |   | Pass      | Not Tested | Not Tested         | Not Tested  | Not Tested         | Not Tested  |



# Software Menus
## Install/Update for the specific apps

| Menu Task                |   | Fedora 29  | Fedora 30  | Opensuse Leap 42.3 | OpensuseLeap 15 | OpensuseLeap 15.1 | Opensuse TW |
|:-------------------------|:--|:-----------|:-----------|:-------------------|:----------------|:------------------|:------------|
| Add Common Software      |   | Pass**     | Not Tested | Not Tested         | Not Tested      | Not Tested        | Pass **     |
| Etcher                   |   | Not Tested | Not Tested | Not Tested         | Not Tested      | Not Tested        | Not Tested  |
| Wine and/or PlayonLinux  |   | Not Tested | Not Tested | Not Tested         | Not Tested      | Not Tested        | Fail        |
| Build Essential Packages |   | Not Tested | Not Tested | Not Tested         | Not Tested      | Not Tested        | Pass        |

## Multimedia Apps

| Menu Task             |   | Fedora 29 | Fedora 30  | Opensuse Leap 42.3 | OpensuseLeap 15 | OpensuseLeap 15.1 | Opensuse TW |
|:----------------------|:--|:----------|:-----------|:-------------------|:----------------|:------------------|:------------|
| Tiny Media Manager    |   | Fail      | Not Tested | Not Tested         | Not Tested      | Not Tested        | Fail ****   |
| makeMKV               |   | Fail      | Not Tested | Not Tested         | Not Tested      | Not Tested        | Not Tested  |
| DeadBeef Media Player |   | Fail      | Not Tested | Not Tested         | Not Tested      | Not Tested        | Pass        |
| XnViewMP              |   | Fail ***  | Not Tested | Not Tested         | Not Tested      | Not Tested        | Fail ****   |


## Productivity/Office Apps 

| Menu Task   |   | Fedora 29 | Fedora 30  | Opensuse Leap 42.3 | OpensuseLeap 15 | OpensuseLeap 15.1 | Opensuse TW |
|:------------|:--|:----------|:-----------|:-------------------|:----------------|:------------------|:------------|
| Atom Editor |   | Fail      | Not Tested | Not Tested         | Not Tested      | Not Tested        | Fail        |
| vscode      |   | Pass      | Not Tested | Not Tested         | Not Tested      | Not Tested        | Pass        |



** This passes without a check for third party repos first ... this feature is coming soon 

*** Downloads fine but does not extract

**** Javacheck passes fine ... tarball downloads, but like in a few Fedora tests (XNviewMP and TMM again) it's the extraction that fails

## Web Browser Installation 

| Menu Items    |   | Fedora 29    | Fedora 30  | OpenSuse Leap 42.3 | Opensuse Leap 15 | OpenSuse Leap 15.1 | OpenSuse Tw |
|:--------------|:--|:-------------|------------|--------------------|------------------|--------------------|-------------|
| Google Chrome |   | Fail         | Not Tested | Not Tested         | Not Tested       | Not Tested         | Pass        |
| Chromium      |   | Not Tested   | Not Tested | Not Tested         | Not Tested       | Not Tested         | Fail        |
| Firefox       |   | Preinstalled | Not Tested | Not Tested         | Not Tested       | Not Tested         | Not Tested  |
| Vivaldi       |   | Fail         | Not Tested | Not Tested         | Not Tested       | Not Tested         | Fail        |


# Theming Installation 

| Menu Items           |   | Fedora 29 | Fedora 30  | OpenSuse Leap 42.3 | Opensuse Leap 15 | OpenSuse Leap 15.1 | OpenSuse Tw |
|:---------------------|:--|:----------|:-----------|:-------------------|:-----------------|:-------------------|:------------|
| Install Adapta Theme |   | Pass **   | Not Tested | Not Tested         | Not Tested       | Not Tested         | Pass        |
| Install Arc Theme    |   | Pass      | Not Tested | Not Tested         | Not Tested       | Not Tested         | Pass        |
| Install Mint Theme   |   | Pass      | Not Tested | Not Tested         | Not Tested       | Not Tested         | Pass        |
| Install Numix Theme  |   | Pass      | Not Tested | Not Tested         | Not Tested       | Not Tested         | Fail        |
| Install Plata Theme  |   | Pass      | Not Tested | Not Tested         | Not Tested       | Not Tested         | Fail        |
| All Listed Themes    |   | Fail      | Not Tested | Not Tested         | Not Tested       | Not Tested         | Not Tested  |


--- 

- Third Party Repo Info

  - Fedora

    - Both RPM Fusion Repos

  - OpenSuse

    - Pacman Repos
