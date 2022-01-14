# Wine Checks

## Checks

### Default Repo Checks

| Task/Goal                    | Debian | Linux Mint 19 | Ubuntu |
| ---------------------------- | ------ | ------------- | ------ |
| Default repo Install of Wine | Pass   | Pass          | Pass   |

### WineHQ Checks

| Task/Goal                                     | Debian                    | Linux Mint 19 | Ubuntu |
| --------------------------------------------- | ------------------------- | ------------- | ------ |
| Install of any needed dependencies for WineHQ | Pass                      | Not Needed    | Pass   |
| WineHQ Install                                | Pass (stable and Testing) | Pass          | Pass   |

- In both default Wine and WineHQ tests, a fresh install of Ubuntu Mate 20.04 (final ISO.... no beta ISOs in otherwards) was what I used to test
- Debian Stable and Testing, were tested (Buster and Bullseye)

---

## Dependencies

### Debian

    https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Debian_10/amd64/libfaudio0_20.01-0~buster_amd64.deb
