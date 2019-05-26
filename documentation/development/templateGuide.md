### Idea

#### AUR install 

-)  Call 'aurInstall' 
    1) takes $packageName as an argument
    2)  pass to a function to check if trizen or yay is installed
        1)  if both are installed, the user is prompted for a menu for which one they rather use (if you are that advanced, and extra menu isn't that bad ... after all you are on arch)
            -)  hmm this makes me think ... should I somehow make a default option so if a user has BOTH installed but wants to set one (in my scripts) as default, they can ... that would mean less prompts.
        2) if one or the other is installed, the right steps are taking (using $packageName)

I can see a name conlusion issue, with me getting goofed up

- installYay and installTrizen = to actually install yay or trizen

---
## ppafunction Template
This is the setup for adding a PPA function

### ppaFunction format 

function PPAName
{
    # The General name of the app or program you are using the PPA for
	PPAName=""

    # package name or names that will be installed 
	packageNames=""

    # this is the PPA source in the forum of "ppa:nameOfPPA/ppa" 

}

#### Example 

function installAudioRecorderPPA()
{

	PPAName="Audio Recorder"
	PPASource=ppa:audio-recorder/ppa

	packageNames=audio-recorder
	supportedBase=""

	addPPAFunction $PPAName $PPASource

	$install $packageNames

}

- supported base -  is something I have not put into practice yet, but the idea is to list bases that the ppa is meant to work for and IF you are on some other base, the ppa will not install 

1) I need the name of the distro you are on 
2)  i NEED TO THEN ADD the list of supported bases to each ppa function 

3) I need to go through the list of distros on "supportedBases"  

################################################################################################################
# Idea 
function programFoobar
{
    progName=""
    progTitle=""
    programHomepage=""
    debURL=""
    rpmURL=""

    # Universal Apps 
    snapName=""
    snapType=""
    flatpak=""
    appImageURL=""

}


it will probably be best clearing out (say removing the rpmURL line of that is not used) when i am using these ... this should stay as complete as possible here so i can copy and paste this later on 

IF there are say DEB RPM, and snaps avaiable ... I say fill out all the info even if only some are used ... I can always switch things later with no effort at all that way 