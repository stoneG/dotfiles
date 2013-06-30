# Prompt
char="`printf '\xE2\x9A\xA1'`"
PS1=\[\\u@\\h\]" "$(tput setaf 6)"\W"$(tput sgr0)"\n""\[\033[1;33m\]"${char}"\[\033[0m\]"" "

#  # Aliases
alias ls="ls --color"
