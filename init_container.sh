#!/bin/sh
ssh-keygen -A
exec /usr/sbin/sshd -D -e &
caddy run --config /bin/config.json