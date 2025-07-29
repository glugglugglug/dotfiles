#Aliases XD

alias ll='ls -lah'

alias mss='cd "/mnt/c/Users/Shloka/2025/missing sem stuff"'

alias please='sudo'

alias nvim='nvim -u ~/init.vim'

alias localmss='cd "/tmp/missing_sem"'

alias pyth='python3'

alias mv='mv -i'

# ─── Default Editor Setup ─────────────────────────────────────
export VISUAL="nvim"
export EDITOR="$VISUAL"

# ─── Enable Vi Mode in Shell ──────────────────────────────────
set -o vi

# ─── Vi Mode Prompt Indicators (Non-Deletable, Stylish) ──────
bind 'set show-mode-in-prompt on'
bind 'set show-mode-in-prompt on'
bind 'set vi-ins-mode-string \1\[\e[1;32m+insert>>\e[0m\] '
bind 'set vi-cmd-mode-string \1\[\e[0;33m*normal>>\e[0m\] '

# ─── Prompt (Clean, Colorful, Git-Friendly if Desired) ───────
# Only shows user@host:path with color
PS1="\[\e[0;36m\]\u@\h:\w \[\e[0m\]"

# ─── Vim-Like Aliases for Shell Commands ─────────────────────
alias :q='exit'                 # Quit terminal
alias :w='history -w'           # Write command history
alias :wq='history -w && exit'  # Save & quit
alias :e='vim'                  # Open Vim
alias :vs='vim -O'              # Vertical split view in Vim

# ─── Useful Bash Behavior Tweaks ─────────────────────────────
shopt -s histappend           # Append to history file
HISTSIZE=10000                # Keep more history entries
HISTFILESIZE=20000

# ─── Reload Message ───────────────────────────────────────────
echo -e "\e[1;33m[VIM-style Bash initialized. Press ESC for NORMAL mode.]\e[0m"
