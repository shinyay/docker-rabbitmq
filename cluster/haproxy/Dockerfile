FROM haproxy:2.0.1
LABEL  maintainer "shinyay"
ADD haproxy.cfg /usr/local/etc/haproxy/
ENV HAPROXY_USER haproxy
RUN groupadd --system ${HAPROXY_USER} \
    && useradd --system --gid ${HAPROXY_USER} ${HAPROXY_USER}
CMD ['haproxy', '-f', /usr/local/etc/haproxy/haproxy.cfg]
