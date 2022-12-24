#!/usr/bin/bash

# Install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --bin

# Install tmux
sudo curl -Lo /usr/local/bin/tmux https://github.com/nelsonenzo/tmux-appimage/releases/latest/download/tmux.appimage
sudo chmod +x /usr/local/bin/tmux

# Install lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep '"tag_name":' |  sed -E 's/.*"v*([^"]+)".*/\1/')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
sudo tar xf lazygit.tar.gz -C /usr/local/bin lazygit
rm -f lazygit.tar.gz

# Install neovim
sudo curl -Lo /usr/local/bin/nvim https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
sudo chmod +x /usr/local/bin/nvim

# Install poetry
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python3 -

# Install zinit
NO_INPUT=1 bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

# Oh My Posh
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh

# Remove created config files
rm -f $HOME/.zshrc

