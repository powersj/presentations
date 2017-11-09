#!/bin/bash
#
# Demo injecting user-data into LXC
#
# Copyright 2017 Canonical Ltd.
# Joshua Powers <josh.powers@canonical.com>
set -u

SEED="seed.img"

if [ -e "$SEED" ]; then
    rm "$SEED"
fi

cloud-localds -v "$SEED" userdata.yaml metadata.yaml
