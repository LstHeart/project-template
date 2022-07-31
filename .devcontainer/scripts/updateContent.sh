#!/usr/bin/bash

# executes inside the container after onCreateCommand(execute at least once)
echo `date +"[%Y/%m/%d %H:%M:%S]"` 'updateContentCommand will begin✨' \
  && echo '[working-dir]:' `pwd`

# update softs
sudo apt update && export DEBIAN_FRONTEND=noninteractive && sudo apt upgrade -y \
    && brew update && brew upgrade \
    && chezmoi update

# clean unused
sudo apt autoremove -y && sudo apt clean

echo `date +"[%Y/%m/%d %H:%M:%S]"` 'updateContentCommand has done🎉'
exit