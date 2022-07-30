#!/usr/bin/bash

# executes inside the container after onCreateCommand(execute at least once)
echo `date +"[%Y/%m/%d %H:%M:%S]"` 'updateContentCommand will begin✨' \
  && echo '[working-dir]:' `pwd`

# update softs
sudo apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y update && brew update && brew upgrade
echo `date +"[%Y/%m/%d %H:%M:%S]"` 'updateContentCommand has done🎉'
exit