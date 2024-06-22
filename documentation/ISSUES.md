# Known Issues/Notes

## NON-issue

### Beta releases

I AM NOT including "pre-releases" or betas as "yes this release is supported" until they are finally released for good from the distro maintainer.

This means you may be on a beta release that is not "fully official yet" and the 'is it supported or not?" check will be a "no" ... this is by design ... if it makes better sense to change this later, I am open to the idea.

### Theming section

Much of the theming I have included are ment for GTK desktops, and not Plasma/KDE, which uses QT.
(I have not tested what may appear or not on LXQT which is .. QT as well.)

If you install this theming and are on Plasma, but do not see any of the themes, that is not a bug.

Solution:

- Please look in the Appearance sections of Plasma settings for theming related to QT.
- Not really sure if there is a LXQT location to download themes .. if i start to see "theme_name_qt" packages, I may add that to the theming section if i feel the theme is good.

## Issues

### Author/Committer fix caused issues

This is also important ...

I knew this was only my own repo and no other contributors.

I had a few old commits where i had to change the author .. some had "xmetal" some had "xmetalfanx@yahoo.com" when it should have been "Xmetalfanx@yahoo.com" for all of them ...
I fixed this issue far too late but this means say with old issues where i linked to commits, those commits are not part of the branch anymore.

The commit content I linked to is the same and the "wrong author name/wrong committer" name is the ONLY thing that REALLY changed. If you see "This commit does not belong to any branch on this repository, and may belong to a fork outside of the repository." ignore that ... the changes you see are still valid and exactly the same.

This is bad git etiquette, I know

### Some RPMs are not being signed by the devs

- [May 2022 - still an issue with Atom]
  - I can not say this is the case for all RPM apps installed via my scripts
  - To my knowledge Atom is affected
    - see [Atom RPM packages should be GPG signed for use in package repositories #16499](https://github.com/atom/atom/issues/16499)
    - they recommended ignoring it, though i think that changed to passing the no-gpg check type flag which i may look into
    - If i am not mistaken, stuff like Chrome (via RPM install) has the same issue

### MakeMKV Compiling

May 2024: The official instructions I used to get the list of dev packages is the issue.
Some of the dev packages have been renamed(?) or removed in distro repos

I will HOPEFULLY address this if I can.

### Czhawka

#### On some distros results in gtk4 related issues

Example of issue:

- Leap 15.5 (EOL in December 2024) givs gtk4 related errors
- Leap 15.6 (fresh VM install with nothing special done) is NO problem at all

#### MXLinux Default theme

- There is an issue with the default MXLinux (I tried XFCE) and gtk.css errors.
- Changing the default theme to Arc or Adapta (I forgot which i tested) fixed it.
  - czhawka's AppImage ran fine at that point.
