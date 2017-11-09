#!/bin/bash
#
# Demo injecting user-data into LXC
#
# Copyright 2017 Canonical Ltd.
# Joshua Powers <josh.powers@canonical.com>
set -u

IMG="stretch.qcow2"
SEED="seed.img"

if [ ! -e "$IMG" ]; then
    echo "img does not exist."
    exit 1
fi

if [ ! -e "$SEED" ]; then
    echo "seed does not exist. Run genseed.sh"
    exit 1
fi

set -x
qemu-system-x86_64 -enable-kvm -m 512 -nographic \
    -drive "file=$IMG,if=virtio" \
    -drive "file=$SEED,if=virtio,format=raw" \
    -device virtio-net-pci,netdev=net00 \
    -netdev type=user,id=net00,hostfwd=tcp::2222-:22
