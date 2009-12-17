#!/bin/sh

if [ ! -f checkshutdownok ]
then
      echo "must be run from source directory"
      exit 1
fi

install -o mythtv -g mythtv -m 775 -d /home/mythtv/bin

for file in checkshutdown*
do
      install -o mythtv -g mythtv -m 775 $file /home/mythtv/bin
done
