FROM alexeyraga/armhf-ubuntu-c1:latest
MAINTAINER Alexey Raga <alexey.raga@gmail.com>

RUN add-apt-repository ppa:webupd8team/java -y && \
    apt-get update && \
    echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get install oracle-java7-installer -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    find /usr/share/locale -mindepth 1 -maxdepth 1 ! -name 'en' |xargs rm -r && \
    find /usr/share/doc -depth -type f |xargs rm || true && \
    find /usr/share/doc -empty|xargs rmdir || true && \
    rm -rf /usr/share/man /usr/share/groff /usr/share/info /usr/share/lintian /usr/share/linda /var/cache/man && \
    rm -rf /var/cache/oracle-jdk7-installer && \
    rm -rf /usr/lib/jvm/java-7-oracle/man && \
    rm /usr/lib/jvm/java-7-oracle/src.zip

RUN mkdir -p /usr/local/share && \
    wget http://www.scala-lang.org/files/archive/scala-2.11.5.tgz && \
    tar -xvf scala-2.11.5.tgz -C /usr/local/share && rm scala-*.tgz


ENV SCALA_HOME=/usr/local/share/scala-2.11.5
ENV PATH=$SCALA_HOME/bin:$PATH