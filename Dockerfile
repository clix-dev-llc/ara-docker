FROM ubuntu:xenial

RUN set -x \
 && apt-get update -qq \
 && apt-get install -qqy python3 python3-pip gcc python-dev libffi-dev libssl-dev \
 && pip3 install ansible \
 && pip3 install ara \
 && set +x

ENV ANSIBLE_CALLBACK_PLUGINS="/usr/local/lib/python3.5/dist-packages/ara/plugins/callbacks"

RUN mkdir -p /tmp/ansible
WORKDIR /tmp/ansible

VOLUME /tmp/ansible

EXPOSE 9191

COPY start-ara.sh /

CMD ["/start-ara.sh"]
