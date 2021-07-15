#!/bin/bash
set -ux

ls -l /proc/self/fd

timeout 20s cat /dev/urandom >&106 &
timeout 20s cat /dev/urandom >&109 &

ps auxwww

ps auxwww --forest

wait
