<?php
/*
Plugin Name: Custom Post Type Search Form with Custom Results Template
Description: A custom search form for custom post types with a custom results template.
Version: 1.0
Author: Developer Dhananjay
Author URI: https://mpgstone.co.uk/
License: GPL2
*/

// Hook to create the custom search form shortcode
function cpt_search_form() {
    ob_start();
    ?>
    <form role="search" method="get" id="searchform" action="<?php echo esc_url(home_url('/')); ?>" class="form-inline my-2 my-lg-0">
        <!-- <label for="s">Search:</label> -->
        <input type="text" value="<?php echo get_search_query(); ?>" name="s" id="s" placeholder="Search here.." class="form-control mr-sm-2"/>
        
        <!-- Hidden field for custom post type -->
        <input type="hidden" name="post_type" value="product"  />
        
        <input class="btn btn-outline-success my-2 my-sm-0" type="submit" id="searchsubmit" value="Search" />
    </form>
    <?php
    return ob_get_clean();
}

// Register the shortcode
function cpt_search_form_shortcode() {
    return cpt_search_form();
}
add_shortcode('cpt_search_form', 'cpt_search_form_shortcode');

// Modify the query to search only the custom post type
function cpt_filter_search_by_custom_post_type($query) {
    if ($query->is_search && !is_admin() && $query->is_main_query()) {
        $query->set('post_type', 'product');
        // $query->set('post_type', array('product'));
    }
}
add_action('pre_get_posts', 'cpt_filter_search_by_custom_post_type');

// Include custom search results template
function cpt_custom_search_results_template($template) {
    if (is_search() && isset($_GET['post_type']) && $_GET['post_type'] == 'product') {
        // Custom search results template for the custom post type
        $custom_template = plugin_dir_path(__FILE__) . '/search-custom_post_type.php';
        
        if (file_exists($custom_template)) {
            return $custom_template; // Load custom template
        }
    }
    return $template; // Default template
}
add_filter('template_include', 'cpt_custom_search_results_template');


// Create an admin menu for plugin settings
function custom_Search_menu() {
    add_menu_page(
        'Custom Search Plugin Settings',      // Page title
        'Custom Search Plugin',               // Menu title
        'manage_options',            // Capability
        'custom_Search',        // Menu slug
        'my_plugin_dashboard_page',   // Function to display the settings page
        'dashicons-search'  // Icon for the menu
    );
}
add_action('admin_menu', 'custom_Search_menu');

// Callback function for the custom dashboard page
function my_plugin_dashboard_page() {
?>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<div class="wrap">
    <div class="headerbars">
        <h1 class="page-titles">
        Information of Custom Search Filter Plugin</h1>            
    </div>
    <div class="searchsection">
        <div class="row">
            <div class="col-md-8">
                <div class="jumbotron">
                <h1 class="headingcss">Custom Search Filter Plugin Shortcode</h1>
                <p class="shortcodecsses">1. Using in <b>Editior</b> by <b>[cpt_search_form]</b></p>
                <p class="shortcodecsses">2. When you can use custom page template <b>echo do_shortcode('[cpt_search_form]');</b></p>
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
<?php
}