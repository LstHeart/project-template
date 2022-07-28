#!/bin/bash

# A command to run each time the container is successfully started (execute everytime)
echo `date +"[%Y/%m/%d %H:%M:%S]"` 'postStartCommand begin✨' \
  && echo '[working-dir]:' `pwd`

## update project dependencies and so on
# echo 'update dependencies' && ni
# nr serve
# nr build
## ...

echo `date +"[%Y/%m/%d %H:%M:%S]"` 'postStartCommand done🎉'
exit