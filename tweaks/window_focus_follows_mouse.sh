# Make window focus follow the mouse
#https://github.com/koekeishiya/yabai/wiki
brew install koekeishiya/formulae/yabai
brew services start yabai
yabai -m config focus_follows_mouse autofocus
echo "If it hasn't started enable in security and reboot ;)"