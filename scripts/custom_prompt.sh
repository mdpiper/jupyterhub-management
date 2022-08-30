#!/bin/sh
# Place this script in /etc/profile.d/ to set a custom prompt for all users.

if [ -z $OES_HUB ]; then
    OES_HUB="lab"
fi

export PROMPT_COMMAND='export PS1="${CONDA_PROMPT_MODIFIER}${debian_chroot:+($debian_chroot)}\[\033[01;32m\]${OES_HUB}\[\033[00m\] : \[\033[01;34m\]\w\[\033[00m\] \$ "'
