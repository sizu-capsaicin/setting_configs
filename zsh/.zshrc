# my prompt
# import git-prompt
source ~/.zsh/git-prompt.sh
# import git-completion
fpath=(~/.zsh $fpath)
zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
autoload -Uz compinit && compinit
# set prompt option
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWUNTRACKEDFILES=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM=auto
# set prompt format
unset PROMPT
unset RPROMPT
autoload -Uz colors && colors
precmd() {
  PS1="%F{green}%n@%m%f:%F{cyan}%~%f %F{red}$(__git_ps1 "(%s)")%f
%# "
}

# pyenv path
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# my alias
alias ll='ls -G -alF'
alias ls='ls -G'

# my zsh setup
# autoload predict-on
# predict-on
zstyle ':completion:*' menu select
