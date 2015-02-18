FROM alexeyraga/armhf-ubuntu-scala-c1:latest
MAINTAINER Alexey Raga <alexey.raga@gmail.com>

ADD spark-1.2.1-bin-hadoop24-scala2.11.tgz /usr/local/share/
RUN ln -s /usr/local/share/spark-1.2.1-bin-hadoop24-scala2.11 /usr/local/share/spark-1.2.1

ENV SPARK_HOME=/usr/local/share/spark-1.2.1
ENV PATH=$SPARK_HOME/bin:$PATH
