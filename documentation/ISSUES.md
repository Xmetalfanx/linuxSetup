# Known Issues

## NON-issue

Right now if a supported version is not detected for whatever distro you are on, the scripts will not run in a sense. I AM NOT including "pre-releases" or betas as "yes this release is supported" until they are finally released for good from the distro maintainer.

This means you may be on a beta release that is not "fully official yet" and the 'is it supported or not?" check will be a "no" ... this is by design ... if it makes better sense to change this later, I am open to the idea.

## Author/Committer fix caused issues

This is also important ... i knew this was only my own repo and no other contributors ... i had a few old commits where i had to change the author .. some had "xmetal" some had "xmetalfanx@yahoo.com" when it should have been "Xmetalfanx@yahoo.com" for all of them ... I fixed this issue far too late but this means say with old issues where i linked to commits, those commits are not part of the branch anymore.

The commit content I linked to is the same and the "wrong author name/wrong committer" name is the ONLY thing that REALLY changed. If you see "This commit does not belong to any branch on this repository, and may belong to a fork outside of the repository." ignore that ... the changes you see are still valid and exactly the same.

bad git etiquette, I know

## Some RPMs are not being signed by the devs

- [May 2022 - still an issue with Atom]
  - I can not say this is the case for all apps; however, to my knowledge Atom is affected (see <https://github.com/atom/atom/issues/16499> for more info on Atom) ... they recommend ignoring it ... .and it still does work I can confirm but this doesn't seem like a good idea.

## KDE Neon Updating Output

- [April 2020 update: I am not sure this is still an issue]
  - The output of the updating is not as clean as apt-get upgrade or apt upgrade ... not sure if I can really do anything as that is on the way they upgrade via the CLI and has nothing to do with my scripts

## MakeMKV Compiling

not sure this is an issue but IF something ever goes wrong (this is sort of a note-to-self)... check out [This commit](https://github.com/Xmetalfanx/linuxSetup/commit/58b1a2bb2e11817ffc01f8f645a5323ed4430602)

## Czhawka needing gtk4 support

Post 4.1.0 versions of Czhawka need gtk4 packages and not every distro (Debian, OpenSUSE for example) may have this ... not wanting to hardcode version 4.1.0 in NOR wanting to add alot of extra code for certain versions of certain distros over a single app's AppImage... I have decided to, hardcode the last gtk3 version in as that is what the developer recommends for older distros.  I may come back to this later and when all distros seem to have better gtk4 support ... I will switch back to using "whatever the latest version on Github" is
