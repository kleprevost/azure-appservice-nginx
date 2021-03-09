#!/bin/sh
ssh-keygen -A
exec /usr/sbin/sshd -D -e &
caddy run --config /etc/caddy/Caddyfile --adapter caddyfile