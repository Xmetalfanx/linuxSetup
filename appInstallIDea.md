## Start
1. The installApps (Universal app installer function) gets called.. with an unknown # of apps

## Inside installApp function

2. Intial count is set to 1
3. For-loop starts that loops as long as their is input .. aka there is another program in the list of input.
  - A pass of the current appName is done to a checkFunction (name will be more specific later ..)
    - Inside of this function there is a check to see if the current appname is equal to different app names where extra steps need to be taken to install on one of the five (Ubuntu-based, Fedora based, OpenSuse Based, Solus, or Arch Based distros that are in this entire script I am doing )....
      - if True ... pass to that special install function
      - if False ... then exit to "3." and next appName is read into the for-loop if there is one


## Running into logic issues
### Ideas
I was working on getting a loop going and forgot "what do i do now?".

I think there should be a call "installApp <code for appName[currentApp Counter] here> "
- what specific code to run based on what distro it is ... will be handled by installApp ... no problem

This call will be in the for-loop after ...
- though if the check turns out to be true ... (what I mentioned above) then this should not be run ...
- OR ... edit the functions (say "installAtomEditor" to do what it needs to but TO NOT install it PERHAPS ...I will have to think about the logic of this)

at the end ... still inside the for i loop from 3. ... the counter should increase.... or skip the count=1 outside the for loop and just for a counter=counter+1 (will this go to 1 if the count hasn't started yet?) as the FIRST line inside of the for-loop
