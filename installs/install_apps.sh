apps=(
  github
  google-chrome
  spotify
  visual-studio-code
  microsoft-office
  angry-ip-scanner
  onedrive
  rectangle
  git
  coreutils
  cmake
  node
  gcenx/wine/wine-crossover
  winetricks
  docker
  appcleaner
  the-unarchiver
  barrier
  raspberry-pi-imager
  discord
  zoom
  bambu-studio
  iina
  gitkraken
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
for app in ${apps[@]}
do
  echo "Installing $app"
  brew install --cask $app || true
done
