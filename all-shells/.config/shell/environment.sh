#!/usr/bin/bash
#shellcheck disable=SC2155

# 只允许兼容 export a="b" 这种形式的 shell 调用！

# Home Path
export PNPM_HOME="/home/dengh/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

# Path
export PATH="/home/dengh/.local/bin/:$PATH"
export PATH="/home/dengh/.local/binInject/:$PATH"
export PATH="/home/dengh/.local/binCmd/:$PATH"
export PATH="/home/dengh/.local/binScript/:$PATH"


# === 环境 === #

export XMODIFIERS=@im=fcitx
#export QT_IM_MODULE="fcitx"

export EDITOR="nvim"               # 阻塞 否则会造成兼容性问题
export EXTERNAL_EDITOR="kate"      # 随你便

export STOW_DIR="$(xdg-user-dir PUBLICSHARE)/stow"

export TLDR_LANGUAGE="zh"
export MANPAGER="nvim +Man!" # Man Pager


# === 换源 === #

export UV_DEFAULT_INDEX="https://mirrors.aliyun.com/pypi/simple"

#export RUSTUP_UPDATE_ROOT="https://mirrors.tuna.tsinghua.edu.cn/rustup/rustup"
#export RUSTUP_DIST_SERVER="https://mirrors.tuna.tsinghua.edu.cn/rustup"
#export RUSTUP_UPDATE_ROOT="https://mirrors.aliyun.com/rustup/rustup"
#export RUSTUP_DIST_SERVER="https://mirrors.aliyun.com/rustup"
export RUSTUP_UPDATE_ROOT=""
export RUSTUP_DIST_SERVER=""
