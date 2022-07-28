#!/bin/bash

# executes inside the container after onCreateCommand(execute at least once)
echo `date +"[%Y/%m/%d %H:%M:%S]"` 'updateContentCommand begin✨' \
  && echo '[working-dir]:' `pwd`


echo `date +"[%Y/%m/%d %H:%M:%S]"` 'updateContentCommand done🎉'
exit