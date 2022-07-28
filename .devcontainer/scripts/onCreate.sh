#!/bin/bash

# the script execute when a dev container is created (execute once)
echo `date +"[%Y/%m/%d %H:%M:%S]"` 'onCreateCommand will begin✨' \
  && echo '[working-dir]:' `pwd`

## setup nvm
# export SCRIPTS_DIR="$PWD/scripts"
# [ -s "$SCRIPTS_DIR/setup_nvm.sh" ] && \. "$SCRIPTS_DIR/setup_nvm.sh"

## setup fzf
# [ -s "$SCRIPTS_DIR/setup_fzf.sh" ] && \. "$SCRIPTS_DIR/setup_fzf.sh"

## install optional soft by homebrew
# brew install \
#     lua luarocks \
#     gh git-lfs \
#     ranger

echo `date +"[%Y/%m/%d %H:%M:%S]"` 'onCreateCommand has done🎉'
exit