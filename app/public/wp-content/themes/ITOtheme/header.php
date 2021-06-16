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

<nav id="navbar" class="bg-background py-10 w-full flex flex-wrap content-center font-ubuntu">
    <div class="container m-auto">   
        <div class="lg:flex">
        <!-- LEFT SECTION -->
        <div class="flex justify-between">
        <a href="/">
            <div class="flex justify-start">
                <div class="logo">
                    <?php 
                        $custom_logo_id = get_theme_mod( 'custom_logo' );
                        $custom_logo_url = wp_get_attachment_image_url( $custom_logo_id , 'full' );
                        echo '<img src="' . esc_url( $custom_logo_url ) . '" alt="">';
                    ?>
                </div>
                <h1 class="my-auto pl-5 font-ubuntu text-3xl md:text-3xl xl:text-4xl font-bold text-textblack"><?php bloginfo('name'); ?></h1>

            </div>
        </a>
        <!-- HAMBURGER MENU -->
        <button class="nav-toggler lg:hidden hover:bg-gray-400 rounded" data-target="#navigation">
            <i class="fas fa-bars text-3xl px-4 "></i>
        </button>
        </div>

        <div class="hidden top-navbar w-full lg:inline-flex lg:flex-grow lg:w-auto mx-auto mt-10 md:mt-0" id="navigation">
          <!-- MIDDLE MENU SECTION -->
          <div class="flex justify-center text-textgray lg:text-xl xl:text-2xl m-auto">
              <?php wp_nav_menu(); ?>      
          </div>
          <!-- LOGIN SECTION -->
          <div class="flex justify-center">
              <ul class="flex my-auto">
                  <a href="#"><li class="text-textblack lg:text-xl xl:text-2xl font-bold">Login</li></a>
                  <a href="#"><li class="ml-12 text-green-register lg:text-xl xl:text-2xl font-bold">Register</li></a>
              </ul>
          </div>
        </div>
      </div>
    </div>
</nav>
    
