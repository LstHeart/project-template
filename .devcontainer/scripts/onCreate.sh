#!/usr/bin/sh

# the script execute when a dev container is created (execute once)
echo `date +"[%Y/%m/%d %H:%M:%S]"` 'onCreateCommand will begin✨' \
  && echo '[working-dir]:' `pwd`

/bin/bash -c "$(curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh)"
# setup nvm
nvm install 14 && nvm install 16 \
  && nvm default 14

# install global npms
npm install -g @devcontainers/cli @antfu/ni pnpm yarn vsce yo

## install fzf
brew install fzf && echo y y y| $(brew --prefix)/opt/fzf/install

# install other softs by homebrew
brew install fisher \
    lua luarocks \
    gh git-lfs \
    ranger

echo `date +"[%Y/%m/%d %H:%M:%S]"` 'onCreateCommand has done🎉'
exit