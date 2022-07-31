#!/bin/sh

# It happens after updateContentCommand and once the dev container has been assigned to a user for the first time(execute once)
echo `date +"[%Y/%m/%d %H:%M:%S]"` 'postCreateCommand will begin✨' \
  && echo '[working-dir]:' `pwd`

# update softs
sudo apt update && export DEBIAN_FRONTEND=noninteractive && sudo apt upgrade -y \
    && brew update && brew upgrade \
    && chezmoi update

# clean unused
sudo apt autoremove -y && sudo apt clean

echo `date +"[%Y/%m/%d %H:%M:%S]"` 'postCreateCommand has done🎉'
exit