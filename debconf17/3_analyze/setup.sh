#!/bin/bash
#
# Demo injecting user-data into LXC
#
# Copyright 2017 Canonical Ltd.
# Joshua Powers <josh.powers@canonical.com>
set -u

NAME='ci-analyze'
USERDATA='userdata.yaml'

fail() { [ $# -eq 0 ] || echo "$@"; exit 1; }

if [ "$(lxc list --columns n | grep -c " $NAME ")" -ne "0" ]; then
    lxc delete --force "$NAME" ||
        fail "failed to delete existing container"
fi

lxc init ubuntu-daily:x "$NAME" ||
    fail "failed to init container"
lxc config set "$NAME" user.user-data - < "$USERDATA" ||
    fail "failed to set user-data"
lxc config show "$NAME" ||
    fail "failed to set user-data"

lxc start "$NAME" ||
    fail "failed to start container"

while [ ! "$(lxc exec "$NAME" -- cat /var/lib/cloud/instance/boot-finished 2>/dev/null)" ]; do
    sleep 1
done

sleep 1

lxc exec "$NAME" -- shutdown -r now

while [ ! "$(lxc exec "$NAME" -- cat /var/lib/cloud/instance/boot-finished 2>/dev/null)" ]; do
    sleep 1
done

lxc exec "$NAME" -- git clone https://git.launchpad.net/~raharper/+git/cloudinit-analyze
