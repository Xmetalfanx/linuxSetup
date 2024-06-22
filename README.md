# Xmetal's Linux Scripts

## Code Badges

[![Codacy Badge](https://app.codacy.com/project/badge/Grade/55ac91ee8f024afbb2d88d3f3713dc7b)](https://www.codacy.com/gh/Xmetalfanx/linuxSetup/dashboard?utm_source=github.com&utm_medium=referral&utm_content=Xmetalfanx/linuxSetup&utm_campaign=Badge_Grade)

[![CodeFactor](https://www.codefactor.io/repository/github/xmetalfanx/linuxsetup/badge)](https://www.codefactor.io/repository/github/xmetalfanx/linuxsetup)

## Introduction

The Problem: While not hard, setting up a fresh install of Linux for those that customize things, can take some time.

The Solution: This is the point of these scripts, to help cut down on that time.

While the main distributions listed are meant to be "Distro family bases", not all parts of these scripts are practical on all distros bases.

## Disclaimer

Standard Disclaimer

I am not responsible about what scripts you run on your own computer or what mistakes may occur.
ALWAYS have backups "just in case" amd even redundant backups.

## Requirements

Some of these are auto-installed when the script is first ran.

- `wget`
- `curl`
- `lsb` - so lsb_release \* can be run
- `inxi`
- `git`
  - This is to git clone the scripts (Downloading via Release files is prefered),
  - Also for some git clone related tasks when pulling something from github or Gitlab

## Goals

To have scripts that can run on various distros that assist in many of the post install tasks that users run, setting up Linux.

- [Tasks these scripts can perform](/documentation/tasks.md)

## [Known issues](/documentation/ISSUES.md)

### Additional Known issues

- May 2024 - Known issues in 1.046 release
  - [MakeMKV Compile from source is having issues on some distros where it seems dev packages are missing or no longer available](https://github.com/Xmetalfanx/linuxSetup/issues/304)

## Downloading and running these scripts

### [How to download](/documentation/download.md)

### How to run the main script file

1. Open a Terminal
2. Navigate to the root folder you extracted the LinuxScripts archive to
3. type `bash linuxSetupScripts.sh`

## Distro base support

| Distro base | Support                        | Including                                           |
| ----------- | ------------------------------ | --------------------------------------------------- |
| Arch        |                                | EndeovourOS, Manjaro                                |
| Debian      | Debian 11, 12                  | Devuan, Peppermint, Sparky, MXLinux                 |
| Fedora      | 39, 40                         |                                                     |
| OpenSUSE    | Leap 15.5 and 15.6, Tumbleweed | Gecko Linux                                         |
| Solus       |                                |                                                     |
| Ubuntu      | 20.04, 22.04, 23.04, 24.04     | Elementary, Linux Lite, Linux Mint, "\*buntu Spins" |

- Ubuntu: 20.04 Focal, 22.04 Jammy, 24.04 Noble

### Testing related

- [Test Results](tests/TESTING.md)

## Thanks

- Too many to list them all

- While I was likely to do this anyway, it is people like [Midfngr](https://www.youtube.com/user/midfingr/undefined) that inspire me to help other, 
- This entire idea started with no menus, and just a way for ME TO AUTOMATE some post distro install tasks, the idea this could help others is why it has grown so much

- Thanks to [deb-apt](https://github.com/wimpysworld/deb-get) for their *unrollURL* function (renamed in my code to unpackURL) ... I was struggling with how to get direct links, the way i wanted to from sites like Sourceforge WITHOUT hard coding the link in, but this solution seems to work perfectly for my code. Thanks guys

## Choice to remove Snap support and code

- Resources:

  - [Alan Pope Blog](https://popey.com/blog/2024/03/exodus-wallet-part-three/)
  - [Canonical Keeps Shipping Malware Snaps - Brodie Robertson](https://www.youtube.com/watch?v=kzB6fHL_2Pg)
  - [Snapcraft Forum, with Alan Pope remarks](https://forum.snapcraft.io/t/stop-the-line/39357/11?u=popey)

Right now despite my view of snaps (I dont use them), I just do not trust Canonical and the Snapstore.
The KDE team is already handling an issue that came up with the KDE store, much better.

- Ref: Here is a response from one member (if i understand correctly) of the KDE team talking about the KDE Store "issue"
  - [Trusting content on the KDE Store](https://blog.davidedmundson.co.uk/blog/kde-store-content/)

To me, it's not just the issue with the Snapstore Malware, but the way Canonical, HASN'T handled it