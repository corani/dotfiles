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
apt install curl git fortune-mod cowsay direnv pinentry-tty htop mc bison gawk bash-completion

mkdir -p ~/.config/asdf ~/Install

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

wget https://github.com/Peltoche/lsd/releases/download/0.23.1/lsd_0.23.1_amd64.deb
wget https://github.com/wfxr/code-minimap/releases/download/v0.6.4/code-minimap_0.6.4_amd64.deb
dpkg -i *.deb

wget https://github.com/docker/compose/releases/download/v2.11.0/docker-compose-linux-x86_64
wget https://github.com/ivaaaan/smug/releases/download/v0.3.2/smug_0.3.2_Linux_x86_64.tar.gz
wget https://github.com/zigtools/zls/releases/download/0.9.0/x86_64-linux.tar.xz

git clone https://github.com/asdf-vm/asdf.git ~/Install/asdf
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
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
- fzf
- bat 
- delta 
- tmux 
