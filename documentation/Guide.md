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
    - Install yay option
    - Install trizen option
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
   - Like Synaptic 
   - TODO: get names of other packages
5. Check for/add "contrib" and/or "non-free" in sourcelist line.
6. Check/Add sudo permissions to sudoers file
7. Bulk Debian tasks (all of the above tasks, without having to come back to this menu after each one)


## Fedora Script

1. Add Fedy
2. Perform Common Fedy Tasks (all these tasks at once)

    - Fedy Tasks -

      1. Install Archive Support
      2. Install Microsoft Fonts
      3. Install Theme Engines
      4. Improve Font Rendering
          - note to self: this all needs testing

## OpenSuse Script

- no longer in Menu

- I am keeping this in case i add it back later

## Ubuntu Script

1. Decide if common (note: not all) apps associated with a particular PPA are installed by default when the PPA is added
    - Default = No ... nothing is installed when the PPA is added, let the user decide

- Different tasks like "automatically setting up a number of tasks, post ElementaryOS install, will likely go here

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
    2. Chromium
    3. Firefox
    4. Vivaldi

3. [Sub-Menu] Office/Productivity/Programming Related Apps

    1. Atom (Text/Code) Editor

        - OpenSuse/(?) Fedora note:
          - in both cases I have it downloading the RPM but in the case of zypper and Opensuse anyway, it complains the RPM is not signed (which it isn't, and after multiple people keep bringing it up to the devs, they basically say they are not doing to sign the RPM)
          - I am not sure but i do not think the DEB and Debian/Ubuntu have this issue ... it's totally on the Atom Devs by the way .. NOT the distro ... I have no idea if this effects Fedora either ... if it does (you'd see a similar message from dnf), just do the same thing
          - SOLUTION: if it asks/prompts you about this, click "I" for Ignore and it will still install. This is NOT the way I wanted it (I want to script things the right way), but this issue is entirely out of my hands and out of say OpenSuse's hands too.

    2. Microsoft VSCode

4. [Sub-Menu] Multimedia Apps

    1. Tiny Media Manager
    2. MakeMKV

        - Currently having issues on Opensuse Leap

    3. Audio Recorder
    4. XNViewMP
    5. Deadbeef Media Player

        K. Show info (without installing or compiling anything) about MakeMKV Key and when it expires
        \- the app is free but you have to keep changing the key from month to month or on upgrades (I think)

5. [Sub-Menu] Distro Specific tasks

    1. (Example) setup synaptic, gdebi and stuff like that
        - This is for commonly done tasks that people do post-install, for specific distros

---

## Theming Scripts

1. Install Adapta Theme
2. Install Arc Theme
3. Install Mint-Y Theme
4. Install Numix Theme
5. Install Plata Theme
6. Install Misc. Icons
7. Install Misc Themes

A. All of the Above

- Tasks 6 and 7 are customized to each distro base based on what is in the repos and "what i find cool"

- Should (if available), work on any distro base ... whether I have all the needed packages for "all possible DEs/WMs" ... that is a work in progress
