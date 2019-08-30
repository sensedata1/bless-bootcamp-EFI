#!/bin/bash

BOOTCAMPMOUNT=$(diskutil list \
 | sed -n '/Windows\ Recovery/,/Microsoft\ Reserved/p' \
 | grep EFI\ NO\ NAME \
 | awk '{print $7}')

MOUNTLINE=$(diskutil list \
 | sed -n '/Windows\ Recovery/,/Microsoft\ Reserved/p' \
 | grep EFI\ NO\ NAME \
 | awk '{print $2 " " $3 " " $4 " " $5 " " $6}')



echo "\nBlessing $BOOTCAMPMOUNT in $MOUNTLINE and rebooting..."
echo "you have 10 seconds to cancel..."
sleep 10
sudo bless --device /dev/$BOOTCAMPMOUNT --setBoot

sudo shutdown -r now
