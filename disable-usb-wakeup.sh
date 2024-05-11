#!/bin/bash

if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

echo disabled | tee /sys/bus/usb/devices/*/power/wakeup