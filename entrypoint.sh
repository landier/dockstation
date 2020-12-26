#!/bin/bash

if [ -z ${USER+dummy} ]; then
    echo "USER env variable is not set"
    exit 1
fi

useradd -m -G adm $USER
cd /home/$USER
sudo -u $USER "$@"

exit $?

