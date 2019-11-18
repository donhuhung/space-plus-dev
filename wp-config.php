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
define('DB_NAME', 'space-plus-2019');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

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
define('AUTH_KEY',         'ULAP?XTLk8bbI Eo/xOG||`l,n^YGdY/9}^vBm2yR^;z5&pZ 3-toxq0s07uJ1}5');
define('SECURE_AUTH_KEY',  '%<7:,vy6L`}}a O4~q7C,9O9QnMs&>v3ckBLCh.0gU+yJ@hv&R9Ml03]#wUA=JhS');
define('LOGGED_IN_KEY',    '<:<iPH9A?e){>5wwyJ$%Tr|ssYoZ=S[y.J0-^k$L;>/RnSR*y J.2e[j5:.d,?-r');
define('NONCE_KEY',        '})ogN:Xju>9R#&OT.5/b[&8u.AH`~9;ZL=nI`0(f2)8u^b% ~(^?KiS74Kjao87Y');
define('AUTH_SALT',        'eCU<h67IkDct?1;jg`I>%?BV+0~},wc.vso,Y`#?tADo2CTx]5F9liON]o9vGl.6');
define('SECURE_AUTH_SALT', 's9x+.v<;36P@lVGxnU1v/6<4RA(a_!l?36a9<y).z_p,gJ5KZD<o3$ywYz>l#$CP');
define('LOGGED_IN_SALT',   'mA1uzr1mJgXPN!bg0bE=<R)RJ#[p9RFU5HK8::[DdPBK!dy&{JH{C2Lpt,8qN`~M');
define('NONCE_SALT',       'Z3^elbS%o4tra|Wo{)|G*5%;nk:3z:@1nV8bEAiV_F!3jKO!-c)9$wq,^xu^$iX]');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'spl_';

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
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
