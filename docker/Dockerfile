FROM alpine:latest

RUN apk add --no-cache openvpn openssh openrc
RUN rc-update add sshd

COPY sshd_config /etc/ssh/sshd_config

RUN mkdir /app
RUN mkdir /run/sshd
RUN mkdir /root/.ssh/

WORKDIR /app
COPY run.sh /app/

ENTRYPOINT ["/app/run.sh"]
CMD ["/app/config.ovpn"]
