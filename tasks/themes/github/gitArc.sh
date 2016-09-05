function gitArcThemes
{
echo "Installing horst3180's Arc Theme from Git "
git clone https://github.com/horst3180/arc-theme.git
cd arc-theme
mkdir ~/.themes/arc-theme
mv common/* ~/.themes/arc-theme
cd ..
# cleanup
rm -rf arc-theme

}


function gitArcIcons
{
echo "Installing horst3180's Arc Icons "
echo ""
git clone https://github.com/horst3180/arc-icon-theme.git
cd arc-icon-theme
mkdir ~/.icons/arc-git-icon
mv Arc ~/.icons/arc-git-icon
cd ..
#cleanup
rm -rf arc-icon-theme
}

# Todo: Add Openbox Arc Theme
function gitArcOpenBox
{
  echo "Installing 'Unofficial' Arc Theme Component for OpenBox"
  mkdir ~/.themes/Arcbox


}


#######################################################


gitArcThemes
gitArcIcons
