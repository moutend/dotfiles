#!/bin/bash

hour=`date +%-H`
minute=`date +%-M`

if [ ${minute} = '0' ]; then
  say -r 210 "${hour}時です。"
else
  say -r 210 "${hour}時、${minute}分です。"
fi
