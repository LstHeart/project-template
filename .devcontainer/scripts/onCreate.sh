#!/bin/sh

# the script execute when a dev container is created (execute once)
# 只会在 未开启prebuilds 且 new codespace的时候执行一次
# 软件包的配置推荐放在此处进行一次性初始化
echo `date +"[%Y/%m/%d %H:%M:%S]"` 'onCreateCommand will begin✨' \
  && echo '[working-dir]:' `pwd`

# install global npms
npm install -g @devcontainers/cli @antfu/ni vsce yo
# #
# cat > ~/.nirc <<EOF
# defaultAgent=npm
# globalAgent=npm
# EOF

## setup fish
if [ ! -d ~/.config/fish/conf.d ]; then
  mkdir -p ~/.config/fish/conf.d
fi
curl https://raw.githubusercontent.com/skywind3000/z.lua/master/z.lua > ~/.config/fish/conf.d/z.lua \
&& echo "lua ~/.config/fish/conf.d/z.lua --init fish | source" > ~/.config/fish/conf.d/z.fish

fish -c "fisher install jorgebucaran/nvm.fish"
fish -c "fisher install PatrickF1/fzf.fish"
fish -c "fisher install franciscolourenco/done"
fish -c "fisher install jorgebucaran/autopair.fish"
fish -c "fisher install andreiborisov/sponge"
fish -c "echo y | fisher install ilancosman/tide@v5"

# config chezmoi
# chezmoi init $CHEZMOI_DOTFILES
# chezmoi completion fish > ~/.config/fish/completions/chezmoi.fish

echo `date +"[%Y/%m/%d %H:%M:%S]"` 'onCreateCommand has done🎉'
exit