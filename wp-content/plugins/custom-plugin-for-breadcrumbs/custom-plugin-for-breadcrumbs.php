<?php
/**
 * Plugin Name: Custom plugin for breadcrumbs
 * Description: A plugin to create a custom post type with categories and tags.
 * Version: 1.0
 * Author: Dhananjay Gupta
 * Author URI: https://mpgstone.co.uk/
 * License: GPL2
 * Shortcode:  [breadcrumbs]
 */


 function custom_product_breadcrumbs() {
    // Get the global post object
    global $post;

    // Initialize breadcrumb
    $breadcrumb = '<nav class="breadcrumb" aria-label="Breadcrumbs"><ul class="breadcrumb breadcrumbcss">';

    // Add the Home link
    $breadcrumb .= '<li class="breadcrumb-item"><a href="' . home_url() . '">Home</a></li>';

    // Check if we are on a single custom post type (customproduct)
    if (is_singular('product')) {
        // Get the product categories (taxonomy terms)
        $terms = get_the_terms($post->ID, 'product_category');
        // print_r( $terms);
        // If terms exist and aren't errors
        if ($terms && !is_wp_error($terms)) {
            // Get the first term (category)
            $term = $terms[0];
            $term_link = get_term_link($term);

            // Add the category breadcrumb
            $breadcrumb .= '<li class="breadcrumb-item"><a href="' . esc_url($term_link) . '">' . esc_html($term->name) . '</a></li>';
        }

        // Add the post title as the last breadcrumb
        $breadcrumb .= '<li class="breadcrumb-item">' . get_the_title() . '</li>';
    }
    // elseif(!is_front_page($post->post_parent)){
    //     $breadcrumb .= '<li class="breadcrumb-item">' . get_the_title() . '</li>';
    // }
    elseif (is_tax('product_category')){
        $term = get_queried_object();
        $breadcrumb .= '<li class="breadcrumb-item">' .  $term->name . '</li>';
    }
    elseif (is_post_type_archive('blog')){
        $term = get_queried_object();
        $breadcrumb .= '<li class="breadcrumb-item"> Blog </li>';
    }
    else {
        // $termscat = get_the_terms($post->ID, 'product_category');
        // print_r( $termscat);
        // $breadcrumb .= '<li class="breadcrumb-item">'. $termscat[0]->name . '</li>';
        $breadcrumb .= '<li class="breadcrumb-item">'. get_the_title() . '</li>';
       
     }              
    // Close the breadcrumb structure
    $breadcrumb .= '</ul></nav>';

    // Output the breadcrumb
    echo $breadcrumb;
}

add_shortcode('breadcrumbs','custom_product_breadcrumbs');


// Create an admin menu for plugin settings
function custom_breadcrumbs_menu() {
    add_menu_page(
        'Breadcrumbs Settings',      // Page title
        'Custom Breadcrumbs',               // Menu title
        'manage_options',            // Capability
        'custom_breadcrumbs',        // Menu slug
        'custom_breadcrumbs_page',   // Function to display the settings page
        'dashicons-menu-alt2'  // Icon for the menu
    );
}
add_action('admin_menu', 'custom_breadcrumbs_menu');

function my_custom_scripts(){
    // $path_js = plugins_url('js/main.js', __FILE__);
    $path_style = plugins_url('css/style.css', __FILE__);
    // $dep = array('jquery');
    // $ver = filemtime(plugin_dir_path(__FILE__).'js/main.js');
    $ver_style = filemtime(plugin_dir_path(__FILE__).'css/style.css');
    $path_bootstrap_style = plugins_url('css/bootstrap.css', __FILE__);
    $ver_bootstrap_style = filemtime(plugin_dir_path(__FILE__).'css/bootstrap.css');
    $is_login = is_user_logged_in() ? 1 : 0;
    
    //style enqueue
    wp_enqueue_style('my-custom-style', $path_style, '', $ver_style);
    // wp_enqueue_style('my-custom-bootstrap-style', $path_bootstrap_style, '', $ver_bootstrap_style);
    
    //script includes
    // wp_enqueue_script('my-custom-js', $path_js, $dep, $ver, true); //dependencies
    // wp_add_inline_script('my-custom-js', 'var is_login = '.$is_login.';','before');
    // wp_add_inline_script('my-custom-js', 'var ajaxUrl = "'.admin_url('admin-ajax.php').'";','before');
    
    // if(is_page('home')){
    //     wp_enqueue_script('my-custom-js', $path_js, $dep, $ver, true); //dependencies
    // }
    }
    add_action('wp_enqueue_scripts','my_custom_scripts');
    add_action('admin_enqueue_scripts','my_custom_scripts');

// Settings page callback
function custom_breadcrumbs_page() {
    ?>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

<div class="wrap">
    <div class="headerbars">
        <h1 class="page-titles">
        Information of Custom Breadcurmbs Plugin</h1>            
    </div>
    <div class="breadcrumbsection">
        <div class="row">
            <div class="col-md-8">
                <div class="jumbotron">
                <h1 class="headingcss">Custom Breadcrumbs Plugin Shortcode</h1>
                <h3 class="descriptioncss">You can use this shortcode for fetching Breadcrumbs: <Span class="shortcodecss">[breadcrumbs] </Span></h3>
                <p class="shortcodecsses">1. Using in <b>Editior</b> by <b>[breadcrumbs]</b></p>
                <p class="shortcodecsses">2. When you can use custom page template <b>do_shortcode('[breadcrumbs]')</b></p>
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
        


        <!-- <form method="post" action="options.php">
            <?php
            settings_fields('custom_breadcrumbs_options');
            do_settings_sections('custom_breadcrumbs');
            ?>
            <table class="form-table">
                <tr valign="top">
                    <th scope="row">Breadcrumb Separator</th>
                    <td><input type="text" name="breadcrumb_separator" value="<?php echo get_option('breadcrumb_separator'); ?>" /></td>
                </tr>
            </table>
            <?php submit_button(); ?>
        </form> -->
    </div>
    <?php
}

// Register plugin settings
function custom_breadcrumbs_settings() {
    register_setting('custom_breadcrumbs_options', 'breadcrumb_separator');
}
add_action('admin_init', 'custom_breadcrumbs_settings');