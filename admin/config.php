<?php
// HTTP
define('HTTP_SERVER', 'http://localhost/jfchealth/admin/');
define('HTTP_CATALOG', 'http://localhost/jfchealth/');

// HTTPS
define('HTTPS_SERVER', 'http://localhost/jfchealth/admin/');
define('HTTPS_CATALOG', 'http://localhost/jfchealth/');

// DIR
define('DIR_APPLICATION', dirname(dirname(__FILE__)).'/admin/');
define('DIR_SYSTEM', dirname(dirname(__FILE__)).'/system/');
define('DIR_DATABASE', dirname(dirname(__FILE__)).'/system/database/');
define('DIR_LANGUAGE', dirname(dirname(__FILE__)).'/admin/language/');
define('DIR_TEMPLATE', dirname(dirname(__FILE__)).'/admin/view/template/');
define('DIR_CONFIG', dirname(dirname(__FILE__)).'/system/config/');
define('DIR_IMAGE', dirname(dirname(__FILE__)).'/image/');
define('DIR_CACHE', dirname(dirname(__FILE__)).'/system/cache/');
define('DIR_DOWNLOAD', dirname(dirname(__FILE__)).'/download/');
define('DIR_LOGS', dirname(dirname(__FILE__)).'/system/logs/');
define('DIR_CATALOG', dirname(dirname(__FILE__)).'/catalog/');

// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_DATABASE', 'jfchealth_db');
define('DB_PREFIX', 'oc_');
?>