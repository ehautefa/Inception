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
define( 'DB_NAME', 'wordpress');

/** MySQL database username */
define( 'DB_USER', 'ehautefa');

/** MySQL database password */
define( 'DB_PASSWORD', 'pass2');

/** MySQL hostname */
define( 'DB_HOST', 'mysql:3306');

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
define('AUTH_KEY',         'mqxv0TX,FHe]EM-iVkiR6eDrP#jCtl+Hf7YC}|z4;z5_u?&b1 B/prP7moZjfpN^');
define('SECURE_AUTH_KEY',  '>W4Hz%v=W4/!B@+)P_-9oOBH$A:Q5&;:Cn(_PXc _e@+Oo~0WITq$EB(-c/(VHL}');
define('LOGGED_IN_KEY',    'N-<gG`BoxM^dX2UU_G%B6$fj{Lo+-wwpx{jo;BNa?+ThAk-u0mbVDifU>IUaFc^g');
define('NONCE_KEY',        'kMSF/vWoiY5a~#)2r^7=)S+=w}+s_0yf37rq hlFPQ_|M:f/zsp[SF9keDNB^xWC');
define('AUTH_SALT',        'Rju?d9wu>,%xCgJPxa091HV9[n*d{K0?Px@PV=iDv<k=CEp%@.0eC-Y.1[Z]U7cN');
define('SECURE_AUTH_SALT', '+@cu90|9wnP3?XVUFf|!n!Z-2GOkg)X&n-td$oiQN]r]*k+ FHP@WIr[q#eCBa3u');
define('LOGGED_IN_SALT',   'X%76LN]~PsUqipY&J/b_AwW$A]5hj&ADp-]Sz|`uaAu1^DTN/Ua2gF!<!.J1RM6v');
define('NONCE_SALT',       'A8PM}p63-GdH6*U3CBixy4Z|Le&#X5j-[@S8h(mHCEd!s#-d$9K1!Hq++%k7wgFV');

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
