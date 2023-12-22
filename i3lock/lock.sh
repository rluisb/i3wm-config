#!/bin/bash
rm -rf /tmp/screenshot.png
rm -rf /tmp/screenshotblur.png
scrot /tmp/screenshot.png
convert /tmp/screenshot.png -blur 0x9 -font Liberation-Sans \
    -pointsize 26 -fill white -gravity center \
    -annotate +0+160 "Type Password to Unlock" ~/.config/i3/i3lock/images/angry-rick.png \
    -gravity center -composite /tmp/screenshotblur.png
i3lock -i /tmp/screenshotblur.png
