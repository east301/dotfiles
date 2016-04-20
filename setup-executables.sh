#!/bin/zsh

# ================================================================================
# zplug managed executables
# ================================================================================

source $HOME/.zplug/zplug

function zplug_github_release () {
    #
    if [[ $OSTYPE == *darwin* ]]; then
        binary_type="*darwin*amd64*"
    else
        echo "[ERROR] OS type '$OSTYPE' is not supported."
        exit 1
    fi

    #
    zplug "$1/$2", from:gh-r, as:command, file:"$2", of:"$binary_type", if:"! which $2"
}


zplug_github_release direnv direnv
zplug_github_release peco peco


if ! zplug check; then
    zplug install
fi
