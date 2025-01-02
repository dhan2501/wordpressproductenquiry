<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'mpgstoneuk' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '&e`M]@R;*hl]98/65KAfnSi~=oD69Iw`WDg9vr0t3,%NJO4H/x= 25|cD|hj$FEM' );
define( 'SECURE_AUTH_KEY',  '56bmB]cZ@|Q/(5#+5$Bt4`j^($u(bBbu4T`*MM%ULc;2+6!4j.NnJ*V!tR5 :)LJ' );
define( 'LOGGED_IN_KEY',    '*9.b#/5J.{Z{=IH0n)`l2Ue|e([AL=QbS(%[{yF-2:Y[0~+R]5(=#_2|9wF;}~Pk' );
define( 'NONCE_KEY',        'z!pyM[Txh(|uu?Pjn*)EbYry>agNp#T ]h:KUc$,^G4f3l,O-{9?X2)JWb};;jPm' );
define( 'AUTH_SALT',        '&L!jQ@`DBN!b;(pN?GI<y+5OGAvY|ZKO]kP~,<xF{.(d4/|_eLOTMd.:>HG-65BZ' );
define( 'SECURE_AUTH_SALT', '+{ihmh&M;jbVKSPGR;-kM2v50H|8=0rP@u<Q~TrjJn? Pu31%obexyt@-E]Z_5,K' );
define( 'LOGGED_IN_SALT',   '*_1V_]> I}e^Y0YC]|`=VcR^x][ s*v}y5e.D&eZ n[Zk57L{]j.!!2%=~X4RYIe' );
define( 'NONCE_SALT',       '+&VZEt?r6cNwP}7]3X^TSR,#]K6*VO})oC PJLP!Vp-E79+|2OGxrGp2~HRPn&i0' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 *
 * At the installation time, database tables are created with the specified prefix.
 * Changing this value after WordPress is installed will make your site think
 * it has not been installed.
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/#table-prefix
 */
$table_prefix = 'mpgstoneuk_';

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
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
 */
define( 'WP_DEBUG', false );

// define('WP_DEBUG', true);
// define('WP_DEBUG_LOG', true);

define('ALLOW_UNFILTERED_UPLOADS', true);
/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
