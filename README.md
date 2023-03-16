# OpenVPN Container
Mount an openvpn-config as config.ovpn like this:

    docker run openvpn-atlantis -v /path/to/config/on/host:/app/config.ovpn

You can also include an `authorized_keys`-file:

    docker run openvpn-atlantis -v /path/to/auth/keys:/root/.ssh/authorized_keys

