<?php wp_footer(); ?>


<!-- FOOTER -->
<section id="footer" class="bg-background footer h-80 flex flex-wrap content-center font-ubuntu">
    <div class="container m-auto">
        <div class="grid lg:grid-cols-4 gap-4 h-44">
            <!-- LOGO SECTION -->
            <div class="flex justify-center md:justify-start my-auto mb-12 md:mb-auto">
            <div class="logo">
                <?php 
                    $custom_logo_id = get_theme_mod( 'custom_logo' );
                    $custom_logo_url = wp_get_attachment_image_url( $custom_logo_id , 'full' );
                    echo '<img src="' . esc_url( $custom_logo_url ) . '" alt="">';
                ?>
            </div>
            <h1 class="my-auto pl-5 font-ubuntu text-4xl md:text-5xl font-bold text-textblack"><?php bloginfo('name'); ?></h1>
            </div>
            <!-- FIRST FOOTER MENU SECTION -->
            
                <div class="hidden md:block text-footermenu text-2xl m-auto mb-4">
                    <h3 class="text-center text-green-register text-4xl font-bold mb-4 ml-2">Daietto</h3>
                    <?php wp_nav_menu(array('theme_location' => 'first-footer-menu')); ?>      
                </div>
                <!-- SECOND FOOTER MENU SECTION -->
                <div class="hidden md:block text-footermenu text-2xl mb-4">
                    <?php wp_nav_menu(array('theme_location' => 'second-footer-menu')); ?>     
                </div>

            <?php 

            //query for Contacto Page
            $contactoQuery = new WP_Query(array(
                'page_id' => 7
            ));

            while($contactoQuery->have_posts()){
                $contactoQuery->the_post();
            

            // fields from ACF
            $facebookLink  = get_field('facebook_link');
            $twitterLink   = get_field('twitter_link');
            $instagramLink = get_field('instagram_link');

            ?>

            <!-- SOCIAL MEDIA -->
            <div class="">
                <div class="flex justify-center md:justify-start">
                    <!-- INSTAGRAM -->
                    <a href="<?php echo $instagramLink; ?>" target="_blank">
                     <i class="fab fa-instagram  text-4xl text-socialmedia hover:text-red-500 mx-7"></i>
                    </a>
                    <!-- TWITTER -->
                    <a href="<?php echo $twitterLink; ?>" target="_blank">
                     <i class="fab fa-twitter  text-4xl text-socialmedia hover:text-blue-500 mx-7"></i>
                    </a>
                    <!-- FACEBOOK -->
                    <a href="<?php echo $facebookLink; ?>" target="_blank">
                    <i class="fab fa-facebook-f  text-4xl text-socialmedia hover:text-blue-700 mx-7"></i>
                    </a>                  
                </div>
                <div class="hidden md:block relative h-32 w-32">
                  <span class="absolute bottom-0 left-0 h-14 w-22 font-ubuntu text-2xl font-bold text-textblack">Tu app de <br>dieta</span>
                </div>
            </div>
            <?php }
                wp_reset_postdata();
            ?>
        </div>
        <p class="text-textgray text-lg text-center lg:text-left md:text-2xl pt-10 md:pt-24">© <?php echo date("Y"); ?> Daietto Derechos Reservados.</p>
    </div>
</section>


</body>
</html>