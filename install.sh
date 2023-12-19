#!/bin/sh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" 

# insatll plugins
brew install --cask iterm2                                      # iterm2
brew install git                                                # git 
brew install python3                                            # python3.12
brew install ipython                                            # ipython
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh  # cargo
cargo install exa                                               # exa (analog for ls)

# base aliases
echo "alias l=\"exa -al --git --long --header --icons\"" >> ~/.zshrc
echo "alias ls=\"exa -al --git --long --header --icons\"" >> ~/.zshrc

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "Замени или добавь строку c ZSH_THEME='...' на "
echo "ZSH_THEME=\"powerlevel10k/powerlevel10k\""

# install neovim (lazy vim)
brew install neovim
mv ~/.config/nvim{,.bak}
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
git clone https://github.com/LazyVim/starter ~/.config/nvim 
rm -rf ~/.config/nvim/.git 
