#! /bin/sh

ON_DISK=$(cat index.json | md5sum | awk '{print $1;}')
ON_WEB=$(curl -s https://updates.graphia.app/ | md5sum | awk '{print $1;}')

if [ "$ON_DISK" = "$ON_WEB" ]
then
    echo "Upload confirmed!"
else
    echo "Checkmsums don't match: $ON_DISK != $ON_WEB"
fi
