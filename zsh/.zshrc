#
# CONFIGS 
#

[ -f $HOME/.zsh_aliases ] && source $HOME/.zsh_aliases
[ -f $HOME/.zsh_settings ] && source $HOME/.zsh_settings

#
# PLUGINS
#

[ -f $HOME/.zsh_plugins ] && source $HOME/.zsh_plugins

#
# PROMPT (OHMYPOSH)
#
#
eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/theme.toml)"

#
# SCRIPTS
#

if [ -d $HOME/bin ]; then
  export PATH=$HOME/bin:/usr/local/bin:$PATH
fi

