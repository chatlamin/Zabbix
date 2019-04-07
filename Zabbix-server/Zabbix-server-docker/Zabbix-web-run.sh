docker run --name zabbix-web-nginx-mysql \
    --tty \
    --detach \
    --env DB_SERVER_HOST="mysql-server" \
    --env MYSQL_DATABASE="zabbix" \
    --env MYSQL_USER="zabbix" \
    --env MYSQL_PASSWORD="zabbix_pwd" \
    --env MYSQL_ROOT_PASSWORD="root_pwd" \
    --volume /etc/localtime:/etc/localtime:ro \
    --volume /etc/timezone:/etc/timezone:ro \
    --link mysql-server:mysql \
    --link zabbix-server-mysql:zabbix-server \
    --publish 80:80 \
    zabbix/zabbix-web-nginx-mysql:latest

# login/password:
# Admin/zabbix