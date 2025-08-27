#!/usr/bin/fish

[ -z "$XDG_CONFIG_DIR" ] && set XDG_CONFIG_DIR "$HOME/.config"

set SPEC_SHELL_PROFILE $XDG_CONFIG_DIR/fish/config.fish
export SPEC_SHELL_PROFILE

set COMMON_SHELL_PROFILE_DIR $XDG_CONFIG_DIR/shell
export COMMON_SHELL_PROFILE_DIR
source $COMMON_SHELL_PROFILE_DIR/profile.sh


if status is-interactive
    # 初始化
    zoxide init fish | source
    thefuck --alias | source
end



function mkcd -d "创建目录并进入"
    mkdir -p $argv[1]
    cd $argv[1]
end



