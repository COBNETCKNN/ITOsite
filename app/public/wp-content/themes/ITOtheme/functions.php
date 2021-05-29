<?php  

/* LOADING OUR CSS AND JS FILES */
function itosite_files() {
    //enqueueing CSS
    wp_enqueue_style('mainCSS', get_template_directory_uri() . '/css/main.css');

    //enqueueing JS
    wp_enqueue_script('mainJS', get_template_directory_uri() . '/js/main.js', array(), 1.0, true);
    wp_enqueue_script('fontAwesome', 'https://kit.fontawesome.com/24bc428ad4.js');

}
add_action('wp_enqueue_scripts', 'itosite_files');

/* THEME SUPPORT */
//custom site logo
function theme_prefix_setup() {
	
	add_theme_support( 'custom-logo', array(
		'height'      => 65,
		'width'       => 70,
		'flex-width' => true,
	) );

}
add_action( 'after_setup_theme', 'theme_prefix_setup' );

add_theme_support('post-thumbnails');
add_theme_support('menus');

/* REGISTRATION OF FOOTER MENUs */
function custom_footer_menus() {
    register_nav_menus(
        array(
            'first-footer-menu' => 'First Footer Menu',
            'second-footer-menu' => 'Second Footer Menu'
        )
    );
}
add_action( 'init', 'custom_footer_menus' );

/* REGISTRATION OF CUSTOM POST TYPES */

//recipes
function itosite_post_types(){
    register_post_type('recipes', array(
        'public' => true,
        'labels' => array(
            'name' => 'Recipes',
            'add_new_item' => 'Add New Recipe',
            'edit_item' => 'Edit Recipe',
            'all_items' => 'All Recipes',
            'singular_name' => 'Recipes'
        ),
        'menu_icon' => 'dashicons-food',
        'rewrite' => array('slug' => 'recipe'),
        'supports' => array('title', 'thumbnail'),

    ));

}

add_action('init', 'itosite_post_types');