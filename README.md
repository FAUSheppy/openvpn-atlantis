# OpenVPN Container
Mount an openvpn-config as config.ovpn like this:

    docker run openvpn-atlantis -v /path/to/config/on/host:/app/config.ovpn

You can also include an `authorized_keys`-file:

    docker run openvpn-atlantis -v /path/to/auth/keys:/root/.ssh/authorized_keys_tmp

*Mind the `_tmp` at the end*, the file get's copied and permissions are changed at startup, because openssh will refuse any non-user owned file with only user access. This is hardcoded into the OpenSSH-code as a "security" measure.

To allow connections to the host (if you want to use this container as a jump-host) add:

    --add-host host.docker.internal:host-gateway

You can now access the host via the literal address `host.docker.internal`.

Here is a full docker-compose example:

    version: "3"
    services:
        openvpn:
            image: registry.atlantishq.de/atlantis/openvpn-atlantis:latest
            restart: always
            extra_hosts:
                - host.docker.internal:host-gateway
            cap_add:
                - NET_ADMIN
            devices:
                - /dev/net/tun
            volumes:
                - /data/openvpn.config:/app/config.ovpn
                - /data/authorized_keys:/root/.ssh/authorized_keys_tmp
