FROM alexeyraga/armhf-ubuntu-scala-c1:latest
MAINTAINER Alexey Raga <alexey.raga@gmail.com>

RUN wget http://www.apache.org/dyn/closer.cgi/spark/spark-1.2.1/spark-1.2.1.tgz && \
    tar -xvf spark-1.2.1.tgz -C /usr/local/share && rm spark-*.tgz

ENV SPARK_HOME=/usr/local/share/spark-1.2.1
ENV PATH=$SPARK_HOME/bin:$PATH