docker run --name zabbix-server \
    --tty \
    --detach \
    --env DB_SERVER_HOST="zabbix-mysql" \
    --env MYSQL_DATABASE="zabbix" \
    --env MYSQL_USER="zabbix" \
    --env MYSQL_PASSWORD="zabbix_pwd" \
    --env MYSQL_ROOT_PASSWORD="root_pwd" \
    --env ZBX_JAVAGATEWAY="zabbix-java-gateway" \
    --volume /etc/localtime:/etc/localtime:ro \
    --volume /etc/timezone:/etc/timezone:ro \
    --volume /home/docker/containers/zabbix-server/alertscripts:/usr/lib/zabbix/alertscripts:ro \
    --volume /home/docker/containers/zabbix-server/externalscripts:/usr/lib/zabbix/externalscripts:ro \
    --volume /home/docker/containers/zabbix-server/modules:/var/lib/zabbix/modules:ro \
    --volume /home/docker/containers/zabbix-server/enc:/var/lib/zabbix/enc:ro \
    --volume /home/docker/containers/zabbix-server/ssh_keys:/var/lib/zabbix/ssh_keys:ro \
    --volume /home/docker/containers/zabbix-server/mibs:/var/lib/zabbix/mibs:ro \
    --link zabbix-mysql:zabbix-mysql \
    --link zabbix-java-gateway:zabbix-java-gateway \
    --publish 10051:10051 \
    zabbix/zabbix-server-mysql:latest