# Zabbix Agent на OS Windows x64

## Настройка Zabbix Agent

[Скачиваем](https://github.com/chatlamin/zabbix-agent) каталог win64 и кладем его в папку C:\zabbix

Конфиг-файл находится тут C:\zabbix\win64\zabbix_agentd.conf

    LogFile=c:\zabbix\win64\zabbix_agentd.log
    Server=192.168.0.21
    ServerActive=192.168.0.21
    Hostname=hostname

## Настройка Firewall

    Netsh Advfirewall Firewall Add Rule name="Zabbix" dir=in action=allow description="Zabbix" profile=any localport=10050 protocol=tcp

## Запуск

Скрипты для управления находятся в папке scripts

---------------------
[Официальная документация](https://www.zabbix.com/documentation/4.0/ru/manual/concepts/agent)