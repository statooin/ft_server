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
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'statooin' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/** File system method */
define('FS_METHOD', 'direct');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'en6KFBmbnMRl_Vk{}w&6|.FIGRa8QvtYor6 R +P-=HU&N?NiZw.~kchUhz^+]Pf');
define('SECURE_AUTH_KEY',  'TJM^: s0-+Wtt<4~jV7=OH]s%nK}}S1#f$W[){HFgj:XdekL#e|7btw MEn5ApX8');
define('LOGGED_IN_KEY',    'ouGn@)gmB-9umGNzJ}z+OOgbb==-XR2=<lxv+|i9O+w5Y:Bp9Num_C !0|*kW&@W');
define('NONCE_KEY',        '#HW>s|Ek01j5G!SBdpkEMP7m&iiDoW<;xr%N}927:VPXNO|Cch/^/FV-AnW_lQj9');
define('AUTH_SALT',        'ZK&Mn/@r&6<M5n38g.J_6vruu*hMxrZnP@[z5[|--h9+Y(%i9irO<JMNL6+>E @2');
define('SECURE_AUTH_SALT', '~qNE3U_J:nRxd,uqjUCS5MoFlP{Vl{|(V(T!B};5=yq%KY|+hQ9v2;qH Fa+t-]o');
define('LOGGED_IN_SALT',   '+V3[O{Cc+HArBbW;|8kW-_Y |~d&+}0^]dM+a+c)5ZYemeE%h+G4V#q|1/|-cY(|');
define('NONCE_SALT',       'tpa<V$Z7-HMRUF_L4ut_+051MtIr2#s6:lF,pKCEZb.] 64Tj;92Kl= 8K-;;&D=');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

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
