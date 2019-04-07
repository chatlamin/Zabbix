docker run --name mysql-server \
    --detach \
    --tty \
    --volume /etc/localtime:/etc/localtime:ro \
    --volume /etc/timezone:/etc/timezone:ro \
    --volume /home/docker/containers/mysql:/var/lib/mysql \
    --env MYSQL_DATABASE="zabbix" \
    --env MYSQL_USER="zabbix" \
    --env MYSQL_PASSWORD="zabbix_pwd" \
    --env MYSQL_ROOT_PASSWORD="root_pwd" \
    mysql:5.7 \
    --character-set-server=utf8 --collation-server=utf8_bin