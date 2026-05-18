# --- Basic Environment ---
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

bindkey -e

PROMPT='%F{green}%n@%m%f:%F{green}%~%f$ '

# --- Completion Init ---
autoload -Uz compinit
compinit

# --- Plugin ---
source ~/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# -----------------------------
# DISABLE BROKEN MENU UI
# -----------------------------


# No selection interface
zstyle ':completion:*' select-prompt ''

# No descriptions/groups/headers
zstyle ':completion:*' verbose no
zstyle ':completion:*' extra-verbose no
zstyle ':completion:*' format ''
zstyle ':completion:*:descriptions' format ''
zstyle ':completion:*' group-name ''

# No scrolling footer
zstyle ':completion:*' list-prompt ''
zstyle ':completion:*' select-prompt ''
zstyle ':completion:*' show-completer no

# Disable completion listing entirely
zstyle ':completion:*' auto-description ''
unsetopt AUTO_LIST
unsetopt LIST_AMBIGUOUS
unsetopt MENU_COMPLETE

# Only complete when explicitly pressing tab
setopt COMPLETE_IN_WORD

# Disable autocomplete popup
zstyle ':autocomplete:*' min-input 1000

zstyle ':completion:*' menu select
bindkey '^I' menu-select

# Backward cycle
bindkey '^[ [ Z' reverse-menu-complete

zstyle ':completion:*' list-colors 'no=0:fi=0:di=0:ln=0:pi=0:so=0:bd=0:cd=0:or=0:mi=0:su=0:sg=0:ex=0:ma=48;5;60;38;5;255'
