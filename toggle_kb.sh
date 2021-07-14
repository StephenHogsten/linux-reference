#!/bin/bash
current=$(cat ~/.config/kb_enabled)
if [ $current -eq 0 ]; then
    notify-send --expire-time=2000 'keyboard status' 'built in keyboard enabled'
    xinput enable 'AT Translated Set 2 keyboard'
    echo '1' > ~/.config/kb_enabled
else
    notify-send --expire-time=2000 'keyboard status' 'built in keyboard disabled'
    xinput disable 'AT Translated Set 2 keyboard'
    echo '0' > ~/.config/kb_enabled
fi 

