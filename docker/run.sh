#!/bin/bash

# workaround for openssh file permission check
cp /root/.ssh/authorized_keys_tmp /root/.ssh/authorized_keys
chown root:root /root/.ssh/authorized_keys
chmod 700 /root/.ssh/authorized_keys

# run sshd
/usr/sbin/sshd

# run openvpn
exec /usr/sbin/openvpn config.ovpn
