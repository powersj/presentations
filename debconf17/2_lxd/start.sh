#!/bin/bash
#
# Demo injecting user-data into LXC
#
# Copyright 2017 Canonical Ltd.
# Joshua Powers <josh.powers@canonical.com>
set -u

NAME='ci-userdata'

fail() { [ $# -eq 0 ] || error "$@"; exit 1; }

lxc start "$NAME" ||
    fail "failed to start container"

while [ ! "$(lxc exec "$NAME" -- cat /var/lib/cloud/instance/boot-finished 2>/dev/null)" ]; do
    sleep 3
    lxc exec "$NAME" -- cat /run/cloud-init/status.json
done

lxc exec "$NAME" -- cat /run/cloud-init/result.json
