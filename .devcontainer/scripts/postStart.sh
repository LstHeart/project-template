#!/bin/sh

# A command to run each time the container is successfully started (execute everytime)
echo `date +"[%Y/%m/%d %H:%M:%S]"` 'postStartCommand will begin✨' \
  && echo '[working-dir]:' `pwd`

# cat ~/.bashrc
## update project dependencies and so on
# echo 'update dependencies' && ni
# nr serve
# nr build
## ...
# fish

# config chezmoi
# chezmoi init $CHEZMOI_DOTFILES
# chezmoi completion fish > ~/.config/fish/completions/chezmoi.fish
echo `date +"[%Y/%m/%d %H:%M:%S]"` 'postStartCommand has done🎉'