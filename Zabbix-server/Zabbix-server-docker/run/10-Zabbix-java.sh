docker run --name zabbix-java-gateway \
    --tty \
    --net zabbix-net \
    --detach \
    --volume /etc/localtime:/etc/localtime:ro \
    --volume /etc/timezone:/etc/timezone:ro \
    zabbix/zabbix-java-gateway:latest