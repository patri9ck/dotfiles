alias ssh='kitty +kitten ssh'

server() {
	if [[ -n $1 ]]
	then
		ssh $1@$SERVER_HOST -p $SERVER_PORT
	fi
}


autoload -Uz compinit
autoload -Uz vcs_info

precmd() {
	emulate -L zsh -o extended_glob

	if [[ ./(../)#(.git)(#qN:a) == $HOME/.git ]]
	then
		typeset -g vcs_info_msg_0_=
	else
		vcs_info
	fi
}

__git_files () {
    _wanted files expl 'local files' _files
}

zstyle ':vcs_info:git:*' formats '(%b) '
zstyle ':completion:*' menu select

setopt prompt_subst
setopt autocd

compinit

PS1='%~ ${vcs_info_msg_0_}$ '

. /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

clear
