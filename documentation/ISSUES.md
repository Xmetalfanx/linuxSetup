# Known Issues/Notes

## NON-issue

### Beta releases

Right now if a supported version is not detected for whatever distro you are on, the scripts will not run in a sense. I AM NOT including "pre-releases" or betas as "yes this release is supported" until they are finally released for good from the distro maintainer.

This means you may be on a beta release that is not "fully official yet" and the 'is it supported or not?" check will be a "no" ... this is by design ... if it makes better sense to change this later, I am open to the idea.

### Theming section

- Much of the theming I have included are ment for GTK desktops, and at least not Plasma.  I have not tested what may appear or not on LXQT which is .. QT too, along with Plasma.  If you install this theming and are on Plasma, but do not see any of the themes, that is not a bug.
- Please look in the appearance sections of Plasma settings for theming related to QT.
- Not really sure if there is a LXQT location to download themes .. if i start to see "theme_name_qt" packages, I may add that to the theming section if i feel the theme is good.

## Issues

### Author/Committer fix caused issues

This is also important ... i knew this was only my own repo and no other contributors ... i had a few old commits where i had to change the author .. some had "xmetal" some had "xmetalfanx@yahoo.com" when it should have been "Xmetalfanx@yahoo.com" for all of them ... I fixed this issue far too late but this means say with old issues where i linked to commits, those commits are not part of the branch anymore.

The commit content I linked to is the same and the "wrong author name/wrong committer" name is the ONLY thing that REALLY changed. If you see "This commit does not belong to any branch on this repository, and may belong to a fork outside of the repository." ignore that ... the changes you see are still valid and exactly the same.

This is bad git etiquette, I know

### Some RPMs are not being signed by the devs

- [May 2022 - still an issue with Atom]
  - I can not say this is the case for all apps; however, to my knowledge Atom is affected (see <https://github.com/atom/atom/issues/16499> for more info on Atom) ... they recommend ignoring it ... .and it still does work I can confirm but this doesn't seem like a good idea.

### MakeMKV Compiling

- May 2024: this is an issue and due to some dev packages needed and in the instructionschanging or getting removed in distro repos, this doesn't work .. I will HOPEFULLY address this if i can.

### Czhawka

#### On some distros results in gtk4 related issues

- [ October 2025: this may no longer be an issue]

- On some distros I have seen errors but it works without issues on others.  One that comes to mind is OpenSUSE Leap 15.5 which is End of Life, December 2024.   I have not figured out how to get this appimage working without gtk4 issues, though a fresh install of OpenSUSE Leap 15.6, the AppImage "works out of the box"

#### MXLinux Default theme

I saw this not working on MXlinux and from a terminal i saw gtk.css messages... I (randomly picked) changed the theme to arc or adapta (if i recall), and tried again ... the appimage loaded no problem
