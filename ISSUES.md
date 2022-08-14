# Known Issues
Right now if a supported version is not detected for whatever distro you are on, the scripts will not run in a sense. I AM NOT including "pre-releases" or betas as "yes this release is supported" until they are finally released for good from the distro maintainer.

This means you may be on a beta release that is not "fully official yet" and the 'is it supported or not?" check will be a "no" ... this is by design ... if it makes better sense to change this later, I am open to the idea.

## Some RPMs are not being signed by the devs

- [May 2022 - still an issue with Atom]
  - I can not say this is the case for all apps; however, to my knowledge Atom is affected (see <https://github.com/atom/atom/issues/16499> for more info on Atom) ... they recommend ignoring it ... .and it still does work I can confirm but this doesn't seem like a good idea.

## KDE Neon Updating Output

- [April 2020 update: I am not sure this is still an issue]
  - The output of the updating is not as clean as apt-get upgrade or apt upgrade ... not sure if I can really do anything as that is on the way they upgrade via the CLI and has nothing to do with my scripts

### MakeMKV Compiling

not sure this is an issue but IF something ever goes wrong (this is sort of a note-to-self)... check out [This commit](https://github.com/Xmetalfanx/linuxSetup/commit/58b1a2bb2e11817ffc01f8f645a5323ed4430602)

### XNViewMP AppImage issues

- [My Issue](https://github.com/Xmetalfanx/linuxSetup/issues/130)

- This is happening on recent... (0.98 and newer AppImages, I think) versions but AppImages 0.97 or earlier work fine on the distros having the issues with the newer AppImage

- Message/error: `"symbol lookup error: /usr/lib/libkrb5.so.3"` when running the newer appimages on certain distros

Xnview forum links

- [Link 1](https://newsgroup.xnview.com/viewtopic.php?f=82&t=41879&p=169714&hilit=appimage#p169714)
- [Link 2](https://newsgroup.xnview.com/viewtopic.php?f=82&t=41294)

note: i have the packages that the dev mentioned installed ... I checked that before even searching the forums ... others report having it installed as well, but the same issue persists
