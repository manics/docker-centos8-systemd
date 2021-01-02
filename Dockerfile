# Based on
# https://github.com/adevur/docker-centos-8/blob/e0d71b5b218c4dfe61c296c9bf0172513730aeb4/tag-init/Dockerfile
# https://github.com/adevur/docker-centos-8/blob/e0d71b5b218c4dfe61c296c9bf0172513730aeb4/tag-init/Dockerfile


FROM docker.io/library/centos:8

# LABEL maintainer = ""

CMD ["/sbin/init"]

STOPSIGNAL SIGRTMIN+3

RUN systemctl mask \
    systemd-remount-fs.service \
    dev-hugepages.mount \
    sys-fs-fuse-connections.mount \
    systemd-logind.service \
    getty.target \
    console-getty.service \
    systemd-udev-trigger.service \
    systemd-udevd.service \
    systemd-random-seed.service \
    kdump.service

