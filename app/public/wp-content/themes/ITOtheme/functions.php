<?php  


function itosite_files() {
    //enqueueing CSS

    wp_enqueue_style('mainCSS', get_template_directory_uri() . 'css/main.css');

    //enqueueing JS

    wp_enqueue_script('mainJS', get_template_directory_uri() . '/js/main.js', array(), 1.0, true);
}
add_action('wp_enqueue_scripts', 'itosite_files');