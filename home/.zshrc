# ZSH Cache config
export ZSH_CACHE="$HOME/.cache/zsh"
export ZSH_COMPDUMP="$ZSH_CACHE/zcompdump-$ZSH_VERSION"
export HISTFILE=$ZSH_CACHE/history
# Move certain files directly
[ -f ~/.zsh-update ] && mv ~/.zsh-update $ZSH_CACHE/.zsh-update
[ -f ~/.zcompdump ] && mv ~/.zcompdump $ZSH_CACHE/zcompdump-$ZSH_VERSION # Ubuntu refuses to follow env ZSH_COMPDUMP

# ZSH History config
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# oh-my-zsh configuration
export ZSH="/usr/share/oh-my-zsh"
ZSH_THEME="af-magic"
UPDATE_ZSH_DAYS=5
ENABLE_CORRECTION="false"

# Run oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Enable colors
autoload -U colors && colors

# Basic auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -d $ZSH_COMPDUMP
comp_options+=(globdots)

# Automatic file removal for cleanup
[ -f ~/.sudo_as_admin_sucessful ] && rm ~/.sudo_as_admin_successful # Ubuntu makes this every with sudo usage

# Environmental variable exports, including XDG standard definitions
[ -f ~/.config/sh/environ ] && source ~/.config/sh/environ

# Setup aliases
[ -f ~/.config/sh/aliases ] && source ~/.config/sh/aliases

# Load handlers
[ -f ~/.config/sh/handlers ] && source ~/.config/sh/handlers

# Custom bindings
bindkey '^ ' autosuggest-accept

# Load extensions (should be last)
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null  # Syntax highlighting
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null  # Auto suggestions
source /usr/share/autojump/autojump.zsh 2>/dev/null  # Auto-Jump

#neofetch --cpu_temp C --gtk2 off --gtk3 off --color_blocks on --pixterm
