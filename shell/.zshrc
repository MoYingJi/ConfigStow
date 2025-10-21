# Zsh
#shellcheck disable=2034 source=/dev/null

XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
export COMMON_SHELL_PROFILE_DIR="$XDG_CONFIG_HOME/shell"
export SPEC_SHELL_PROFILE="$HOME/.zshrc"
source "$COMMON_SHELL_PROFILE_DIR/bash-zsh.bash"
source "$COMMON_SHELL_PROFILE_DIR/profile.sh"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

ZSH=/usr/share/oh-my-zsh/
ZSH_THEME="powerline"
plugins=(
    git
    zsh-syntax-highlighting
)

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
[[ ! -d $ZSH_CACHE_DIR ]] && mkdir "$ZSH_CACHE_DIR"
source $ZSH/oh-my-zsh.sh


[ ! -f "$HOME/.x-cmd.root/X" ] || . "$HOME/.x-cmd.root/X" # boot up x-cmd.
