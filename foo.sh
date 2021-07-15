#!/bin/bash
set -ux

ls -l /proc/self/fd

dd if=/dev/zero of=- bs=1M count=10000 >&106 &
dd if=/dev/zero of=- bs=1M count=10000 >&109 &

sleep 3
