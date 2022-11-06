# Make window focus follow the mouse
brew tap koekeishiya/formulae
brew install yabai
mkdir -p ~/.config/yabai/
printf 'yabai -m config focus_follows_mouse autofocus' >> ~/.config/yabai/yabairc
brew services start yabai