#!/bin/sh
# RSS News Conky by https://github.com/tr37ion

if [ "$(pidof conky)" ]; then
    killall conky
fi
sleep 2
conky -c ~/.conky/conkyrc &
while :
do
    ping www.google.com -c3
    sleep 10
    if [ "$?" == 0 ]; then
        break
    fi
done
sleep 5
conky -c ~/.conky/rss &
exit
