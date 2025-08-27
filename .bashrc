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


#Aliases XD

alias ll='ls -lah'

alias mss='cd "/mnt/c/Users/Shloka/2025/missing sem stuff"'

alias please='sudo'

alias nvim='nvim -u ~/init.vim'

alias localmss='cd "/tmp/missing_sem"'

alias pyth='python3'

alias mv='mv -i'

alias c='clear'

alias tree='tree --dirsfirst -F'

# View the calender by typing the first three letters of the month.

alias jan='cal -m 01'
alias feb='cal -m 02'
alias mar='cal -m 03'
alias apr='cal -m 04'
alias may='cal -m 05'
alias jun='cal -m 06'
alias jul='cal -m 07'
alias aug='cal -m 08'
alias sep='cal -m 09'
alias oct='cal -m 10'
alias nov='cal -m 11'
alias dec='cal -m 12'


	# ------ git aliases -------------
	
	alias glog='git log --all --graph --decorate'

	alias gs='git status'

	alias ga='git add'

	alias gaa='git add --all'

	alias gc='git commit'

	alias gch='git checkout'

	alias gm='git merge'

	alias gpush='git push'

	alias gf='git fetch'

	alias gpull='git pull'

	alias grb='git rebase'

	alias gb='git checkout -b'


