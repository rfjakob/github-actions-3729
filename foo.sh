#!/bin/bash
set -ux

ls -l /proc/self/fd

timeout 20s pv < /dev/urandom >&106 &
timeout 20s pv < /dev/urandom >&109 &

wait
