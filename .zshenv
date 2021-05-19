typeset -U PATH path

# Other XDG paths
export XDG_DESKTOP_DIR=${XDG_DESKTOP_HOME:="$HOME/.local/desktop"}
export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.local/.cache"}
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0
export GNUPGHOME="$XDG_DATA_HOME"/.local/gnupg
export ZDOTDIR=$HOME/.config/zsh
export HISTFILE="$XDG_DATA_HOME"/zsh/history
export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority 

# Disable files
export LESSHISTFILE=-

# Default Apps
export EDITOR="nvim"
export VISUAL="nvim"
export BROWSER="firefox"
export VIDEO="mpv"

export PATH
