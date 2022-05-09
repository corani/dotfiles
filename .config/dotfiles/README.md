# Dotfiles

See: https://www.atlassian.com/git/tutorials/dotfiles

```bash
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
git clone --bare git@github.com:corani/dotfiles $HOME/.dotfiles
dotfiles config --local status.showUntrackedFiles no
dotfiles checkout
```

## Install

```bash
apt install tmux tmuxinator curl git fortune-mod cowsay direnv pinentry-tty tree htop mc

mkdir -p ~/.config/asdf ~/Install

wget https://github.com/sharkdp/bat/releases/download/v0.20.0/bat_0.20.0_amd64.deb
wget https://github.com/Peltoche/lsd/releases/download/0.21.0/lsd_0.21.0_amd64.deb
wget https://github.com/wfxr/code-minimap/releases/download/v0.6.4/code-minimap_0.6.4_amd64.deb
wget https://github.com/dandavison/delta/releases/download/0.12.1/git-delta_0.12.1_amd64.deb
wget https://github.com/docker/compose/releases/download/v2.5.0/docker-compose-linux-x86_64
dpkg -i *.deb

git clone https://github.com/asdf-vm/asdf.git ~/Install/asdf
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
git clone https://github.com/junegunn/fzf.git ~/Install/fzf

~/Install/fzf/install
cp ~/Install/fzf/bin/fzf ~/.local/bin/
```

## ASDF

```bash
asdf plugin add neovim
asdf install neovim latest
asdf global neovim latest
```

- elixir 1.13.1-otp-24
- erlang 24.2
- golang 
- neovim
- zoxide
- github-cli 
- kubectl
- ripgrep

