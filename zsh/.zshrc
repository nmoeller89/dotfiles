#
# OHMYZSH
#

#export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins-Overview
#plugins=(
#  git
#  brew
#  zsh-syntax-highlighting
#  zsh-autosuggestions
#  fzf
#  nvm
#  rbenv
#)

#source $ZSH/oh-my-zsh.sh

#
# BREW
#

if (( ! $+commands[brew] )); then
  BREW_LOCATION="/home/linuxbrew/.linuxbrew/bin/brew"
  eval "$("$BREW_LOCATION" shellenv)"
  unset BREW_LOCATION
fi

#
# OHMYPOSH
#

eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/theme.toml)"

#
# ZSH Tools
#

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fpath=(path/to/zsh-completions/src $fpath)

#
# ALIASES
#

if [ -f ~/.zsh_aliases ]; then
  . ~/.zsh_aliases
fi

#
# SCRIPTS
#

if [ -d ~/bin ]; then
  export PATH=$HOME/bin:/usr/local/bin:$PATH
fi
