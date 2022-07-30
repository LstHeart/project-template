#!/bin/sh

# It happens after updateContentCommand and once the dev container has been assigned to a user for the first time(execute once)
echo `date +"[%Y/%m/%d %H:%M:%S]"` 'postCreateCommand will begin✨' \
  && echo '[working-dir]:' `pwd`

# ln -sf $HOME/config $PWD/.devcontainer/config && set +x

# 重构时要保留的数据
ln -sf $PWD/.devcontainer/config/.zlua $HOME/.zlua && set +x
ln -sf $PWD/.devcontainer/config/fish_history $HOME/.local/share/fish/fish_history && set +x
ln -sf $PWD/.devcontainer/config/.bash_history $HOME/.bash_history
ln -sf $PWD/.devcontainer/config/.nirc $HOME/.nirc && set +x

echo `date +"[%Y/%m/%d %H:%M:%S]"` 'postCreateCommand has done🎉'
exit