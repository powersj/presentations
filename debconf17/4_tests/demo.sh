#!/bin/bash
#
# Demo injecting user-data into LXC
#
# Copyright 2017 Canonical Ltd.
# Joshua Powers <josh.powers@canonical.com>
set -u

ci_dir="cloud-init"

if [ ! -d "$ci_dir" ]; then
    git clone https://git.launchpad.net/cloud-init "$ci_dir"
fi

cd "$ci_dir" || exit 1
python3 -m tests.cloud_tests -h
