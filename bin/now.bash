#!/bin/bash

hour=`date +%-H`
minute=`date +%-M`

if [ ${minute} = '0' ]; then
  $HOME/bin/say.bash -r 210 "${hour}時です。" &
else
  $HOME/bin/say.bash -r 210 "${hour}時、${minute}分です。" &
fi
