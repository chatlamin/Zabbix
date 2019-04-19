<?php
// Zabbix GUI configuration file.
global $DB, $HISTORY;

$DB['TYPE']     = 'MYSQL';
$DB['SERVER']   = 'zabbix-mysql';
$DB['PORT']     = '3306';
$DB['DATABASE'] = 'zabbix';
$DB['USER']     = 'zabbix';
$DB['PASSWORD'] = 'zabbix_pwd';

// Schema name. Used for IBM DB2 and PostgreSQL.
$DB['SCHEMA'] = '';

$ZBX_SERVER      = 'zabbix-server';
$ZBX_SERVER_PORT = '10051';
$ZBX_SERVER_NAME = 'Zabbix docker';

$IMAGE_FORMAT_DEFAULT   = IMAGE_FORMAT_PNG;

// Elasticsearch url (can be string if same url is used for all types).
$HISTORY['url']   = '';
// Value types stored in Elasticsearch.
$HISTORY['types'] = [];
