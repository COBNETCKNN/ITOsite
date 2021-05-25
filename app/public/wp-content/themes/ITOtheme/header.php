<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta <?php bloginfo('charset'); ?>>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php bloginfo('name'); ?></title>

    <?php wp_head(); ?>
    
</head>

<body <?php body_class(); ?>>
<?php wp_body_open(); ?>

<section id="navbar" class="bg-background h-44 w-full flex flex-wrap content-center">
    <div class="container m-auto">   
        <div class="grid grid-cols-3 gap-4 h-1/2 w-full">
        <!-- LEFT SECTION -->
        <a href="/">
            <div class="flex justify-start">
                <?php 
                    $custom_logo_id = get_theme_mod( 'custom_logo' );
                    $custom_logo_url = wp_get_attachment_image_url( $custom_logo_id , 'full' );
                    echo '<img src="' . esc_url( $custom_logo_url ) . '" alt="">';
                ?>
                <h1 class="my-auto pl-5 font-ubuntu text-5xl font-bold text-textblack"><?php bloginfo('name'); ?></h1>
            </div>
        </a>
        <!-- MIDDLE MENU SECTION -->
        <div class="flex justify-center text-textgray text-2xl m-auto">
            <?php wp_nav_menu(); ?>      
        </div>
        <!-- LOGIN SECTION -->
        <div class="flex justify-center">
            <ul class="flex my-auto">
                <li class="text-textblack text-2xl font-bold">Login</li>
                <li class="ml-12 text-green-register text-2xl font-bold">Register</li>
            </ul>
        </div>
        </div>
    </div>
</section>
    
