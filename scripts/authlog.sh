#!/bin/sh

# This script logs SHA256 protected logins at a given location

LOGFILE=/etc/ssh/auth.log

# Check for ro/rw filesystem swarco linux v3
rw
# Test with swarco linux v4
# mount -o remount,rw /

if [ ! -f "$LOGFILE" ]; then
        touch $LOGFILE
fi

# cat /var/log/messages | grep 'authpriv.info\ssshd' | tail -2 >> $LOGFILE
grep -oP '\w{3}\s\d{2}\s\d{2}\:\d{2}\:\d{2}.+Accepted key ED25519.+' /var/log/messages | tail -1 >> $LOGFILE
# Test it!
# grep -oP '\w{3}\s\d{2}\s\d{2}\:\d{2}\:\d{2}.+Accepted key ED25519.+' /home/root/fake.log | tail -1 >> $LOGFILE

# Reenable ro/rw filesystem
ro
# Test with swarco linux v4
# mount -o remount,ro /
