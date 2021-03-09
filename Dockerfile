FROM caddy:latest

# Install openssh-server to provide web ssh access from kudu, supervisor to run processor
RUN apk add openssh \
     && echo "root:Docker!" | chpasswd 

COPY sshd_config /etc/ssh/
COPY init_container.sh /bin/

ENV XDG_CONFIG_HOME /config
ENV XDG_DATA_HOME /data

EXPOSE 2222
EXPOSE 80
EXPOSE 443
EXPOSE 2019

WORKDIR /srv

CMD ["/bin/init_container.sh"]