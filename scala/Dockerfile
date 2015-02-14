FROM alexeyraga/armhf-ubuntu-c1:latest
MAINTAINER Alexey Raga <alexey.raga@gmail.com>

RUN add-apt-repository ppa:webupd8team/java -y && apt-get update

RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get install -y oracle-java7-installer

RUN mkdir -p /usr/local/share
RUN wget http://www.scala-lang.org/files/archive/scala-2.11.5.tgz
RUN tar -xvf scala-2.11.5.tgz -C /usr/local/share && rm scala-*.tgz

ENV SCALA_HOME=/usr/local/share/scala-2.11.5
ENV PATH=$SCALA_HOME/bin:$PATH