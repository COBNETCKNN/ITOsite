<?php get_header(); ?>

<?php 

  //query for Hero Page
  $heroQuery = new WP_Query(array(
    'page_id' => 62
  ));

  while($heroQuery->have_posts()){
    $heroQuery->the_post(); 
    
    //acf field for download link
    $downloadLink = get_field('download_link_hero');
    
    ?>

<section id="hero" class="relative bg-background font-ubuntu">
  <div class="container m-auto pt-36 pb-32">
    <div class="grid grid-cols-2">
      <!-- FIRST COLUMN ABOUT DOWNLOAD-->
      <div class="">
        <!-- GREY LINE -->
        <div class="grey-line bg-blacktext p-1 rounded-3xl w-14"></div>
        <!-- HEADING SECTION -->
        <h3 class="text-textgray text-2xl mt-6">La app de dieta, perfecta para ti</h3>
        <h1 class="text-7xl font-bold mt-7"><span class="text-green-register text-7xl font-bold">Make me</span><br> an amazing <br>website</h1>
        <h3 class="text-textgray text-2xl mt-6">Encuentra las mejores recetas para llevar tu dieta a otro <br>nivel, sin necesidad de afectar su salud</h3>
        <div class="grid grid-cols-2 mt-11">
          <!-- DOWNLOAD BUTTON -->
          <a href="<?php echo $downloadLink; ?>" target="_blank">
            <button class="bg-blacktext hover:bg-indigo-800 text-white font-bold text-xl h-14 px-4 rounded-xl shadow-xl w-64 ">
              Descargar app
            </button>
          </a>
          <!-- ANDROID AND IOS ICONS -->
          <div class="">
            <i class="fab fa-apple text-5xl text-blacktext"></i>
            <i class="fa fa-android text-5xl text-green-register ml-12"></i>
          </div>
        </div>

        <?php 
        
            // fields from ACF
            $facebookLink  = get_field('facebook_link');
            $twitterLink   = get_field('twitter_link');
            $instagramLink = get_field('instagram_link');           
        
        ?>

        <div class="flex justify-start pt-48 text-2xl text-bold">
          <a href="<?php echo $facebookLink; ?>" target="_blank"><p class="text-textgray">Facebook /</p></a>
          <a href="<?php echo $instagramLink; ?>" target="_blank"><p class="text-green-dark">&nbsp; Instagram /</p></a>
          <a href="<?php echo $twitterLink; ?>" target="_blank"><p class="text-textgray">&nbsp; Twitter</p></a>  
        </div>
      </div>
      <!-- SECOND COLUMN WITH SCREENSHOTS -->
      <div class="mt-40">
        <div class="grid grid-cols-2 gap-2">
          <!-- FIRST COLUMN -->
          <div>
              <div>
                <img src="<?php echo get_template_directory_uri() . '/img/screenshot2.png'; ?>" alt="" class="first_screenshot absolute z-10 -mt-96">
              </div>
              <div class="bg-green-light rounded-full w-96 h-96 absolute z-0 -mt-24"></div>
              <div>
                <img src="<?php echo get_template_directory_uri() . '/img/group2.png'; ?>" alt="" class="absolute z-20 -mt-60 ml-48">
              </div>
            </div>
          <!-- SECOND COLUMN -->
          <div>
            <div>
              <img src="<?php echo get_template_directory_uri() . '/img/screenshot1.png'; ?>" alt="" class="absolute z-10 -mt-40 -ml-24">
            </div>
            <div>
              <img src="<?php echo get_template_directory_uri() . '/img/group1.png'; ?>" alt="" class="absolute z-20 mt-44 ml-28">
              <img src="<?php echo get_template_directory_uri() . '/img/rectangle1.png'; ?>" alt="" class="hero_rectangle absolute z-0 mt-44 ml-28">
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <?php 
   }
  wp_reset_postdata(); ?>
</section>

<!-- RECIPE SECTION -->
<section id="recipe" class="relative pt-20 bg-background font-ubuntu">
    <div class="container m-auto">
      <div class="grid grid-cols-2 mx-auto">
        <!-- RECIPE COLUMN -->
        <div class="recipe_grid grid grid-cols-2 flex justify-center ">

          <?php 
          // custom query for recipes custom post type
          $recipeQuery = new WP_Query(array(
            'post_type'      => 'recipes',
            'posts_per_page' => 2,
            'meta_query'     => array(
              'key'     => 'featured_recipe',
              'value'   => '"Yes"',
              'compare' => 'LIKE'
              
            )
          ));

          while($recipeQuery->have_posts()){
            $recipeQuery->the_post(); 
            
            //acf fields for nutrition
            $recipeCalories = get_field('nutrition_calorias');
            $recipeFat = get_field('nutrition_grasas');
            
            ?>

        <div class="recipe_card">
            <?php the_post_thumbnail('recipe-example'); ?>
            <div class="">
             <img src="<?php echo get_template_directory_uri() . '/img/rectangle2.png'; ?>" alt="" class="recntagle_two flex relative z-0">
             <h2 class="recipe_text text-4xl font-semibold text-blacktext"><?php the_title(); ?></h2>
             <div class="nutrition flex text-3xl font-semibold">
              <p class="calories text-redtext"><?php echo $recipeCalories; ?></p>
              <p class="calories ml-11"><?php echo $recipeFat; ?>g</p>
             </div>
             <div class="nutrition_text flex text-xs text-textgray">
               <p class="ml-1">calorias</p>
               <p class="ml-14">grasas</p>
             </div>
             <div class="redirect_button">
               <a href="<?php the_permalink(); ?>">
                <img src="<?php echo get_template_directory_uri() . '/img/redirect.png'; ?>" alt="">
               </a>
             </div>
            </div>
        </div>
        <?php } 
          wp_reset_postdata();
        ?>

        </div>
        <!-- TEXT COLUMN -->
        <div class="text_recipe__column">
          <!-- GREY LINE -->
           <div class="grey-line bg-blacktext p-1 rounded-3xl w-14"></div>
           <h2 class="mt-8 text-blacktext text-5xl font-bold leading-snug"><span class="text-green-register">Descubre</span> que tan fácil crear alimentos saludables</h2>
            <!-- GREEN CIRCLE -->
           <div class="green_circle__recipe bg-green-light rounded-full w-72 h-72"></div>
           <p class="text-textgray text-2xl mt-20">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin egestas accumsan odio, cursus laoreet mauris porttitor non. Aliquam eu neque nibh. Aenean non pellentesque justo.</p>
        </div>
      </div>
    </div>
</section>


<?php get_footer(); ?>