# Tests before next release

## Third Party related tests (as of March 23 2023)

| Program Tested (type)      | Arch Base | OpenSUSE Base       | Ubuntu Base |
| -------------------------- | --------- | ------------------- | ----------- |
| czhawka (AppImage)         | Pass      | fail  (1)  pass (2) | Pass        |
| TinyMediaManager (sh file) | Pass      | fail (1) pass (2)   | Pass        |

(1) - fails on Plasma 5.... is this a DE specific issue? 
(2) - Passes on Mate ... what is going on ? 

### Code to remove Snap support

- Issue: https://github.com/Xmetalfanx/linuxSetup/issues/250

Ubuntu Base - Pass