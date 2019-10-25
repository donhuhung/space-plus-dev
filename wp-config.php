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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'space-plus-2019' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

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
define( 'AUTH_KEY',         'tW`mcnKghvEl9W%VNk.N}rw[)S#O]M}H+P1$O,w!0%(ws`Y*xS> _<wGLDPUX{~+' );
define( 'SECURE_AUTH_KEY',  '}?<#>EKd.}`OR&?2!WC_9Q?q,fgc_Q`RD=tlg%zFM{.pUyKT/1W)K5uxNg3O_N)G' );
define( 'LOGGED_IN_KEY',    '-9jh%!&l5h5&E|o4+(jLU#>+N=a!Swvn&}-{n{2A}8<xUU6=[tP_#Kyd5OQXDwme' );
define( 'NONCE_KEY',        'Y:r:.:Y5y7xgEx?q2Hd#;O90pK m1&9XdR.qCy^|m_<?Tq3g9<(2h.ueO t(FN5;' );
define( 'AUTH_SALT',        'X%[]lRsR.PGGim)(0ABnLLx%{Ef2[50oR :`fdkyQf!OO&u&MUd}lcC-0;u>{yl~' );
define( 'SECURE_AUTH_SALT', 'p2x<-.R-LJxj8K})O#V!>copYbJ8=_)Be{)HwtBmFHq|Zx0=,;p8|GW5+dFxZ;KR' );
define( 'LOGGED_IN_SALT',   ')!g!^9~]GURJl_m W*nx9df+LQ7_NyV/]&N^?,W|18?2O:JKVXmAy!FX.(]+Oun ' );
define( 'NONCE_SALT',       'zeSGD4e?YY+x~;~@ [hIV-mv.YeA]ZBV-](3kFB#MdLK8u.o>4p6Le9ro#hAK.s>' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'spl_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
