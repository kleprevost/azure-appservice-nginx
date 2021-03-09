FROM caddy:latest

# Install openssh-server to provide web ssh access from kudu, supervisor to run processor
RUN apk add openssh \
     && echo "root:Docker!" | chpasswd 

COPY sshd_config /etc/ssh/
COPY init_container.sh /bin/

EXPOSE 80 2222
CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]
CMD ["/bin/init_container.sh"]