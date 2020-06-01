#!/bin/bash

trap 'exit' INT
set -e

if [ "$1" == "-h" ] || [ "$1" == "--help" ]
then
  echo "usage: burn <path for img> <disk number>"
  exit
fi

image=$1
disk=$2

say -v Alex "Erasing disk"
sudo diskutil eraseDisk FAT32 RPI "/dev/disk$disk"
say -v Alex "unmounting disk"
sudo diskutil unmountDisk "/dev/disk$disk"
say -v Alex "Writing image"
sudo time sh -c "dd bs=1024m if=$PWD/$image of=/dev/rdisk$disk"
