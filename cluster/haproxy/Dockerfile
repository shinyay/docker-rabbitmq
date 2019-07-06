FROM haproxy:2.0.1
LABEL  maintainer "shinyay"
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
ENV HAPROXY_USER haproxy
RUN groupadd --system ${HAPROXY_USER} \
    && useradd --system --gid ${HAPROXY_USER} ${HAPROXY_USER}
