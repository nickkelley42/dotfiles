# nick additions

PROMPT_COMMAND=nk_prompt_command

nk_prompt_command() {
	local EXIT="$?"

	local userpath='\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]'

#	local RCol='\[\e[0m\]'
	local Rcol='\[\033[00m\]'
	local Red='\[\033[01;31m\]'
	local Green='\[\033[01;32m\]'

	userpath='\u@\h'
	
	local stat_color="${Green}"
	local smiley=$'\U1f642'
	if [ $EXIT != 0 ]; then
		local stat_color="${Red}"
		local smiley=$'\U1f631'
	fi
	
	local git_branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
	local userhost="${stat_color}\u@\h${Rcol}"
	local working_dir="\[\033[01;34m\]\w${Rcol}"
	local stat_str="${stat_color}[$EXIT]${Rcol} $smiley"
	local chicken=$'\U1f99c'
	local prompt="$chicken \$ "

	PS1="$userhost $working_dir $stat_str $git_branch\n$prompt"
	
}

alias fuck='sudo $(history -p !!)'

export VISUAL=vim
export EDITOR="$VISUAL"
