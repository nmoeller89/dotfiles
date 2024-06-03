#
# OHMYZSH
#

export ZSH="$HOME/.oh-my-zsh"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins-Overview
plugins=(
  git
  brew
  zsh-syntax-highlighting
  zsh-autosuggestions
  fzf
)

source $ZSH/oh-my-zsh.sh

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
