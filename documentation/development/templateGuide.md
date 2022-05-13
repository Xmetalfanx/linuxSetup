# Non-Repo Installs

## Flatpak and Snap

### Flatpaks

- _What gets passed_ (in order)
  - **programName/programTitle**,
  - **flatpakName**
  - **flatpakRepo**

- *installFlatpakApp*: `flatpak install $flatpakInfo $flatpakRepo`
- Example

  - TODO

### Snaps

- _What gets passed_

  - **programName/programTitle**,
- **snapName**, and
- **snapType**
- Function
  - *installSnapApp*: `snap install (foobar) $snapName`
    - the foobar would be `--classic` or `--beta` based on what $snapType is
    - _$snapType_ has to be passed but the install line is doing what it does BASED ON $snapType ... that is why it is not in the install line

* * *

## Tarball, Zip, RPM, DEB, Appimages

- function name: **_metaExternalDownload_**
  - What this function does
    - Strips info based on the URL (for use later on)
    - Downloads any of the file extensions (listed below)
    - Extracts/Installs
      - Extract zip, and tar files
      - Installs RPM (using zypper or dnf vs "rpm -i" since the former handles dependencies better)
      - Asks if a user wants to "+x" the AppImage
- Remember: the third party download function(s), handles
  - _.tar.gz|.tgz|.tar.bz2|.zip_
  - _.deb|.rpm|_
    - "Handle DL" step should install ... .
    - right now, i switched from "rpm -i" on RPM files to `dnf` or `zypper` because they seems they handle dependencies when rpm -i doesn't do that
  - _.AppImage_
    - *todo*: code to ASK the user if they want the script to +x for them should be in the "extract/handle" step.... NONE of that (or even instructions how to run) should be in individual app locations

* * *

## Install from the AUR

1. Call _aurAppInstall_

    - -   name of function may change later

    - What gets passed
        - **packageName**

2. what happens in aurAppInstall

    1. Pass to a function to check if _trizen_ or _yay_ is installed

    - ​ if both are installed, the user is prompted for a menu for which one they rather use (if you are that advanced, and extra menu isn't that bad ... after all you are on arch)
        - ​ if one or the other is installed, the right steps are taken using that one
            - (if a user has one but not the other and wants to try the other, this may be an issue i need to address down the line )

- functions _installYay_ and _installTrizen_ = to actually install yay or trizen, not apps via those two AUR Helpers

* * *

## Universal App Function

IN THEORY, I should be able to pass anything that downloads these formats to _metaExternalDownload_ with the right (say "debURL" or "tarballURL") as an argument

The example below is a general guide

    function programFoobar`
    {
        programName=""`
        programTitle=""`
        programHomepage=""
        debURL=""
        rpmURL=""
        tarURL=""

         # Universal Apps
        snapName=""
        snapType=""

        flatpak=""

        appImageURL=""

        ## template does not assume two cases are the same
        ## if an app is only in one format (Etcher being only an AppImage comes to mind). the case check below is NOT needed.

        case $distroBase in

            arch) ;;

            fedora) ;;

            opensuse) ;;

            solus) ;;

            ubuntu)  ;;

        esac

    }

- **Supported formats**
  - tar.gz. tgz. tar.bz2, DEB, RPM, AppImage
- it will probably be best clearing out (say removing the rpmURL line of that doesn't deal with RPM installs for that app) when i am using these ...
  - this should stay as complete as possible here so i can copy and paste this later on
- IF there are say DEB RPM, and snaps available ... I say fill out all the info even if only some are used ... I can always switch things later with no effort at all that way
  - example - this means I may use a DEB for the ubuntu base, but i can then switch later with the snap info for that app already filled out

* * *

## PPA Related

- **ppafunction Template**

This is the setup for adding a PPA function

    function NamePPA
    {
        # The General name of the app or program you are using the PPA for
        PPAName=""

        # package name or names that will be installed
        packageNames=""

        # this is the PPA source in the forum of     "ppa:nameOfPPA/ppa"

    }

### Example

    function installAudioRecorderPPA()
    {

        PPAName="Audio Recorder"
        PPASource="ppa:audio-recorder/ppa"

        # new idea at the time of writing this guide
        # These are seperated by a space
        PPAPackages=""

        packageNames=audio-recorder
       supportedBase="xenial bionic cosmic disco"

        addPPAFunction $PPAName $PPASource

        installApp $packageNames

    }

- *supported base* - the list of ubuntu bases the ppa supports
  - separate by spaces only
  - ??? - I think I should have a case/if statement around the install code ... maybe even a var to control that "$ppaInstallApp" or something ... if yes/true ... the app installs ... if not ... it returns to the menu
    - apps listed in PPAPackages var

* * *

## (Summary) Functions - What to pass/what is needed

- This info is a summary of what is above

  - *Snap Installs*,

    - [Idea] Shouldn't i have the first argument as the _programName_ (pushing the snap name to second, and _snapType_ to third argument)
    - First Argument is the snap name  (EXACTLY)
    - The Second Argument is the snap type
      - examples
        - classic - installs with `snap install --classic`
      - beta - installs with `snap install --beta` (branch)

- *Flatpak Installs*,

    1. $flatpakRepo (example "flathub" ... i think)
    2. $flatpakName - EXACT name of flatpak

  - *Third Party _(DEB, AppImage, Tarballs, ..etc)_*

  - the first argument is programName/programTitle (I haven't decided  yet)
    - the second argument varies but it is the link to the file, to be downloaded
