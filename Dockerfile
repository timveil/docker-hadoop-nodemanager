FROM timveil/docker-hadoop-core:3.1.x

LABEL maintainer="tjveil@gmail.com"

HEALTHCHECK CMD curl -f http://localhost:8042/ || exit 1

ADD run.sh /run.sh
RUN chmod a+x /run.sh

# node manager UI
EXPOSE 8042

CMD ["/run.sh"]
