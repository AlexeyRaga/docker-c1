FROM alexeyraga/armhf-ubuntu:latest
MAINTAINER Alexey Raga <alexey.raga@gmail.com>

RUN \
    apt-get update && apt-get install --no-install-recommends -y golang
    apt-get clean && \
    find /usr/share/locale -mindepth 1 -maxdepth 1 ! -name 'en' |xargs rm -r && \
    find /usr/share/doc -depth -type f |xargs rm || true && \
    find /usr/share/doc -empty|xargs rmdir || true && \
    rm -rf /usr/share/man /usr/share/groff /usr/share/info /usr/share/lintian /usr/share/linda /var/cache/man
