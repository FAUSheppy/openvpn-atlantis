#!/bin/bash
/usr/sbin/sshd
exec /usr/sbin/openvpn config.ovpn
