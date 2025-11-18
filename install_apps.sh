echo "Installing xcode"
xcode-select --install

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
    echo "Installing homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo '# Set PATH, MANPATH, etc., for Homebrew.' >> ~/.zprofile
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Update homebrew recipes
echo "Updating homebrew..."
brew update

apps=(
  google-chrome
  visual-studio-code
  microsoft-office
  angry-ip-scanner
  rectangle
  git
  coreutils
  cmake
  node
  gcenx/wine/wine-crossover
  winetricks
  docker
  the-unarchiver
  raspberry-pi-imager
  discord
  zoom
  bambu-studio
  gitkraken
  google-drive
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
for app in ${apps[@]}
do
  echo "Installing $app"
  brew install --cask $app || true
done

