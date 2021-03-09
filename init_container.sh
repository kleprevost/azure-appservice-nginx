#!/bin/sh
/usr/sbin/sshd -D -e -f /etc/ssh/sshd_config
caddy run --config /etc/caddy/Caddyfile --adapter caddyfile