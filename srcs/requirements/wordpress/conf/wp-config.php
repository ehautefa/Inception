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
define( 'DB_NAME', $_ENV['WORDPRESS_DB_NAME'] );

/** MySQL database username */
define( 'DB_USER', $_ENV['WORDPRESS_DB_USER']);

/** MySQL database password */
define( 'DB_PASSWORD', $_ENV['WORDPRESS_DB_PASSWORD']);

/** MySQL hostname */
define( 'DB_HOST', $_ENV['WORDPRESS_DB_HOST']);

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
define('AUTH_KEY',         '/[TwcQI`?mcB|U03hBKS6.grn7yM`GwXTjM:blWHoH`9aUCitU&BoI>s#]xc-F>E');
define('SECURE_AUTH_KEY',  '4Ke:#;*%r$W~AF;b}8/hb>G<TYQr2b</K+}!$>7JN`3{giQu#fEEPHdOQ&TT^0c7');
define('LOGGED_IN_KEY',    '`41B|@& en|OAW9|#ENj(. tW{foGWhUFA#Rs{24K3.3MAVa3u|o./ntSYX8M)%(');
define('NONCE_KEY',        '2=;X5yTu`tl9|EHc~4B({n-Wg8+$/Mtbp gvtM9#LtA9q.x!IyZk5EVv?x_3>{6D');
define('AUTH_SALT',        ':pjJ/FuQn8.L{0m2.@B7D+CC|YTGwapqXH>#mm;<jQ}&(RY9vS}vSBDEuk|+ :LV');
define('SECURE_AUTH_SALT', 'R;@lo5/&_&lMkRXWK>HV^4 >~#Xj^Kw,_:fH}B~Bnl[|%L5QkN||8;DF.^C?m+12');
define('LOGGED_IN_SALT',   'k$+6~H6~RFt4(+[i*hGj@57Ves-(]OyqOO%HooV|ioqZ2+fH@VZm9 &4&fJm-ZBn');
define('NONCE_SALT',       'f.:M,:q=SMvV/ZGYDJWe$2R[^h#DF,|bF=Cc%c+YiCW-T6zLTM;1*@#q~iBTd_f`');

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
