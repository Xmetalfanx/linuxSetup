# Xmetal's Linux Scripts

## Code Badges

[![Codacy Badge](https://app.codacy.com/project/badge/Grade/55ac91ee8f024afbb2d88d3f3713dc7b)](https://www.codacy.com/gh/Xmetalfanx/linuxSetup/dashboard?utm_source=github.com&utm_medium=referral&utm_content=Xmetalfanx/linuxSetup&utm_campaign=Badge_Grade)

[![CodeFactor](https://www.codefactor.io/repository/github/xmetalfanx/linuxsetup/badge)](https://www.codefactor.io/repository/github/xmetalfanx/linuxsetup)

## Introduction

A problem SOME users, even if they are experienced have when setting up some distributions, is all the post install tasks they have to do to setup a "workable" system. The tasks may not be difficult to do, but just rather they are time consuming. These scripts can hopefully give people a "helping hand" getting different distro bases set up.

While the main distributions listed are meant to be "Distro family bases", not all parts of these scripts are practically on all distros bases.

## Disclaimer

- Standard Disclaimer about how I am not responsible about what scripts you run on your own computer or what mistakes may occur. ALWAYS have backups "just in case" amd even redundant backups, in case your original backups have issues.

## Requirements

Some of these are auto-installed when the script is first run ... others I may add to "auto install" later

- `wget`
- `curl`
- `lsb` (different package names on different distros ) type packages
  - so lsb_release \* can be run
- `inxi`
  - (? if it's auto-installed or needed)
  - ... even I am not 100% sure about this one, but for later "DE/Distro" detection, inxi seems needed

\*\*\* if there is one thing that you may (you could always download my script's via the .zip file) "need" to install before running my script or getting them .... it'd be "git"

- `git`
  - this is to git clone the scripts; however, from the Github or Gitlab page for the scripts, there are ways to download the repo in a .zip form too ... in this case `git` is not "needed"

## Thanks

- Too many to list them all

- While I was likely to do this anyway, it is people like [Midfngr](https://www.youtube.com/user/midfingr/undefined) that inspire me to help other, though this entire idea started with no menus, and just a way for ME TO AUTOMATE some post distro install tasks, the idea this could help others is why it has grown so much

- Thanks to [deb-apt](https://github.com/wimpysworld/deb-get) for their unrollURL function (renamed in my code to unpackURL) ... I was struggling with how to get direct links, the way i wanted to from sites like Sourceforge WITHOUT hard coding the link in, but this solution seems to work perfectly for my code. Thanks guys

## Known issues

- [List of Known Issues](ISSUES.md)

### Author/Committer fix caused issues

This is also important ... i knew this was only my own repo and no other contributors ... i had a few old commits where i had to change the author .. some had "xmetal" some had "xmetalfanx@yahoo.com" when it should have been "Xmetalfanx@yahoo.com" for all of them ... I fixed this issue far too late but this means say with old issues where i linked to commits, those commits are not part of the branch anymore.

The commit content I linked to is the same and the "wrong author name/wrong committer" name is the ONLY thing that REALLY changed. If you see "This commit does not belong to any branch on this repository, and may belong to a fork outside of the repository." ignore that ... the changes you see are still valid and exactly the same.

bad git etiquette, I know

## How to download

### Download from the Release Page

1. Go To [Xmetal's Linux Setup Script Release Page (there are links on the right as well)](https://github.com/Xmetalfanx/linuxSetup/releases/tag/1.01)
2. Download either the tar.gz or zip file and extract it
3. Enter the extracted directory

### Download with git

Please Note: this apparently gets a large amount of git history (my code changes) that is not needed really

Also the git package MAYBE preinstalled in some distros... I am assuming it's not with the instructions below

#### In Arch

`sudo pacman -S git`

#### In Fedora

`sudo dnf install git`

#### In OpenSUSE

`sudo zypper install git`

#### In Solus

`sudo eopkg install git`

#### In Ubuntu

`sudo apt install git`

- if that doesn't work `sudo apt-get install git`

## How to get the script via git method

In a Terminal run `git clone https://github.com/xmetalfanx/linuxscripts.git && cd linuxscripts`

## How to run the main script file

1. Open a Terminal
2. Navigate to the root folder you extracted the LinuxScripts archive to
3. type `bash linuxSetupScripts.sh`

## Goals

1. To have scripts I can run on various distros that automate many of the post install "out of the box" tasks that I always perform anyway.

## Distro base support

| Distro base | Support                    | Including                                           |
| ----------- | -------------------------- | --------------------------------------------------- |
| Arch        |                            | EndeovourOS, Manjaro                                |
| Debian      | Debian 11                  | Devuan, Peppermint, Sparky, MXLinux                 |
| Fedora      | 36, 37, 38                 |
| OpenSUSE    | 15.4 Leap, Tumbleweed      | Gecko Linux                                         |
| Ubuntu      | 18.04, 20.04, 22.04, 23.04 | Elementary, Linux Lite, Linux Mint, "\*buntu Spins" |

- Ubuntu: 18.04 Bionic, 20.04 Focal, 22.04 Jammy, 23.04 Lunar

### Testing related

[Test Results](TESTING.md)

### Extra Notes

- note: move this to better documentation section, later The repo used for an option to install Audio-Recorder on Debian is <https://www.deb-multimedia.org/>
