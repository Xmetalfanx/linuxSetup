# Xmetal Linux Script

## Main Menu

1. Update your System

   - Updates the system via the command-line

2. Optimize Repos/Mirrors

   - Works on Fedora with DNF
   - Works on Manjaro or Arch
     - Different code (I think) for Manjaro or Arch

3. (Menu) [Arch-based](#arch-script)

4. (Menu) [Debian](#debian)

5. (Menu} [Fedora](#fedora-script)

6. (Menu} OpenSUSE

7. (Menu} [Ubuntu based](#ubuntu-script)

8. (Menu} [Cleanup](#cleanup-scripts)

C. Adds Codecs

- Adds needed Codecs on Arch, Fedora, and OpenSuse
  - Idea/note to self: only use third party repos if i have to ... just in case the user doesn't want to add them

R. Add Third Party Repos

- Universal function
  - Fedora - Adds both RPM Fusion Repos
  - OpenSuse - Adds Pacman Repo(s)

---

## Arch Script

1. [Sub-Menu] Add AUR Support
    - Install [yay](https://github.com/Jguer/yay)
    - Install [trizen](https://github.com/trizen/trizen)
2. [Submenu] Manjaro Specific
    - Chroot into Manjaro
3. Reset to original mirror list
    - Resets to the original mirror list before any of my scripts did anything
      - note to self: put exact name and location here
4. Add Sound Support

5. Add Archive Support
    - Adds support for file archive formats

---

## Debian Script

1. Install Linux Firmware (both free and non-free packages)
2. Install Intel Microcode package
3. Install Archive support (may not be totally complete)
4. Add a few useful packages
   - Packages
     - synaptic apt-xapian-index policykit-1-gnome software-properties-common dirmngr apt-transport-https lsb-release ca-certificates apt-transport-https dirmngr
5. Check for/add "contrib" and/or "non-free" in sourcelist line.
6. Check/Add sudo permissions to sudoers file
7. Bulk Debian tasks
    - (all of the above tasks, without having to come back to this menu after each one)

## Fedora Script

1. (SubMenu) Individual Fedy Tasks
2. Add Fedy
3. Perform Common Fedy Tasks (all these tasks at once)

    - Fedy Tasks:

      1. Install Archive Support
      2. Install Microsoft Fonts
      3. Install Theme Engines
      4. Improve Font Rendering
          - note to self: this all needs testing

## OpenSuse Script

- no longer in Menu

- I am keeping this in case i add it back later

## Ubuntu Script

1. (SubMenu) PPA List Submenu
    - Multimedia related PPAs
      - ANoise - White Noise App
      - Audio-Recorder - Record audio from various sources
      - MakeMKV
      - SMPlayer
      - Strawberry
        - listed officially by the Strawberry website ... not really "third party"
    - Productivity App PPAs
      - LibreOffice
        - (TODO: Look into this .. this may no longer be needed)
    - System Tools PPAs
      - Boot Repair
      - Grub-Customizer
        - (note: consider removing this as many users have messed up their system with this)
      - Pantheon Tweak (for Elementary)
      - TeeJeePPA - For Timeshift on distros based on Ubuntu without Timeshift
        - (TODO: check Ubuntu repos .. this may no longer be needed)
      - Kubuntu Backport PPA

2. Decide if common (note: not all) apps associated with a particular PPA are installed by default when the PPA is added
    - Default = No
      - nothing is installed when the PPA is added, let the user decide

---
## Cleanup Scripts

1. (Arch Based) Clean Orphan Pacman packages
2. (Arch Based) CLean all but two of the most recent versions of a packages
   - this is from the cache of packages downloaded when using Pacman
3. (Debian/Ubuntu Based) Clean orphan packages from cache
4. (OpenSUSE) Clean out old kernels
    - I think this is automated and it keeps a few old but still useful kernels... this is for people with TONS of old kernels, if i am not mistaken
5. Clean unused Flatpaks
    - I have seen distros like Linux Mint hold some Flatpaks back when i try this ... that is normal .. I'd let Linux Mint do what it wants to avoid breakages
6. Clean Flatpak Cache

---

## Software Menu

1. Install mass software located in the $software variable in the f_variables.cfg file

    - Variety Wallpaper Changer/Gnome Note:
      - Tip Source: from [Variety/Gnome Github issue](https://github.com/varietywalls/variety/issues/12)
      - Install a Gnome Extention such as [KStatusNotifierItem/AppIndicator Support](https://extensions.gnome.org/extension/615/appindicator-support/). I can tell you from first-hand experience, this works ... the only issue I see is sometimes when Gnome does a major version update, some extensions break until they can get updated ... you MAY run into that, but overall this solution works

2. [Sub-Menu] Web Browsers

    1. Google Chrome
    2. [Chromium](https://www.chromium.org/chromium-projects/)
    3. [Ungoogled Chromium](https://ungoogled-software.github.io/) ([Github page](https://github.com/ungoogled-software/ungoogled-chromium))
    4. Firefox
    5. [LibreWolf](https://librewolf.net/) ([Flatpak](https://flathub.org/apps/io.gitlab.librewolf-community))
    6. [Vivaldi](https://vivaldi.com/)

3. [Sub-Menu] Office/Productivity/Programming Related Apps

    1. [Atom (Text/Code) Editor](https://github.com/atom/atom)

        - OpenSuse/(?) Fedora note:
          - in both cases I have it downloading the RPM but in the case of zypper and Opensuse anyway, it complains the RPM is not signed (which it isn't, and after multiple people keep bringing it up to the devs, they basically say they are not doing to sign the RPM)
          - I am not sure but i do not think the DEB and Debian/Ubuntu have this issue ... it's totally on the Atom Devs by the way .. NOT the distro ... I have no idea if this effects Fedora either ... if it does (you'd see a similar message from dnf), just do the same thing
          - SOLUTION: if it asks/prompts you about this, click "I" for Ignore and it will still install. This is NOT the way I wanted it (I want to script things the right way), but this issue is entirely out of my hands and out of say OpenSuse's hands too.

    2. [Microsoft VSCode]()
    3. [VSCodium](https://vscodium.com/)
       - Open Source, telemetry removed version of VSCode 
    4. [GitKraken](https://www.gitkraken.com/)
    5. [Typora](https://typora.io/)
    6. [Micro Terminal Text Editor](https://micro-editor.github.io/)


4. [Sub-Menu] Multimedia Apps

    1. (SubMenu) Install [MakeMKV](https://www.makemkv.com/)
       1. Compile and Install MakeMKV from source
       2. Install MakeMKV Flatpak
    2. [Audio Recorder](https://launchpad.net/~audio-recorder/+archive/ubuntu/ppa)
    3. [XNViewMP](https://www.xnview.com/en/xnviewmp/)
    4. (Media Player) [Deadbeef Media Player](https://deadbeef.sourceforge.io/)
    5. (Media Player) [Celluloid](https://celluloid-player.github.io/)
    6. (Media Player) [Strawberry Music Player](https://www.strawberrymusicplayer.org/)
    7. (Media Organizer) [Tiny Media Manager](https://www.tinymediamanager.org/)
    8. (Media Organizer) [MediaElch](https://mediaelch.github.io/)
    9. (Audio Editor) Tenecity (Audacity Fork)
    10. (Ubuntu only) Anoise - White Noise App
    11. (Audio Editor) [ocenAudio](https://www.ocenaudio.com/)
    K. Show info (without installing or compiling anything) about MakeMKV Key and when it expires
        - the app is free but you have to keep changing the key from month to month or on upgrades (I think)
5. [Sub-Menu] Shell Menu
   1. Install [Fish shell](https://fishshell.com/) and Oh-My-Fish
   2. Install [zsh](https://www.zsh.org/) (vanilla install)
   3. Install [zsh](https://www.zsh.org/) + a few addons (no [Oh-My-Zsh](https://ohmyz.sh/))
   4. Install [zsh](https://www.zsh.org/) + [Oh-My-Zsh](https://ohmyz.sh/)
   5. Install [zsh](https://www.zsh.org/) + [Zap Plugin Manager](https://github.com/zap-zsh/zap)
6. [Sub-Menu] Distro Specific tasks

    1. (Example) setup synaptic, gdebi and stuff like that
        - This is for commonly done tasks that people do post-install, for specific distros

---

## Theming Scripts

1. Linux Mint Theming
   1. Install Linux Mint Themes - Legacy way from the repos)
   2. Install current Linux Mint Themes - From Linux Mint's Github
   3. Install Legacy Linux Mint Themes - From Linux Mint's Github
   4. Install Mint-Y Icons - From Linux Mint's Github
   5. Install [MintYZ](https://github.com/SebastJava/mint-yz-theme) (not officially Mint's but based on Mint's) Themes - from Github
  

2. Install [Adapta Theming](https://github.com/adapta-project)
3. Install [Arc Theming](https://github.com/horst3180/arc-theme)
4. Install [Numix Theming](https://github.com/numixproject)
5. Install [Plata Theming](https://gitlab.com/tista500/plata-theme)
6. Install Misc. Icons
7. Install Misc Themes

A. All of the Above

- Tasks 6 and 7 are customized to each distro base based on what is in the repos and "what i find cool"

- Should (if available), work on any distro base ... whether I have all the needed packages for "all possible DEs/WMs" ... that is a work in progress
