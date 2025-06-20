# Add other scripts e.g. _git for git autocomplete 
zstyle ':completion:*:*:git:*' script "${0:A:h}/.zsh/git-completion.sh"
fpath=("${0:A:h}/.zsh" $fpath)
# source "${0:A:h}/.zsh/_git"

# Git prompt
. "${0:A:h}/.zsh/git-prompt.sh"

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWUPSTREAM=true
GIT_PS1_SHOWCONFLICTSTATE=true
GIT_PS1_HIDE_IF_PWD_IGNORED=true

setopt PROMPT_SUBST
precmd () { __git_ps1 "./%c" "
⚡" " [%s]" }

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
