FROM sebp/elk

COPY logstash/??-*.conf /etc/logstash/conf.d/

# Where the configs are
EXPOSE 12201
