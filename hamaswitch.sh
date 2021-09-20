#!/bin/sh
# author: tsx4k
# site: https://github.com/tsx4k/hamaswitch


ROOT=$(id -u)

if [ "$ROOT" = "0" ]
then
    if [ -d "/var/lib/logmein-hamachi-$1" ] 
    then
        NOW=$(date +"%Y%m%d%H%M%S")
        CURR="unknown"
        if [ -e "/var/lib/.hamaswitch" ]
        then
	    CURR=$(cat /var/lib/.hamaswitch)
        fi
        echo "$1" > /var/lib/.hamaswitch
        /etc/init.d/logmein-hamachi stop
        cp -r /var/lib/logmein-hamachi /var/lib/logmein-hamachi_backup_$NOW-$CURR
        rm -r /var/lib/logmein-hamachi
        cp -r /var/lib/logmein-hamachi-$1 /var/lib/logmein-hamachi
        /etc/init.d/logmein-hamachi start
    else
        echo "Error: Logmein Hamachi Profile: '$1' does not exists ('/var/lib/logmein-hamachi-$1')."
    fi
else
    echo "Please run as root/sudo."
fi


