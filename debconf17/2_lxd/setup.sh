#!/bin/bash
#
# Demo injecting user-data into LXC
#
# Copyright 2017 Canonical Ltd.
# Joshua Powers <josh.powers@canonical.com>
set -u

NAME='ci-userdata'
USERDATA='userdata.yaml'

fail() { [ $# -eq 0 ] || error "$@"; exit 1; }

if [ "$(lxc list --columns n | grep -c " $NAME ")" -ne "0" ]; then
    lxc delete --force "$NAME" ||
        fail "failed to delete existing container"
fi

set -x
lxc init ubuntu-daily:x "$NAME" ||
    fail "failed to init container"
lxc config set "$NAME" user.user-data - < "$USERDATA" ||
    fail "failed to set user-data"
lxc config show "$NAME" ||
    fail "failed to set user-data"
