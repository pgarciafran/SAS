#!/bin/bash

set -e
set -x

DIR="$1"
DIR_OWNER="$2"
DIR_GROUP="$3"
PARENTDIR="$(dirname "$DIR")"

# Work with sudo if needed ( this assumes to be able to use sudo without any password interaction, as in CoreOS)
if [[ `stat -c '%U' $PARENTDIR 2>/dev/null || echo root` != `whoami` ]]; then
    SUDO="sudo"
else
    SUDO=""
fi

# Directory test is unneeded in this Ansible role. It is done only to avoid any problem when c&p
[ -d "$DIR" ] || $SUDO mkdir -p "$DIR" -m 777 && $SUDO chown "$DIR_OWNER":"$DIR_GROUP" "$DIR"

