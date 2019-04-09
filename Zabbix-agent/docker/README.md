# Zabbix Agent в Docker контейнере

    docker run --name zabbix-agent \
      --detach \
      --privileged \
      --volume /proc:/data/proc \
      --volume /sys:/data/sys \
      --volume /dev:/data/dev \
      --volume /var/run/docker.sock:/var/run/docker.sock \
      --volume /home/docker/containers/zabbix-agent/zabbix_agentd.conf:/etc/zabbix/zabbix_agentd.conf \
      --publish 10050:10050 \
      --link zabbix-server-mysql:zabbix-server-mysql \
      zabbix/zabbix-agent:ubuntu-4.2-latest

[Источник](https://github.com/zabbix/zabbix-docker/tree/4.2/agent/ubuntu)

[Про проблему запуска zabbix-agent-docker вместе с zabbix-server-docker](https://github.com/zabbix/zabbix-docker/issues/390)

[Как получить IP контейнера](http://qaru.site/questions/14736/how-to-get-a-docker-containers-ip-address-from-the-host)

docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' container_name_or_id
