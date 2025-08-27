#!/usr/bin/bash
#shellcheck disable=SC2155

# Home Path
export PNPM_HOME="/home/dengh/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

# Path
export PATH="/home/dengh/.local/bin/:$PATH"
export PATH="/home/dengh/.local/binInject/:$PATH"
export PATH="/home/dengh/.local/binScript/:$PATH"


# === 环境 === #

export XMODIFIERS=@im=fcitx
#export QT_IM_MODULE="fcitx"

export EDITOR="nvim"
export OUTER_EDITOR="kate"
export TLDR_LANGUAGE=zh
export STOW_DIR="$(xdg-user-dir PUBLICSHARE)/stow"

# Man Pager
export MANPAGER="nvim +Man!"


# === 换源 === #

export UV_DEFAULT_INDEX="https://mirrors.aliyun.com/pypi/simple"

# 清华源总出问题 说我所在子网大量下载文件 保证正常用户所以阻断此类请求
# 有病吧 我不是正常用户吗 还是你cn的全市都是一个子网又发力了 傻逼运营商也是
#export RUSTUP_UPDATE_ROOT=https://mirrors.tuna.tsinghua.edu.cn/rustup/rustup
#export RUSTUP_DIST_SERVER=https://mirrors.tuna.tsinghua.edu.cn/rustup
export RUSTUP_UPDATE_ROOT=https://mirrors.aliyun.com/rustup/rustup
export RUSTUP_DIST_SERVER=https://mirrors.aliyun.com/rustup
