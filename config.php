<?php
// HTTP
define('HTTP_SERVER', 'http://localhost/jfchealth/');

// HTTPS
define('HTTPS_SERVER', 'http://localhost/jfchealth/');

// DIR
define('DIR_APPLICATION', dirname(__FILE__).'/catalog/');
define('DIR_SYSTEM', dirname(__FILE__).'/system/');
define('DIR_DATABASE', dirname(__FILE__).'/system/database/');
define('DIR_LANGUAGE', dirname(__FILE__).'/catalog/language/');
define('DIR_TEMPLATE', dirname(__FILE__).'/catalog/view/theme/');
define('DIR_CONFIG', dirname(__FILE__).'/system/config/');
define('DIR_IMAGE', 'image/');
define('DIR_PDF', dirname(__FILE__).'/pdf/');
define('DIR_CACHE', dirname(__FILE__).'/system/cache/');
define('DIR_DOWNLOAD', dirname(__FILE__).'/image/data/');
define('DIR_LOGS', dirname(__FILE__).'/system/logs/');

// DB
define('DB_DRIVER', 'mysqli');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_DATABASE', 'jfchealth_db');
define('DB_PREFIX', 'oc_');
?>