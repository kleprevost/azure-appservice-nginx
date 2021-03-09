#!/bin/sh
/usr/sbin/sshd &
caddy run --config /etc/caddy/Caddyfile --adapter caddyfile