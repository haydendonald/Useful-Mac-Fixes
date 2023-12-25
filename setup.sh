# Run all the scripts!

echo "Lets go!"

chmod +x ./installs/install_xcode.sh
chmod +x ./installs/install_homebrew.sh
chmod +x ./installs/install_apps.sh
chmod +x ./installs/mac_settings.sh

sh ./installs/install_xcode.sh
sh ./installs/install_homebrew.sh
sh ./installs/install_apps.sh
sh ./tweaks/mac_settings.sh
