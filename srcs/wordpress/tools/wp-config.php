<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

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

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'P_ |V~mY4j:_OB$FpWEWl@y+S13e0~1?D/pb?ou+b4<LSmYTp9t-a30M@zlp# Et');
define('SECURE_AUTH_KEY',  'v!M-*0Q4YGY#:F&l9Vh;:<%/TsYkjJb>gt!a>cfaEP?$yW|3vH#qZ|ie7Z4PIxa2');
define('LOGGED_IN_KEY',    'a-HJ@!]rm{[<Y:urmdim/E.)f>l39%@!)>@Rc07Y>ym:c+uR/e$3@`t#yh^s!`aG');
define('NONCE_KEY',        'Mf~_LIP*@&7Pak<p*K9(9[.Dh4;t3%,>_2>|z-DdH;|j7 u]+ttQVov DI%0|V7S');
define('AUTH_SALT',        '*h|KX[rJSb5G.]Aa!E}zg+W)@a0iV+~9bKEF:EJ&8P1q;-6op-N1]hQ 65xUvZ+)');
define('SECURE_AUTH_SALT', 'UBy+=7?=ZBk>S5OImRBA5)5.zn+Hz5$e|:ekjAc+b-&g5$m/*Z&}d$+Mq49g&pHi');
define('LOGGED_IN_SALT',   '$ZBOH.Rzkldr,GQ3QAj+[x@+VHY!c?C! Qd7)mqb>MZ9(!tUkwo?+MBX4hn6)EQT');
define('NONCE_SALT',       '{:ex*If^?_BUl|Bmo](z*mP4IU-^mN!gtk;k56 *zmf=td[20yF6=}mQO;hH8vuH');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'brntcd21_wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
?>