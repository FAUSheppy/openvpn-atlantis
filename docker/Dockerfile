FROM python:3.9-slim-buster

RUN apt update
RUN apt install openvpn ssh -y
RUN apt autoremove -y
RUN apt clean

COPY sshd_config /etc/ssh/sshd_config

RUN mkdir /app
RUN mkdir /run/sshd
RUN mkdir /root/.ssh/

WORKDIR /app
COPY run.sh /app/

ENTRYPOINT ["./run.sh"]
CMD ["config.ovpn"]
