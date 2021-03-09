FROM caddy:latest

# Install openssh-server to provide web ssh access from kudu, supervisor to run processor
RUN apk add openssh \
     && echo "root:Docker!" | chpasswd 

COPY sshd_config /etc/ssh/

EXPOSE 80 2222
CMD ["/bin/init_container.sh"]