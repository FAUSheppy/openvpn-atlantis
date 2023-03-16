# OpenVPN Container
Mount an openvpn-config as config.ovpn like this:

    docker run openvpn-atlantis -v /path/to/config/on/host:/app/config.ovpn

You can also include an `authorized_keys`-file:

    docker run openvpn-atlantis -v /path/to/auth/keys:/root/.ssh/authorized_keys_tmp

*Mind the `_tmp` at the end*, the file get's copied and permissions are changed at startup, because openssh will refuse any non-user owned file with only user access. This is hardcoded into the OpenSSH-code as a "security" measure.
