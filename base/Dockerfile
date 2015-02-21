FROM hominidae/armhf-ubuntu:latest
MAINTAINER Alexey Raga <alexey.raga@gmail.com>

ADD ./clean.sh /usr/local/bin/clean.sh
RUN chown root.root /usr/local/bin/clean.sh && chmod 700 /usr/local/bin/clean.sh

RUN \
    apt-get update && \
    apt-get install -y curl wget vim supervisor && \
    apt-get clean && \
    /usr/local/bin/clean.sh

ADD ./01_nodoc /etc/dpkg/dpkg.cfg.d/01_nodoc
ADD ./02nocache /etc/apt/apt.conf.d/02nocache