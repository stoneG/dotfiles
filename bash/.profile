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
PS1=\[\\u@\\h\]" "$(tput setaf 6)"\W"" \$(parse_git_branch)"$(tput sgr0)"\n""\[\033[1;33m\]"${char}"\[\033[0m\]"" "

# Git Autocomplete
source ~/.bash/git-completion.bash

# Brew requests that /usr/local/bin/ be before /usr/bin/ in PATH
export PATH=/usr/local/bin:$PATH

# Aliases
alias ls="ls -G"
alias lsa="ls -a"
alias sublime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

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

