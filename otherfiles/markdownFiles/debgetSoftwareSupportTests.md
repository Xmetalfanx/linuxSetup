# Ubuntu base

| Software Name  | with deb-get installed | wo/ deb-get installed                  |
|----------------|------------------------|----------------------------------------|
| Audio-Recorder | Pass                   | Pass      |
| Deadbeef       | Pass                   | Pass                                   |
| GitKraken      | Fail                   | Pass                                |
| Google Chrome  | Pass                   | Pass                                   |
| Strawberry     | Pass                   | Pass |
| Vivaldi        | Pass                   | Pass                                   |
| vscode         | Pass                   | Pass                                   |

Issue is it knows Mint is ubuntu based but nowhere in the os-release file do i see "jammy" so it has no idea what branch it is

* says the ppa is not for jammy when there is jammy ppa support

# RPM related due to refactoring
## This may be too many tests but I rather be sure 
| Software Name  | RPM Install |
|----------------|-------------|
| GitKraken      |             |
| Google Chrome  |             |
| Strawberry     |             |
| Vivaldi        |             |
| vscode         |             |
