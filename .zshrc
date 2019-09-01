export DEFAULT_USER="$(whoami)"
# export SSH_KEY_PATH="~/.ssh/rsa_id"
export ZSH=/Users/cpoliver/.oh-my-zsh

export EDITOR="$(which nvim)"
export VISUAL="$(which nvim)"

export PATH="$(yarn global bin):$PATH"

COMPLETION_WAITING_DOTS="true"
HYPHEN_INSENSITIVE="true"
ZSH_THEME="spaceship"

plugins=(docker github httpie man node npm ssh-agent tig vi-mode yarn z)

source $ZSH/oh-my-zsh.sh
source $ZSH/custom/themes/spaceship.zsh-theme

# # run ssh-add once on login
# if [ ! -S ~/.ssh/ssh_auth_sock ]; then
#   eval `ssh-agent`
#   ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
# fi
# export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
# ssh-add -l > /dev/null || ssh-add

# aliases: clipboard
alias setclip="xclip -selection c"
alias getclip="xclip -selection c -o"

# aliases: destructive
alias jihad!='killall'
alias nuke!='rm -rf'
alias rmnm!='nuke ./node_modules'

# aliases: git
alias g='gs'
alias ga='git add'
alias ga.='git add .'
alias gc='git commit'
alias gcam!='git commit --amend --reuse-message=HEAD'
alias gcama!='ga. && gcam!'
alias gcl='git clone'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcz='git cz'
alias gd='git diff'
alias gds='git diff --staged'
alias gi='git init'
alias gl='git log'
alias gpl='git pull'
alias gplr='git pull -r'
alias gprom='git pull -r origin master'
alias gps='git push'
alias gpssu='git push --set-upstream origin $(git rev-parse --abbrev-ref HEAD)'
alias gpsf!='git push --force-with-lease'
alias gr='git reset'
alias grh!='git reset --hard'
alias gri='git rebase -i'
alias grs='git reset --soft'
alias gs='git status'
alias gst='git stash'
alias gsa!='git stash apply'
alias gsd!='git stash drop'
alias gsl='git stash list'
alias gsp!='git stash pop'

# aliases: open
alias o='xdg-open'
alias open='o'

# aliases: ssh
# alias shad='ssh-add -k ~/.ssh/id_rsa'

# aliases: yarn
alias ya='yarn add'
alias yga='yarn global add'
alias yag='yga'
alias ycc='yarn cache clean'
alias yr='yarn remove'
alias ygr='yarn global remove'
alias yrg='ygr'

# aliases: zshrc
alias f5="source ~/.zshrc"
alias zshrc="code ~/.zshrc"

# aliases: vim
alias vi="nvim"
alias vim="nvim"
