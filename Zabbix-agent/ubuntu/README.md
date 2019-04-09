# Zabbix Agent

## Установка на OS Ubuntu 16.04

    sudo wget https://repo.zabbix.com/zabbix/4.2/ubuntu/pool/main/z/zabbix-release/zabbix-release_4.2-1+xenial_all.deb
    sudo dpkg -i zabbix-release_4.2-1+xenial_all.deb
    sudo apt update
    sudo apt install zabbix-agent

## Установка на OS Ubuntu 18.04

    sudo wget https://repo.zabbix.com/zabbix/4.2/ubuntu/pool/main/z/zabbix-release/zabbix-release_4.2-1+bionic_all.deb
    sudo dpkg -i zabbix-release_4.2-1+bionic_all.deb
    sudo apt update
    sudo apt install zabbix-agent

## Настройка Zabbix Agent

Конфиг-файл находится тут /etc/zabbix/zabbix_agentd.conf

    LogFileSize=10
    Server=192.168.0.21
    ServerActive=192.168.0.21
    Hostname=system.hostname

Перезапускаем агент

    sudo /etc/init.d/zabbix-agent restart

[Официальная документация 4.0](https://www.zabbix.com/documentation/4.0/ru/manual/installation/install_from_packages/debian_ubuntu)

[Официальная документация 4.2](https://www.zabbix.com/documentation/4.2/manual/installation/install_from_packages/debian_ubuntu)