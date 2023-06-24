#!/bin/bash
set -euo pipefail

if [ "$EUID" -ne 0 ]
  then echo "Please run this script as root"
  exit
fi

if [ $# != 2 ]; then
    echo "Amount of parameters is not strictly equal to 2!"
    echo "Please check if you didn't accidentally enter ssh key without quotation marks \"\"!"
    echo "Usage: sudo $0 <user_name> <public_key>"
    exit 1
fi

USER_NAME=$1
PUBLIC_KEY=$2

if [ -d "/home/$USER_NAME" ]; then
    cd /home/$USER_NAME
    mkdir -p .ssh
    chmod 777 -R .ssh
    touch .ssh/authorized_keys
    echo $PUBLIC_KEY >> .ssh/authorized_keys
    chown -R $USER_NAME:$USER_NAME .ssh
    chmod -R go= .ssh
    echo "Installed key for user $USER_NAME"
else
    echo "User $USER_NAME doesn't exist, run adduser $USER_NAME"
fi
