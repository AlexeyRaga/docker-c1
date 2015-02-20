FROM alexeyraga/armhf-ubuntu:latest
MAINTAINER Alexey Raga <alexey.raga@gmail.com>

RUN \
    apt-get update && apt-get install --no-install-recommends -y golang git-core mercurial && \
    export GOPATH=/tmp/go && \
    go get github.com/skynetservices/skydns && \
    cd $GOPATH/src/github.com/skynetservices/skydns && go build -v && \
    mv $GOPATH/src/github.com/skynetservices/skydns/skydns /usr/local/bin/ && \
    apt-get autoremove git-core mercurial golang python2.7 perl-modules perl liberror-perl libgdbm3 ucf -y && \
    rm -rf $GOPATH && unset GOPATH && \
    ./usr/local/bin/clean.sh

 ENTRYPOINT ["/usr/local/bin/skydns"]

 EXPOSE 53