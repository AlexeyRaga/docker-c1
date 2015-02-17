FROM hominidae/armhf-ubuntu:latest
MAINTAINER Alexey Raga <alexey.raga@gmail.com>

RUN apt-get update && \
    apt-get upgrade -y && \ 
    apt-get install -y curl wget && \
    apt-get install python-software-properties software-properties-common -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    find /usr/share/locale -mindepth 1 -maxdepth 1 ! -name 'en' |xargs rm -r && \
    find /usr/share/doc -depth -type f |xargs rm || true && \
    find /usr/share/doc -empty|xargs rmdir || true && \
    rm -rf /usr/share/man /usr/share/groff /usr/share/info /usr/share/lintian /usr/share/linda /var/cache/man

ADD ./01_nodoc /etc/dpkg/dpkg.cfg.d/01_nodoc
ADD ./02nocache /etc/apt/apt.conf.d/02nocache