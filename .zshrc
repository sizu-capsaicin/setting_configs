# my prompt
unset PROMPT
unset RPROMPT
autoload -Uz vcs_info
autoload -Uz add-zsh-hook
autoload -Uz colors && colors
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "!"
zstyle ':vcs_info:git:*' unstagedstr "+"
zstyle ':vcs_info:*' formats '[%b]' '%c%u'
zstyle ':vcs_info:*' actionformats '[%b|%a]' '%c%u' '%a'
function _get_vcs_info() {
  local prompt

  LANG=en_US.UTF-8 vcs_info

  if [[ -z ${vcs_info_msg_0} ]]; then
    prompt=""
  elif [[ -n "$vcs_info_msg_2_" ]]; then
    prompt="%F{green}(%s)-%f%F{red}${vcs_info_msg_0_}%f"
  elif [[ -n "$vcs_info_msg_1_" ]]; then
    if [[ "$vcs_info_msg_1_" == '%c' ]]; then
      prompt="%F{green}(%s)-%f%F{magenta}${vcs_info_msg_1_}${vcs_info_msg_0_}%f"
    elif [[ "$vcs_info_msg_1_" == '%u' ]]; then
      prompt="%F{green}(%s)-%f%F{yellow}${vcs_info_msg_1_}${vcs_info_msg_0_}%f"
    fi
  else
    prompt="%F{green}(%s)-${vcs_info_msg_0_}%f"
  fi

  PROMPT="$prompt"
}
add-zsh-hook precmd _get_vcs_info

PROMPT="${fg[green]}%n@%m${reset_color}:${fg[cyan]}%~${reset_color} "$PROMPT"
%# "

# pyenv path
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# my alias
alias ll='ls -G -alF'
alias ls='ls -G'

# my zsh setup
autoload predict-on
predict-on
