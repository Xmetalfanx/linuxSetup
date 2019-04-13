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

