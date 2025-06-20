# Add other scripts e.g. _git for git autocomplete 
zstyle ':completion:*:*:git:*' script "${0:A:h}/.zsh/git-completion.sh"
fpath=("${0:A:h}/.zsh" $fpath)
# source "${0:A:h}/.zsh/_git"

# Git prompt
. "${0:A:h}/.zsh/git-prompt.sh"

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWUPSTREAM="verbose"
GIT_PS1_DESCRIBE_STYLE="branch"
GIT_PS1_SHOWCONFLICTSTATE="yes"
GIT_PS1_HIDE_IF_PWD_IGNORED=true

setopt PROMPT_SUBST
precmd () { __git_ps1 "%F{cyan}%B./%c%b%f" "
⚡" " (%s)" }