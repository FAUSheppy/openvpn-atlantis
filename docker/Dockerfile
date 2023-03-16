FROM python:3.9-slim-buster

RUN apt update
RUN apt install openvpn -y
RUN apt autoremove -y
RUN apt clean

RUN mkdir /app
WORKDIR /app

ENTRYPOINT ["openvpn"]
CMD ["-c", "config.ovpn"]
