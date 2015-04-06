<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link http://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wptest');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '*L>N;c8Cn:,1m-<[r0D)_V:D>Rp-X~Sa;XjA*Nw*R<P3}`&-*8**<>=?xmx:[) K');
define('SECURE_AUTH_KEY',  '1c2tLwj^4H_tmcf,)p~`{l._b?=lSR636eB|6g1WOGGb`)c<o{v=#~Nt5t~/R3QK');
define('LOGGED_IN_KEY',    'AiGlr;ZJVPQkkpZ <Zy5MfHD<q-g@.inUanbJBzrWKIP 7dH$p:bLqSe i6F~Gd`');
define('NONCE_KEY',        '[h}UzCrZx4=3)/SuO!.l@6*zq|[:Z:=-:b0%ka,G^D*,:m;QsLG6_uq])y$r7D@i');
define('AUTH_SALT',        '<Dn2AHfDilE]qK*(,z5Kn)l$6Y=jfOA^5j^fsj-DS-qIdti:aTk%Dspi=*H59i5a');
define('SECURE_AUTH_SALT', 'B6tD0oI_yj^a7]&>*T/R!q2>xOr8 Z&;j5<=FRC=P3`f;uHeV^xeMerwh,5+>iLV');
define('LOGGED_IN_SALT',   '|}T]Xo.:`]Y![F=Q?2OaBmu0R`^X|hXb<v7YsV.x :N_^vMW|XCVKE%,j%wR8t5]');
define('NONCE_SALT',       'xM_&qu5gcm75x<;9xR=P~m:i_*-_GEWc@L8c&n113 iK`DM8lv^jQcY8`+}pUTD~');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
