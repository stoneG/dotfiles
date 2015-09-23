# RVM
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

############
## Prompt ##
############
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

#############
## Aliases ##
#############
alias ls="ls -G"
alias lsa="ls -a"
alias sublime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias vim='/usr/local/Cellar/vim/7.4.826/bin/vim'
alias vimdiff='/usr/local/Cellar/vim/7.4.826/bin/vimdiff'

# Forge aliases

# Project aliases
alias strftime="cd ~/Dropbox/Projects/strftime"
alias strftime-sass="strftime && rvm gemset use strftime && compass watch"
alias strftime-server="strftime && python -m SimpleHTTPServer 8002"
alias strftime-test="strftime && karma start karma.config.js"

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

###########
## FORGE ##
###########

# psql
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin


