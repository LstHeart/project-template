#!/bin/sh

# the script execute when a dev container is created (execute once)
# 只会在 未开启prebuilds 且 new codespace的时候执行一次
# 软件包的配置推荐放在此处进行一次性初始化
echo `date +"[%Y/%m/%d %H:%M:%S]"` 'onCreateCommand will begin✨' \
  && echo '[working-dir]:' `pwd`

# config chezmoi
echo y | chezmoi init --apply $GITHUB_USER

echo `date +"[%Y/%m/%d %H:%M:%S]"` 'onCreateCommand has done🎉'
exit