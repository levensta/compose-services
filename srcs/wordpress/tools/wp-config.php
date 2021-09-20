<?php

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'data' );

/** MySQL database username */
define( 'DB_USER', '${DB_USER}' );

/** MySQL database password */
define( 'DB_PASSWORD', '${DB_PASSWORD}' );

/** MySQL hostname */
define( 'DB_HOST', 'mariadb' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

define('AUTH_KEY',         'P_ |V~mY4j:_OB$FpWEWl@y+S13e0~1?D/pb?ou+b4<LSmYTp9t-a30M@zlp# Et');
define('SECURE_AUTH_KEY',  'v!M-*0Q4YGY#:F&l9Vh;:<%/TsYkjJb>gt!a>cfaEP?$yW|3vH#qZ|ie7Z4PIxa2');
define('LOGGED_IN_KEY',    'a-HJ@!]rm{[<Y:urmdim/E.)f>l39%@!)>@Rc07Y>ym:c+uR/e$3@`t#yh^s!`aG');
define('NONCE_KEY',        'Mf~_LIP*@&7Pak<p*K9(9[.Dh4;t3%,>_2>|z-DdH;|j7 u]+ttQVov DI%0|V7S');
define('AUTH_SALT',        '*h|KX[rJSb5G.]Aa!E}zg+W)@a0iV+~9bKEF:EJ&8P1q;-6op-N1]hQ 65xUvZ+)');
define('SECURE_AUTH_SALT', 'UBy+=7?=ZBk>S5OImRBA5)5.zn+Hz5$e|:ekjAc+b-&g5$m/*Z&}d$+Mq49g&pHi');
define('LOGGED_IN_SALT',   '$ZBOH.Rzkldr,GQ3QAj+[x@+VHY!c?C! Qd7)mqb>MZ9(!tUkwo?+MBX4hn6)EQT');
define('NONCE_SALT',       '{:ex*If^?_BUl|Bmo](z*mP4IU-^mN!gtk;k56 *zmf=td[20yF6=}mQO;hH8vuH');

$table_prefix = 'brntcd21_wp_';

define( 'WP_DEBUG', false );

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';
?>