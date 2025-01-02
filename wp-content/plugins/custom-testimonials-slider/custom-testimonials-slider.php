<?php
/**
 * Plugin Name: Custom Post Type For Testimonials
 * Description: A plugin to create a custom post type Testimonials.
 * Version: 1.0
 * Author: Dhananjay Gupta
 * Author URI: https://mpgstone.co.uk/
 * License: GPL2
 */

// Ensure plugin.php is loaded to check plugin activation status
// if (!function_exists('is_plugin_active')) {
//     include_once(ABSPATH . 'wp-admin/includes/plugin.php');
// }

// // Register activation hook for this plugin
// register_activation_hook(__FILE__, 'custom-testimonials-slider_activate');




// Create an admin menu for plugin settings
function custom_testimonialsetting_menu() {
    add_menu_page(
        'Testimonials Settings',      // Page title
        'Custom testimonials setting',               // Menu title
        'manage_options',            // Capability
        'custom_testimonialsetting',        // Menu slug
        'custom_testimonialssetting_page',   // Function to display the settings page
        'dashicons-testimonial'  // Icon for the menu
    );
}
add_action('admin_menu', 'custom_testimonialsetting_menu');


// function my_custom_scripts_post(){

//     if (is_plugin_active('custom-testimonials-slider/custom-testimonials-slider.php')) {
//         $path_style_post = plugins_url('css/style.css', __FILE__);
//         $ver_style_post = filemtime(plugin_dir_path(__FILE__).'css/style.css');
//         }
//     }
//     add_action('wp_enqueue_scripts','my_custom_scripts_post');
//     add_action('admin_enqueue_scripts','my_custom_scripts_post');

// Settings page callback
function custom_testimonialssetting_page() { ?>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<div class="wrap">
    <div class="headerbars">
        <h1 class="page-titles">
        Information of Testimonials Plugin</h1>            
    </div>
    <div class="breadcrumbsection">
        <div class="row">
            <div class="col-md-8">
                <div class="jumbotron">
                <h1 class="headingcss">Custom Testimonials Shortcode</h1>
                <p class="shortcodecsses">1. You can use this shortcode for retrieve Testimonials: <b class="shortcodecss">[testimonials_shortcode] </b></p>
            </div>
        </div>
        <div class="col-md-4">
            <div class="jumbotron">
                <table class="table">
                <thead>
                    <h3 class="updatescss">Plugin Updated & Details</h3>
                </thead>
                    <tbody>
                        <tr>
                            <th>Update Version</th>
                            <td>1.0</td>
                        </tr>
                        <tr>
                            <th>Update Available</th>
                            <td>Free</td>
                        </tr>
                        <tr>
                            <th>Develop By</th>
                            <td>Developer Dhananjay</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<?php }


function register_testimonials_post_type() {
    // Register Custom Post Type: 'Products'
    $post_type_args = array(
        'labels' => array(
            'name'               => __( 'Testimonials', 'textdomain' ),
            'singular_name'      => __( 'Testimonial', 'textdomain' ),
            'menu_name'          => __( 'Testimonials', 'textdomain' ),
            'add_new'            => __( 'Add New', 'textdomain' ),
            'add_new_item'       => __( 'Add New Testimonial', 'textdomain' ),
            'edit_item'          => __( 'Edit Product', 'textdomain' ),
            'new_item'           => __( 'New Product', 'textdomain' ),
            'view_item'          => __( 'View Product', 'textdomain' ),
            'search_items'       => __( 'Search Testimonials', 'textdomain' ),
            'not_found'          => __( 'No Testimonials found', 'textdomain' ),
            'not_found_in_trash' => __( 'No Testimonials found in Trash', 'textdomain' ),
        ),
        'public'             => true,
        'has_archive'        => true,
        'menu_icon'          => 'dashicons-testimonial',
        // 'supports'           => array( 'title', 'editor', 'thumbnail', 'excerpt', 'custom-fields','comments' ),
        'supports'           => array( 'title', 'thumbnail'),
        // 'rewrite'            => array( 'slug' => 'products' ),
        'rewrite'            => array('slug' => 'testimonials'),
        'show_in_rest'       => true, // Enables Gutenberg editor compatibility
    );

    register_post_type( 'testimonials', $post_type_args );

}
add_action( 'init', 'register_testimonials_post_type' );



// Shortcode for testimonial

function display_data_for_testimonial_shortcode(){ ?>
  <?php $type = 'testimonials';
                   $args=array(
                   'post_type' => $type,
                   'post_status' => 'publish',
                    'order'=>'asc',
					'posts_per_page' => 4,
                    );
                   $my_query = new WP_Query($args);
			  while ($my_query->have_posts()) : $my_query->the_post(); {?>
		  <h1><?php the_title();  ?></h1>

          <?php if (have_rows('testimonial_section')): ?>
             <div class="testimonials">
        <?php while (have_rows('testimonial_section')): the_row(); ?>
            <div class="testimonial">
                <h4><?php the_sub_field('name'); ?></h4>
                <p><?php the_sub_field('reviews_content'); ?></p>
                <?php
                $photo = get_sub_field('reviewer_image');
                if ($photo): ?>
                    <img src="<?php echo $photo; ?>" alt="" width="100px">
                <?php endif; ?>
                <?php 
$rat = get_sub_field('rating'); 

// Check if $rat is not null or 0
if ($rat && $rat > 0) {  
    for ($i = 0; $i < $rat; $i++) { 
        echo '<i class="fa fa-star"></i>'; // Filled star
    }
    // Optional: Show empty stars if rating is less than maximum (e.g., 5 stars)
    $max_stars = 5;
    for ($i = $rat; $i < $max_stars; $i++) {
        echo '<i class="fa fa-star-o"></i>'; // Empty star
    }
} 
// else {
//     // If no rating, show all empty stars (e.g., for 5 stars total)
//     echo str_repeat('<i class="fa fa-star-o"></i>', 5);
// }
?>
                            </div>
                        <?php endwhile; ?>
                    </div>
         
            <?php else: ?>
                <p>No testimonials found.</p>
            <?php endif; ?>
<?php }endwhile; wp_reset_query(); ?>	


<?php    
}
add_shortcode('testimonials_shortcode','display_data_for_testimonial_shortcode');