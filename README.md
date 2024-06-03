# DOTFILES

## REQUIREMENTS

- Install Homebrew.
- Install GNU Stow to symlink config files.

Or use install script:

```bash
~/.dotfiles/bin/bin/install
```
### NERDFONT

Download and install nerd font.

```
https://github.com/ryanoasis/nerd-fonts
```

## INSTALL

Clone repository into `home/.dotfiles`.

```bash
git clone https://github.com/evileye89/dotfiles.git ~/.dotfiles
```

## USAGE

### Install brew packages.

```bash
brew bundle --file=~/.dotfiles/Brewfile
```

### Symlink needed configs with stow. 

```bash
cd ~/.dotfiles
```

```bash
stow bin/
stow iterm/
stow nvim/
stow tmux/
stow zsh/
```
```bash
cp git/.gitconfig ~
```
