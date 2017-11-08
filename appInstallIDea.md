## Start
1. The installApps (Universal app installer function) gets called.. with an unknown # of apps

## Inside installApp function

2. Initial count is set to 1
3. For-loop starts that loops as long as their is input .. aka there is another program in the list of input.
  1. Count = count + 1 (hopefully at the start this will just set the count )
  2. A pass of the current appName is done to a checkFunction (name will be more specific later ..)
    - Inside of this function there is a check to see if the current appname is equal to different app names where extra steps need to be taken to install on one of the five *(Ubuntu-based, Fedora based, OpenSuse Based, Solus, or Arch Based distros that are in this entire script I am doing )*....
    -  This is due to the app not being in default repos


    **WHERE DO I PUT THE install part**

## Running into logic issues
### Ideas
I was working on getting a loop going and forgot "what do i do now?".

I DONT want to call the install on each pass through the loop...

I am THINKING of redoing the special (say installAtomEditor) functions to add things that it needs to but perhaps NOT install things ... that can be done outside of the for-loop later after the for-loop is done checking if any of the apps need extra processing (to add them to the repo)
  - This could have issues in other parts of the script though as long as i remember with X Y or Z app I need to run the "installAtomEditor" function AND THEN install it in another step that is not bad.

  ALSO the logic of changing that name (again thats an example) from "installAtomEditor" to "addAtomRepo" or some ... form of that may be better since no install is being done.

  
