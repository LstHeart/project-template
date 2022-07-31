#!/bin/sh

# It happens after updateContentCommand and once the dev container has been assigned to a user for the first time(execute once)
echo `date +"[%Y/%m/%d %H:%M:%S]"` 'postCreateCommand will begin✨' \
  && echo '[working-dir]:' `pwd`

# 重构时要保留的数据
CONFIG_DIR=$PWD/.devcontainer/config
ln -sf $CONFIG_DIR/.zlua $HOME/.zlua
ln -sf $CONFIG_DIR/fish_history $HOME/.local/share/fish/fish_history
ln -sf $CONFIG_DIR/.bash_history $HOME/.bash_history

# # zlua config
# [ ! -f $CONFIG_DIR/.zlua ] && cp -af $HOME/.zlua $CONFIG_DIR/.zlua \
  # && ln -sf $CONFIG_DIR/.zlua $HOME/.zlua
# # fish_history
# [ ! -f $CONFIG_DIR/fish_history ] && cp -af $HOME/.local/share/fish/fish_history $CONFIG_DIR/fish_history \
#   && ln -sf $CONFIG_DIR/fish_history $HOME/.local/share/fish/fish_history
# # bash_history
# [ ! -f $CONFIG_DIR/.bash_history ] && cp -af $HOME/.bash_history $CONFIG_DIR/.bash_history \
#   && ln -sf $CONFIG_DIR/.bash_history $HOME/.bash_history
# # nirc
# [ ! -f $CONFIG_DIR/.nirc ] && cp -af $HOME/.nirc $CONFIG_DIR/.nirc \
#   && ln -sf $CONFIG_DIR/.nirc $HOME/.nirc

echo `date +"[%Y/%m/%d %H:%M:%S]"` 'postCreateCommand has done🎉'
exit