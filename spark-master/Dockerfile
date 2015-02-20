FROM alexeyraga/armhf-spark:latest
MAINTAINER Alexey Raga <alexey.raga@gmail.com>

COPY bootstrap.sh /etc/bootstrap.sh
RUN chown root.root /etc/bootstrap.sh && chmod 700 /etc/bootstrap.sh

CMD $SPARK_HOME/sbin/start-master.sh

ENTRYPOINT ["/etc/bootstrap.sh"]

EXPOSE 7077 8080