apps=(
  bartender
  cleanmymac
  github
  google-chrome
  spotify
  vlc
  1password
  betterdiscord-installer
  visual-studio-code
  microsoft-office
  messenger
  angry-ip-scanner
  onedrive
  rectangle
  mouse-fix
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
for app in ${apps[@]}
do
  echo "Installing $app"
  brew install --cask $app || true
done