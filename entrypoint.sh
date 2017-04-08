echo url="https://www.duckdns.org/update?domains=${DOMAINS}&token=${TOKEN}&ip=${IP}&ipv6=${IPV6}&verbose=${VERBOSE}&clear${CLEAR}" | curl -k -o /tmp/duckdns.log -K - && \
crontab -u duckdns crontab &&
crond -f
