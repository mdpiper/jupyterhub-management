#!/bin/sh
# Place this script in /etc/profile.d/ to set a custom prompt for all users.

HUB=frontier
export PROMPT_COMMAND='export PS1="${debian_chroot:+($debian_chroot)}\[\033[01;32m\]${HUB}\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "'
