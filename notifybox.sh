#!/bin/sh
FILE="/var/cache/notifybox.list"
tail -n 0 -F $FILE | while read line
do
	if [ $(echo $line | grep -E -o "ERROR") ];then
		$(cp /etc/notifybox/dialogrc.error /etc/dialogrc)
	elif [ $(echo $line | grep -E -o "INFO") ];then
		$(cp /etc/notifybox/dialogrc.info /etc/dialogrc)
	elif [ $(echo $line | grep -E -o "ALERT") ];then
		$(cp /etc/notifybox/dialogrc.alert /etc/dialogrc)
	fi
	eval $line
done
