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

## Goals

 To have scripts I can run on various distros that automate many of the post install "out of the box" tasks that I always perform anyway.

- [Various Tasks these scripts can do](/documentation/tasks.md)

## Known issues

- [List of Known Issues](/documentation/ISSUES.md)

## [How to download](/documentation/download.md)

## How to run the main script file

1. Open a Terminal
2. Navigate to the root folder you extracted the LinuxScripts archive to
3. type `bash linuxSetupScripts.sh`

## Distro base support

| Distro base | Support                    | Including                                           |
| ----------- | -------------------------- | --------------------------------------------------- |
| Arch        |                            | EndeovourOS, Manjaro                                |
| Debian      | Debian 11                  | Devuan, Peppermint, Sparky, MXLinux                 |
| Fedora      | 36, 37, 38                 |                                                     |
| OpenSUSE    | 15.4 Leap, Tumbleweed      | Gecko Linux                                         |
| Solus       |                            |                                                     |
| Ubuntu      | 20.04, 22.04, 23.04 | Elementary, Linux Lite, Linux Mint, "\*buntu Spins" |

- Ubuntu: 20.04 Focal, 22.04 Jammy, 23.04 Lunar

### Testing related

- September 2023 - This info is out of date ... some tests may not reflect the current results seen.
[Test Results](/tests/old_pre_menu_redo_tests/TESTING.md)

## Thanks

- Too many to list them all

- While I was likely to do this anyway, it is people like [Midfngr](https://www.youtube.com/user/midfingr/undefined) that inspire me to help other, though this entire idea started with no menus, and just a way for ME TO AUTOMATE some post distro install tasks, the idea this could help others is why it has grown so much

- Thanks to [deb-apt](https://github.com/wimpysworld/deb-get) for their *unrollURL* function (renamed in my code to unpackURL) ... I was struggling with how to get direct links, the way i wanted to from sites like Sourceforge WITHOUT hard coding the link in, but this solution seems to work perfectly for my code. Thanks guys
