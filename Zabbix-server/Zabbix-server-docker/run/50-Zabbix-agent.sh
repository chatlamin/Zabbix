sudo mkdir -p /home/docker/containers/zabbix-agent/config
sudo touch /home/docker/containers/zabbix-agent/config/zabbix_agentd.conf

docker run --name zabbix-agent \
    --detach \
    --restart=always \
    --privileged \
    --volume /proc:/data/proc \
    --volume /sys:/data/sys \
    --volume /dev:/data/dev \
    --volume /var/run/docker.sock:/var/run/docker.sock \
    --volume /home/docker/containers/zabbix-agent/config/zabbix_agentd.conf:/etc/zabbix/zabbix_agentd.conf \
    --publish 10050:10050 \
    zabbix/zabbix-agent:ubuntu-4.2-latest