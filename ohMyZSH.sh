# Install Oh My Zsh if not already installed
if [ -d "$HOME/.oh-my-zsh" ]; then
    echo "Oh My Zsh is already installed at $HOME/.oh-my-zsh. Skipping installation."
else
    echo "Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# Set Zsh as the default shell if requested
if [[ "$MAKE_DEFAULT_SHELL" == "yes" ]]; then
    echo "Setting Zsh as the default shell..."
    chsh -s $(which zsh)
else
    echo "Zsh installation complete. Skipping setting it as the default shell."
fi

#### PLUGINS ####

# Install Zsh autosuggestions
if [ ! -d "$HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions" ]; then
    echo "Installing Zsh autosuggestions..."
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
else
    echo "Zsh autosuggestions already installed. Skipping."
fi

# Install Zsh syntax highlighting
if [ ! -d "$HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" ]; then
    echo "Installing Zsh syntax highlighting..."
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
else
    echo "Zsh syntax highlighting already installed. Skipping."
fi

rm ~/.zshrc
cp .zshrc ~/.zshrc