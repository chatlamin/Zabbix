docker run --name zabbix-java-gateway \
    --tty \
    --detach \
    --volume /etc/localtime:/etc/localtime:ro \
    --volume /etc/timezone:/etc/timezone:ro \
    zabbix/zabbix-java-gateway:latest