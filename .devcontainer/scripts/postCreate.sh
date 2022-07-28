#!/usr/bin/bash

# It happens after updateContentCommand and once the dev container has been assigned to a user for the first time(execute once)
echo `date +"[%Y/%m/%d %H:%M:%S]"` 'postCreateCommand will begin✨' \
  && echo '[working-dir]:' `pwd`

# ln -sf $HOME/config $PWD/.devcontainer/config && set +x

## setup fish
if [ ! -d ~/.config/fish/conf.d ]; then
  mkdir -p ~/.config/fish/conf.d
fi
curl https://raw.githubusercontent.com/skywind3000/z.lua/master/z.lua > ~/.config/fish/conf.d/z.lua \
&& echo "lua ~/.config/fish/conf.d/z.lua --init fish | source" > ~/.config/fish/conf.d/z.fish

fisher install jorgebucaran/nvm.fish
fisher install PatrickF1/fzf.fish
fisher install franciscolourenco/done
fisher install jorgebucaran/autopair.fish
fisher install andreiborisov/sponge
echo y | fisher install ilancosman/tide@v5

echo `date +"[%Y/%m/%d %H:%M:%S]"` 'postCreateCommand has done🎉'
exit