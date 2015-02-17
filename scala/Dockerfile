FROM alexeyraga/armhf-ubuntu-c1:latest
MAINTAINER Alexey Raga <alexey.raga@gmail.com>

RUN \
    wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u60-b19/jdk-7u60-linux-arm-vfp-hflt.tar.gz && \
    tar zxf jdk-7u60-linux-arm-vfp-hflt.tar.gz -C /usr/local/share && rm jdk-*.tar.gz && \
    rm /usr/local/share/jdk1.7.0_60/src.zip && \
    rm -rf /usr/local/share/jdk1.7.0_60/man

RUN update-alternatives --install "/usr/bin/java" "java" "/usr/local/share/jdk1.7.0_60/bin/java" 1

RUN mkdir -p /usr/local/share && \
    wget http://www.scala-lang.org/files/archive/scala-2.11.5.tgz && \
    tar -xvf scala-2.11.5.tgz -C /usr/local/share && rm scala-*.tgz

ENV JAVA_HOME=/usr/local/share/jdk1.7.0_60
ENV SCALA_HOME=/usr/local/share/scala-2.11.5
ENV PATH=$SCALA_HOME/bin:$PATH