# Tasks these scripts can accomplish

## All supported distros

- Update your distro including Snaps or Flatpaks if that support is enabled
  - Enable Flatpak or Snap support
- Optimize mirrors on certain distros to get a faster download
- Install codec packages
- Install common software not always installed by default
- Install different theme packs for various desktops
  (KDE/Plasma 5 not really included since that theme installing is built into Plasma)
- Cleanup different aspects of your Linux system
- Displays various info about the current system
- Detect status of and (if disabled) re-enable os_prober

## Distro specific

- (For Debian - code is being redone so this is an untested WIP)
  - Install Linux Firmware packages (non-free i think that some users need)
  - Add user to sudoers file
  - Add "contrib" and "nonfree" repos
  - Add Archive Support
  - Add/Installs Intel Microcode packages

- (For Fedora)
  - Either install Fedy or manually apply various Fedy tasks
    - Install Archive support
    - Install Microsoft Fonts
    - Install Codecs
    - Install Theme Engines
    - Improve font rendering

- (For OpenSUSE)
  - Install Cinnamon
    - since there is no Cinnamon spin I am aware of,
    this is what I have used in the past ..
    use say JWM to get an OpenSUSE system up and then run this.

- (For Ubuntu)
  - Disable and remove the Firefox snap and replace it
    with the normal package from a Mozilla PPA
  - Install common packages not always installed by default
    - Including Synaptic, Gnome-tweak and Gdebi
