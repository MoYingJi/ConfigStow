#!/usr/bin/bash

# 只允许兼容 alias a='b' 这种形式的 shell 调用!

# Profile Edit
alias edit='$OUTER_EDITOR'
alias kp='kate $COMMON_SHELL_PROFILE_DIR $COMMON_SHELL_PROFILE_DIR/profile.sh'
alias ep='edit $COMMON_SHELL_PROFILE_DIR/profile.sh'
alias epa='edit $COMMON_SHELL_PROFILE_DIR/aliases.sh'
alias epe='edit $COMMON_SHELL_PROFILE_DIR/environment.sh'

alias epx='edit $SPEC_SHELL_PROFILE'

alias ref='_REF=1 source $COMMON_SHELL_PROFILE_DIR/profile.sh'
alias refa='_REF=1 source $COMMON_SHELL_PROFILE_DIR/aliases.sh'
alias refe='_REF=1 source $COMMON_SHELL_PROFILE_DIR/environment.sh'

alias refx='_REF=1 source $SPEC_SHELL_PROFILE'

alias ege='edit /etc/environment'
alias egp='edit /etc/profile'

## 短名
alias c='clear'
alias l='ls'
alias y='yay'
alias p='paru'

alias vi='nvim'

alias gc='git clone'

alias sys='systemctl'
alias sys-en='systemctl enable --now'

alias k9='kill -9'
alias pk9='pkill -9'
alias pkexe='pkill \.exe'

alias bat-which='do-which bat'
alias edit-which='do-which $EDITOR'
alias kate-which='do-which kate'

alias encrypt-me='gpg --encrypt --recipient moyingjiaw@outlook.com'

## 替代
alias ls='eza'

## 参数
alias ycr='yc -R'
alias ycs='yc -S' # 其目的是重新安装 比如 `-git`
alias ycq='yc -Q'
alias ycl='yc -Ql'
alias ys='yay -S'
alias ll='ls -lg'
alias sude='sudo -E'

## 参数 - 配置
alias bbdown='BBDown --encoding-priority av1,hevc,avc'

## 目录
alias tmp='cd /tmp'
alias down='cd $(xdg-user-dir DOWNLOAD)'
alias pub='cd $(xdg-user-dir PUBLICSHARE)'
alias pstow='cd $(xdg-user-dir PUBLICSHARE)/stow'
alias bilivideo='cd $(xdg-user-dir VIDEOS)/哔哩哔哩'
alias pkgs='cd $(xdg-user-dir PUBLICSHARE)/packages'

## 文件
alias hosts='edit /etc/hosts'
alias fstab='edit /etc/fstab'
alias epacman='edit /etc/pacman.conf'

## 其他

