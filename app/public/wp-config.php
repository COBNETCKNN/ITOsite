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
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'SYcPT82mqEwPm4m76/Iw0o1HRTiKc7p8M56IjNxOHnFEf3ODnYJShfZHsdPVqiL6I4/lEVZwubStz/6h5L8zZg==');
define('SECURE_AUTH_KEY',  'WoIGMbR27U4LvH9JzlTFI+PN7sR8iQzdfmSQh8qxMkAuNQd+2xGPJqFGvOB5pjo8ozWII4c/q16pnptpJhanIg==');
define('LOGGED_IN_KEY',    '8w+VT0rHv41pJyAHiw80Uo8Ug0uiC6hpEHIWqrCjyTjYUWiAySRD5BaMGADh2t9z3K82/zMTpagwMW0qQBcvjA==');
define('NONCE_KEY',        'mAmh0PAlKcBgxsNNvZRpL4c7KgUoCXYIZ1vQ7kkypsQLo/AZc9ymyWVJNqqMUPt3eqEBqeEYoYOMn9z+xHhsBA==');
define('AUTH_SALT',        '6yX3uF2oKuBD6vcUEF+x0IAenWT1xMRqh5pmU/V7x75UKV3a7ynj0RKPQHvVhhWS+TS3Y9PF7ZM8lwyDC/4A1w==');
define('SECURE_AUTH_SALT', 'LeD7+sf6UtH4YNTVCEWsXyUo3sSL1W8qjoMW5V2TPqEYHFzuIZOUoU/buN1o7EN+luI07RHVcwFiciA/WQG4Pw==');
define('LOGGED_IN_SALT',   'lev2dW3XOSgMs1ThgX9IUJyidtGnBzfOoZ36jWG763LTQKzLwW4EcghVtX2RsfmwBmlZfYsNJiNxoiKZgZasnQ==');
define('NONCE_SALT',       'SQ/b52yrp2OUz0Bhmpnpungsypy93gsoh6kKC92TaitDadgpdfFxBV7wr4Qq1qTKrkSIQqrBcrcfm9rwDwBPtw==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
