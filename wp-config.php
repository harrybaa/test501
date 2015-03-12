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
define('DB_PASSWORD', '123456');

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
define('AUTH_KEY',         '}eP?~~5U2U<34$Qr.a`0cQ3!NmYb}R{2n_%i5lR8J G`{iG/;F5lOY}E<=uPRR./');
define('SECURE_AUTH_KEY',  'NC.BiROm?U%*.4?U*0]:@w/}~*S.I^(6jzzzNoG6hg#7X] IBmx9<)=shS%h &%;');
define('LOGGED_IN_KEY',    'Sdf]GQ)@W9<V3XyxnW>. @>WQp[qvffc{eUZ5_:)EMP;5_Who$|Cyd4bh->M|Jcq');
define('NONCE_KEY',        'Gys^B9W^UC%b]ESdrJK?GW%fK[?B+LbAA !w9N5f3^CysW7faTxd[9gQhyrT[8_B');
define('AUTH_SALT',        'gI*V6II3Y6Yqt?VxD]}et`g-DL?<M+rPfafY|PK,.D3Ek[~L_d!jTcASp:v:[Gj{');
define('SECURE_AUTH_SALT', 'fl9([0fK;!DeMr=9w%21:+;^N}ZV dB-h50$AJu6wCE<#j+oK+SO;5U+],6AmWQ$');
define('LOGGED_IN_SALT',   'NH.rZ6_OgE]w6wWgtG:W=V]Y4dc PL{*bsQ?/?7.=j^m%cwVx32jSH<g#]AO}bE9');
define('NONCE_SALT',       ')u<Rph|,UaO{sbp<bG}u$R.MMQ @&yRWYrB!1uH-L-l8d~ ~w8p{;&t8M_TKce2)');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'dm_';

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
