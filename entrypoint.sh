#!/bin/ash

set -e

# set timezone
TZ=Europe/Berlin

cp /usr/share/zoneinfo/$TZ /etc/localtime
echo "$TZ" > /etc/timezone
# ntpd -s
apk del tzdata

# set hostname for prompt
hostname dock
exec tmux -2
