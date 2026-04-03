#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
export EDITOR='/usr/bin/vim'

#alias vim=nvim
#PS1='[\u@\h \W]\$ '
alias e="vim ."
PS1="\W $ " 

git_info(){
	if [[ -d .git ]]; then
		branch=$(cat .git/HEAD | cut -d'/' -f3)
		PS1="\W \e[33m(git: $branch)\e[0m $ "
	else
		PS1="\W $ " 
	fi
}
git_info

cd(){
	command cd "$@"
	git_info
}

git() {
	command git "$@"
	git_info
}

rm(){
	command rm "$@"
	git_info
}
 export PATH=$PATH:/usr/local/go/bin
 neofetch
