FROM alexeyraga/armhf-ubuntu:latest
MAINTAINER Alexey Raga <alexey.raga@gmail.com>

ADD ./bin/etcd-bin.tar.gz /usr/local/bin/
COPY ./bootstrap.sh /usr/local/bin/etcd-bootstrap.sh

ENTRYPOINT ["/usr/local/bin/etcd-bootstrap.shS"]

EXPOSE 2380 7001 2379 4001