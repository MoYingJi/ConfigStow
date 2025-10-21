#!/usr/bin/bash
#shellcheck source=/dev/null

XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
export COMMON_SHELL_PROFILE_DIR="$XDG_CONFIG_HOME/shell"
export SPEC_SHELL_PROFILE="$HOME/.zshrc"
source "$COMMON_SHELL_PROFILE_DIR/bash-zsh.bash"
source "$COMMON_SHELL_PROFILE_DIR/profile.sh"

[ ! -f "$HOME/.x-cmd.root/X" ] || . "$HOME/.x-cmd.root/X" # boot up x-cmd.
