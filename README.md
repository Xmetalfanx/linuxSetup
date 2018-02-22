# NOTE: THIS is under heavy construction

### I have merged alot of changes into the master branch as of December 6th 2017.   Things are broken and I know it.

# Xmetal's Linux Scripts


## Introduction

A problem SOME users, even if they are experienced have when setting up some distributions, is all the post install tasks they have to do to setup a "workable" system.   The tasks may not be difficult to do, but just rather they are time consuming.  These scripts can hopefully give people a "helping hand" getting different distro bases set up.

While The main distributions listed are meant to be "Distro family bases", not ALL scripts are practically on all distros.   For example a few of the "Fedora scripts" are already pre-done for you, if you use Korora.  

## How this project came to be
1.  First this was going to be a more basic, and all automated way of me setting up my system.
2.  I then decided that this could be useful for anyone and decided to (eventually) make two branches ... one for me which is more customized for me and another branch which is more generic but anyone could use
3.  By doing this project, I can not only help others, but also learn more bash AND git / github

## Disclaimer
-  Standard Disclaimer about how I am not responsible about what scripts you run on your own computer or what mistakes may occur

## Thanks
- Too many to list them all
- While I was likely to do this anyway, it is people like [Midfngr](https://www.youtube.com/user/midfingr/undefined) that inspire me to help other, though this entire idea started with no menus, and just a way for ME TO AUTOMATE some post distro install tasks, the idea this could help others is why it has grown so much
- Thanks to [Matthew Moore](https://www.youtube.com/user/MrGizmo757/undefined) for much of the Arch info in his Arch install notes.

---

## How to download via git
- ### In Arch:
`sudo pacman -S git`

- ### In Fedora:
`sudo dnf install git`

- ### In OpenSUSE:
`sudo zypper install git`

- ### In Ubuntu:
`sudo apt install git`

  -  if that doesn't work  `sudo apt-get install git`

## How to get the script via git method
In a Terminal run
`git clone https://github.com/xmetalfanx/linuxscripts.git && cd linuxscripts`


## How to run the main script file
1.   Open a Terminal
2.   Navigate to the root folder you extracted the LinuxScripts archive to
3.   type `bash xmetalLinuxScripts.sh`

---
## Youtube Playlist showing off scripts as I go along

#### I know this is out-dated 

- [Xmetal Script Preview PLAYLIST, on Youtube](https://www.youtube.com/playlist?list=PLrh2y86lvcJd7or3jWalRLbQk4mWZQHeM)


---
## Goals
1.  To have scripts I can run on various distros that automate many of the post install "out of the box" tasks that I always perform anyway.
    - Distro families to be included are
      - Ubuntu
      - OpenSuse
      - Arch
      - Fedora

--- 
## Links to other useful projects similar to this 
### [Mr Sam Hewitt's Main Page and Scripts](https://github.com/snwh)

####[Fedora Post Install Scripts](https://github.com/snwh/fedora-post-install)
####[Solus Post Install Scripts](https://github.com/snwh/solus-post-install)
####[Ubuntu Post Install Scripts](https://github.com/snwh/ubuntu-post-install)