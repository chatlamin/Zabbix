docker run --name zabbix-web-nginx \
    --tty \
    --detach \
    --net zabbix-net \
    --env DB_SERVER_HOST="zabbix-mysql" \
    --env MYSQL_DATABASE="zabbix" \
    --env MYSQL_USER="zabbix" \
    --env MYSQL_PASSWORD="zabbix_pwd" \
    --env MYSQL_ROOT_PASSWORD="root_pwd" \
    --volume /etc/localtime:/etc/localtime:ro \
    --volume /etc/timezone:/etc/timezone:ro \
    --publish 80:80 \
    zabbix/zabbix-web-nginx-mysql:latest

docker run --name zabbix-web-nginx \
    --tty \
    --detach \
    --net zabbix-net \
    --env DB_SERVER_HOST="zabbix-mysql" \
    --env MYSQL_DATABASE="zabbix" \
    --env MYSQL_USER="zabbix" \
    --env MYSQL_PASSWORD="zabbix_pwd" \
    --env MYSQL_ROOT_PASSWORD="root_pwd" \
    --volume /etc/localtime:/etc/localtime:ro \
    --volume /etc/timezone:/etc/timezone:ro \
    --volume /home/docker/containers/zabbix-web-nginx/config/zabbix.conf.php:/etc/zabbix/web/zabbix.conf.php \
    --publish 80:80 \
    zabbix/zabbix-web-nginx-mysql:latest