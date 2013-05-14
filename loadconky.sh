#!/bin/sh
# RSS News Conky by https://github.com/tr37ion

if [ "$(pidof conky)" ]; then
    killall conky
fi
sleep 2
conky -c ~/.conky/global &
while :
do
    ping www.google.com -c1
    sleep 10
    if [ "$?" == 0 ]; then
        break
    fi
done
sleep 5
conky -c ~/.conky/rss_col &
exit