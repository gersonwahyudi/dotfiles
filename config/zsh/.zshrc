# Duckey's config for Zoomer Shell

# Enable colors and change prompt:
autoload -U colors  && colors
PS1="%B%{$fg[white]%}[%{$fg[white]%}%n%{$fg[white]%}@%{$fg[white]%}%M %{$fg[white]%}%~%{$fg[white]%}]%{$reset_color%}$%b "

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.local/cache/.histfile

# Basic auto/tab complete:
setopt auto_cd
stty stop undef
# setopt interactive_comments
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -d
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1
export EDITOR='nvim'

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# My custom aliases
alias \
	cp="cp -iv" \
	mv="mv -iv" \
	rm="rm -v" \
	mkd="mkdir -pv" \
	yta="yt -x -f bestaudio/best" \
	ffmpeg="ffmpeg -hide_banner" \
  	ka="killall" \
	g="git" \
	sdn="sudo shutdown -h now" \
	f="$FILE" \
	e="$EDITOR" \
	v="$EDITOR" \
	x="startx" \
	bm="bashmount" \

# adds color to commands.
alias \
	ls="ls -hN --color=auto --group-directories-first" \
	grep="grep --color=auto" \
	diff="diff --color=auto" \
	ccat="highlight --out-format=ansi"



# ZSH configuration
bindkey '^ ' autosuggest-accept

# Load syntax and auto-suggestion; should be last.
 source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null

