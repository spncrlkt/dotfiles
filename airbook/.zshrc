# ===== ===== ===== ===== ===== =====
# ===== VIM INPUT =====
# ===== ===== ===== ===== ===== =====
bindkey -v
export KEYTIMEOUT=1
bindkey "^R" history-incremental-pattern-search-backward

# ===== ===== ===== ===== ===== =====
# ===== HISTORY =====
# ===== ===== ===== ===== ===== =====
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY           # Share history across sessions
setopt HIST_IGNORE_DUPS        # Don't save duplicates
setopt HIST_IGNORE_SPACE       # Ignore space-prefixed commands
setopt HIST_REDUCE_BLANKS      # Remove extra spaces

# ===== ===== ===== ===== ===== =====
# ===== COMPLETION =====
# ===== ===== ===== ===== ===== =====
# Enable modern completion system
autoload -Uz compinit && compinit

# Completion enhancements
zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' group-name ''

# ===== ===== ===== ===== ===== =====
# ===== PROMPT =====
# ===== ===== ===== ===== ===== =====
# Enable prompt themes and git info
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '(%b)'

# Simple effective prompt
setopt PROMPT_SUBST
PROMPT='%F{blue}%n@%m%f %F{green}%~%f %F{red}${vcs_info_msg_0_}%f$ '

# time on right side
RPROMPT='%*'

# ===== ===== ===== ===== ===== =====
# ===== QUALITY OF LIFE =====
# ===== ===== ===== ===== ===== =====
# Better ls colors
export CLICOLOR=1
export LSCOLORS=exfxcxdxbxegedabagacad

# Auto-suggestions color
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'


# ===== ===== ===== ===== ===== =====
# ===== USEFUL OPTIONS =====
# ===== ===== ===== ===== ===== =====
# corrections
setopt CORRECT

# Better globbing
setopt EXTENDED_GLOB
setopt GLOB_DOTS

setopt INTERACTIVE_COMMENTS  # Allow comments in interactive shell
# install? something like that? ZSH_AUTOSUGGEST_STRATEGY=(history completion)  # Where to get suggestions from

