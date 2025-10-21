#!/usr/bin/fish

[ -z "$XDG_CONFIG_DIR" ] && set XDG_CONFIG_DIR "$HOME/.config"

test ! -e "$HOME/.x-cmd.root/local/data/fish/rc.fish" || source "$HOME/.x-cmd.root/local/data/fish/rc.fish"

set SPEC_SHELL_PROFILE $XDG_CONFIG_DIR/fish/config.fish
export SPEC_SHELL_PROFILE

set COMMON_SHELL_PROFILE_DIR $XDG_CONFIG_DIR/shell
export COMMON_SHELL_PROFILE_DIR
source $COMMON_SHELL_PROFILE_DIR/profile.sh

function fish_greeting
    echo "主人你回来啦！欢迎主人喵！本猫鱼儿会一直陪伴在主人身边的喵！"
end


function clear
    /usr/bin/clear
    fish_greeting
end


if status is-interactive
    # 初始化
    zoxide init fish | source
    thefuck --alias | source
end



function mkcd -d "创建目录并进入"
    mkdir -p $argv[1]
    cd $argv[1]
end
