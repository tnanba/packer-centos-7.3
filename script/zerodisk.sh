#!/bin/sh

dd if=/dev/zero of=/EMPTY bs=1M || true
sync
rm -f /EMPTY
sync
