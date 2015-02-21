FROM alexeyraga/armhf-ubuntu:latest
MAINTAINER Alexey Raga <alexey.raga@gmail.com>

ADD ./bin/etcd-bin.tar.gz /usr/local/bin/
COPY ./config/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

RUN mkdir -p /etc/etcd
ENV ETCD_DATA_DIR /etc/etcd
ENV ETCD_NAME default

EXPOSE 2380 7001 2379 4001

ENTRYPOINT ["/usr/bin/supervisord"]