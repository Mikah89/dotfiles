# = MODULES ===================================================================
source ~/.zsh/zmods

# = AUTO LOADS ================================================================
source ~/.zsh/autoloads

# = EXPORTS ===================================================================
source ~/.zsh/exports

# = ALIASES ===================================================================
source ~/.zsh/aliases

# = FUNCTIONS =================================================================
source ~/.zsh/functions

# = AUTOCOMPLETE ==============================================================
# compdef pacman-color=pacman
# compdef packer-color=packer
zstyle :compinstall filename '~/.zshrc'
zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' file-sort name
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'
zstyle ':completion:*' max-errors 3
zstyle ':completion:*' menu select=2
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:*:kill:*:processes' command 'ps xw -o pid,tty,time,args'
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' force-list always
zstyle ':completion:*:*:killall:*' menu yes select
zstyle ':completion:*:killall:*' force-list always

zstyle ':vcs_info:*' enable git svn hg
zstyle ':vcs_info:*:prompt:*' check-for-changes true
zstyle ':vcs_info:*:prompt:*' unstagedstr '${RED}*${NC}'
zstyle ':vcs_info:*:prompt:*' stagedstr '${YELLOW}+${NC}'
zstyle ':vcs_info:*:prompt:*' actionformats "${white}[%s ${WHITE}%b%u%c${white}]${NC}" ''
zstyle ':vcs_info:*:prompt:*' formats "${white}[%s ${WHITE}%b%u%c${white}]${NC}" ''
zstyle ':vcs_info:*:prompt:*' nvcsformats '' ''

# = HISTORY ===================================================================
HISTFILE=~/.histfile
HISTSIZE=3000
SAVEHIST=3000

# = OPTIONS ===================================================================
source ~/.zsh/setopts

# = BINDKEY ===================================================================
# emacs like key binding
bindkey -e
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
# For rxvt
bindkey "\e[8~" end-of-line
bindkey "\e[7~" beginning-of-line
# For non RH/Debian xterm, can't hurt for RH/Debian xterm
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
# For freebsd console
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
# Completion in the middle of a line
#bindkey "^i" expand-or-complete-prefix
# Show ... while autocompleting
bindkey "^i" expand-or-complete-with-dots
# Backspace
bindkey "^?" backward-delete-char

# = PROMPT ====================================================================
source ~/.zsh/prompt
