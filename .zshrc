alias fix-packages='yay -Qqn | yay -S -'
alias create-srcinfo='makepkg --printsrcinfo > .SRCINFO'
alias vim='nvim'
alias moro='ssh moro-6-ws26@141.37.29.166'

autoload -Uz compinit
autoload -Uz vcs_info

bindkey -e

[ -f /opt/miniconda3/etc/profile.d/conda.sh ] && source /opt/miniconda3/etc/profile.d/conda.sh

precmd() {
    vcs_info
}

__git_files () {
    _wanted files expl 'local files' _files
}

zstyle ':vcs_info:git:*' formats '(%b) '
zstyle ':completion:*' menu select

setopt prompt_subst
setopt autocd

setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS

compinit

PS1='%~ ${vcs_info_msg_0_}$ '

. /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(zoxide init --cmd cd zsh)"
