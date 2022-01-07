# Dotfiles

See: https://www.atlassian.com/git/tutorials/dotfiles

```bash
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
git clone --bare git@github.com:corani/dotfiles $HOME/.dotfiles
dotfiles config --local status.showUntrackedFiles no
dotfiles checkout
```

## ASDF

- elixir 1.13.1-otp-24
- erlang 24.2
- golang 1.17.5
- neovim nightly
- zoxide 0.8.0
- github-cli 2.4.0 
