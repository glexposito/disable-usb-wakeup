#!/bin/bash

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

systemctl disable disable-usb-wakeup.service
echo enabled | tee /sys/bus/usb/devices/*/power/wakeup

rm /usr/local/bin/disable-usb-wakeup.sh
rm /etc/systemd/system/disable-usb-wakeup.service
