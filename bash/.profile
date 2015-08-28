# RVM
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# Prompt
source ~/.bash/gitprompt.sh
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
function parse_git_branch {
ref=$(git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/")
  echo ${ref}
}

char="`printf '\xE2\x9A\xA1'`"
# User@Machine" "~
abc="`parse_git_branch`"
PS1=\[\\u@\\h\]" "$(tput setaf 6)"\W"" \$(parse_git_branch)"$(tput sgr0)"\n""\[\033[1;33m\]"${char}"\[\033[0m\]"" "hi""

# Git Autocomplete
source ~/.bash/git-completion.bash

# Brew requests that /usr/local/bin/ be before /usr/bin/ in PATH
export PATH=/usr/local/bin:$PATH

# Aliases
alias ls="ls -G"
alias lsa="ls -a"
alias sublime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias vim='/usr/local/Cellar/vim/7.4.335/bin/vim'
alias vimdiff='/usr/local/Cellar/vim/7.4.335/bin/vimdiff'

# Work specific aliases
alias eat="cd ~/web && workon eat"
alias eat-server="cd ~/web && workon eat && python manage.py runserver 0.0.0.0:8000"
alias eat-sass="cd ~/web && rvm gemset use web && compass watch"
alias eat-karma="cd ~/web && karma start"
alias eat-shell="cd ~/web && workon eat && python manage.py shell"
alias eat-debugshell="cd ~/web && python manage.py debugsqlshell"
alias ice="cd ~/iceberg && workon iceberg"
alias ice-server="cd ~/iceberg/content && workon iceberg && cactus serve 8001"
alias ice-sass="cd ~/iceberg && rvm gemset use iceberg && compass watch"
alias nw="/Applications/nwjs.app/Contents/MacOS/nwjs"
alias desk-build="cd ~/eatdesk/app && zip -r eatclub.nw *"
alias desk-run="nw ~/eatdesk/app/eatclub.nw"
alias desk-dist="cp ~/eatdesk/app/eatclub.nw ~/eatdesk/dist/EAT\ Club.app/Contents/Resources/app.nw"
alias desk="desk-build && desk-run"

# Project aliases
alias strftime="cd ~/Dropbox/Projects/strftime"
alias strftime-sass="strftime && rvm gemset use strftime && compass watch"
alias strftime-server="strftime && python -m SimpleHTTPServer 8002"
alias strftime-test="strftime && karma start karma.config.js"

# MacPorts Installer addition on 2013-03-04_at_10:32:25: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=${HOME}/.bin:/opt/local/bin:/opt/local/sbin:$PATH
#export PATH=${HOME}/macports/bin:${HOME}/macports/sbin:$PATH
#export PATH=${HOME}/macports:${HOME}/macports/bin:${HOME}/macports/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

# Java
export JAVA_HOME=/usr
#export PATH=$JAVA_HOME/bin:$PATH 

# Amazon Elastic Load Balancer
export AWS_ELB_HOME=/usr/local/ElasticLoadBalancing-1.0.17.0
export PATH=$PATH:$AWS_ELB_HOME/bin
export AWS_CREDENTIAL_FILE=${HOME}/AWS/AWS_credentials
export AWS_ELB_URL=https://elasticloadbalancing.us-west-1.amazonaws.com

export EATCLUB_LOCAL_SETTINGS=/Users/sitong/local_settings/local_settings.py

