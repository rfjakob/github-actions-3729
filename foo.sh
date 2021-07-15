#!/bin/bash
set -ux

ls -l /proc/self/fd

dd if=/dev/zero of=- bs=1M count=1 >&106 &
dd if=/dev/zero of=- bs=1M count=1 >&109 &

sleep 3
