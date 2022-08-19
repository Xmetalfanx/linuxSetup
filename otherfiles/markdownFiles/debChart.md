programURL= the DEB link  
    * chosing this to stay consistant 

DEBs

- stuff via ppas do not count and can be removed from this list or just marked as PPA 

    | Program Name                              | Key Needed? | is it re-coded in the new format | Does it Work |
    | ----------------------------------------- | ----------- | -------------------------------- | ------------ |
    | xnviewmp                                  | No          | Yes                              | Not Tested   |
    | vivaldi                                   | Yes         | Yes                              | Not Tested   |
    | google chrome                             | Yes         | Yes                              | Not Tested   |
    | deadbeef                                  | No          | Maybe tricky - sourceforge URL   |              |
    | strawberry                                | No          |                                  |              |
    | gitkraken                                 | No          | Yes                              | Not Tested   |
    | vscode                                    | No          | Yes                              | Not Tested   |
    | atom                                      | ---         |                                  |              |
    | (ppa?) audio recorder                     | PPA         | PPA                              | PPA          |
    | (related to wine) libfaudioURLBuster64bit | No          | No                               | Not Tested   |


- "key needed?" means another step to add it ... if installing a certain deb does that automatically, that doesn't count 


1) in each function i need to get an exact link to the deb and then pass THAT to "metaExternalDownload" and that should do the rest


2) the handleDownloads step should check (using new slimmed code) to check if gdebi exists and install if not, THEN install the deb 


3) NOTHING should be calling the gdebInstall function that is not inside metaExternal (or one if it's sub functions )

4) if needed (before metaExteralDownload call) REMEMBER to add any needed Keys in the individual software's function 