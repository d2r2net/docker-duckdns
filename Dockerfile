FROM alpine:latest
LABEL maintainer "didier@ordinateur.guru"
VOLUME ["/opt/duckdns"]
COPY crontab /opt/duckdns/crontab
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
ENV DOMAINS ""
ENV TOKEN ""
ENV IP ""
ENV IPV6 ""
ENV VERBOSE false
ENV CLEAR false
ENV INTERVAL 30
ENV TZ "America/Montreal"
RUN apk add --update --no-cache curl tzdata && \
cp /usr/share/zoneinfo/${TZ} /etc/localtime && \
echo "${TZ}" > /etc/timezone && \
rm -rf /var/cache/apk/* && \
adduser -S -D duckdns && \
mkdir -p /opt/duckdns &&\
chown duckdns /opt/duckdns && \
chmod +x /opt/duckdns/crontab /usr/local/bin/entrypoint.sh && \
WORKDIR /opt/duckdns
ENTRYPOINT ["sh","/usr/local/bin/entrypoint.sh"]
