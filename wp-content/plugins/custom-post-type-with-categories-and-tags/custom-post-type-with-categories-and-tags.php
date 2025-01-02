<?php
/**
 * Plugin Name: Custom Post Type with Categories and Tags
 * Description: A plugin to create a custom post type with categories and tags.
 * Version: 1.0
 * Author: Dhananjay Gupta
 * Author URI: https://mpgstone.co.uk/
 * License: GPL2
 */

// Ensure plugin.php is loaded to check plugin activation status
if (!function_exists('is_plugin_active')) {
    include_once(ABSPATH . 'wp-admin/includes/plugin.php');
}

// Register activation hook for this plugin
register_activation_hook(__FILE__, 'custom-post-type-with-categories-and-tags_activate');




// Create an admin menu for plugin settings
function custom_productsetting_menu() {
    add_menu_page(
        'Product / category / Tags / Counter Settings',      // Page title
        'Custom product setting',               // Menu title
        'manage_options',            // Capability
        'custom_productsetting',        // Menu slug
        'custom_productsetting_page',   // Function to display the settings page
        'dashicons-products'  // Icon for the menu
    );
}
add_action('admin_menu', 'custom_productsetting_menu');


function my_custom_scripts_post(){

    if (is_plugin_active('custom-post-type-with-categories-and-tags/custom-post-type-with-categories-and-tags.php')) {
        $path_js = plugins_url('js/custom-carousel.js', __FILE__);
        $path_style_post = plugins_url('css/style.css', __FILE__);
        $dep = array('jquery');
        $ver = filemtime(plugin_dir_path(__FILE__).'js/custom-carousel.js');
        $ver_style_post = filemtime(plugin_dir_path(__FILE__).'css/style.css');
        $is_login = is_user_logged_in() ? 1 : 0;
        
        //style enqueue
        wp_enqueue_style('my-custom-style', $path_style_post, '', $ver_style_post);
        wp_enqueue_style('owl-carousel-css', 'https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css');
        wp_enqueue_script('owl-carousel-js', 'https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js', array('jquery'), '2.3.4', true);
        // wp_enqueue_script('custom-carousel-js', get_template_directory_uri() . '/js/custom-carousel.js', array('jquery', 'owl-carousel-js'), '1.0', true);
        //script includes
        wp_enqueue_script('my-custom-js', $path_js, $dep, $ver, true); //dependencies
        // wp_add_inline_script('my-custom-js', 'var is_login = '.$is_login.';','before');
        // wp_add_inline_script('my-custom-js', 'var ajaxUrl = "'.admin_url('admin-ajax.php').'";','before');
        
        // if(is_page('home')){
        //     wp_enqueue_script('my-custom-js', $path_js, $dep, $ver, true); //dependencies
        // }
        }
    }
    add_action('wp_enqueue_scripts','my_custom_scripts_post');
    add_action('admin_enqueue_scripts','my_custom_scripts_post');


// Settings page callback
function custom_productsetting_page() { ?>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">

<div class="wrap">
    <div class="headerbars">
        <h1 class="page-titles">
        Information of Custom Product / Category / Tags / Counter Plugin</h1>            
    </div>
    <div class="breadcrumbsection">
        <div class="row">
            <div class="col-md-8">
                <div class="jumbotron">
                <h1 class="headingcss">Custom Product / Category / Tags / Counter Plugin Shortcode</h1>
                <p class="shortcodecsses">1. You can use this shortcode for retrieve categories: <b class="shortcodecss">[category_shortcode] </b></p>
                <p class="shortcodecsses">2. You can use this shortcode for retrieve <b>[product-custom-tags]</b></p>
                <p class="shortcodecsses">3. Place this function where you want the result count to appear: <b>display_custom_post_type_result_count('your_custom_post_type');</b></p>
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

// Start Custom create CPT for product
function register_product_post_type_and_taxonomies() {
    // Register Custom Post Type: 'Products'
    $post_type_args = array(
        'labels' => array(
            'name'               => __( 'Products', 'textdomain' ),
            'singular_name'      => __( 'Product', 'textdomain' ),
            'menu_name'          => __( 'Products', 'textdomain' ),
            'add_new'            => __( 'Add New', 'textdomain' ),
            'add_new_item'       => __( 'Add New Product', 'textdomain' ),
            'edit_item'          => __( 'Edit Product', 'textdomain' ),
            'new_item'           => __( 'New Product', 'textdomain' ),
            'view_item'          => __( 'View Product', 'textdomain' ),
            'search_items'       => __( 'Search Products', 'textdomain' ),
            'not_found'          => __( 'No products found', 'textdomain' ),
            'not_found_in_trash' => __( 'No products found in Trash', 'textdomain' ),
        ),
        'public'             => true,
        'has_archive'        => true,
        'menu_icon'          => 'dashicons-cart',
        'supports'           => array( 'title', 'editor', 'thumbnail', 'excerpt', 'custom-fields','comments' ),
        // 'rewrite'            => array( 'slug' => 'products' ),
        'rewrite'            => array('slug' => 'product/%product_category%'),
        'show_in_rest'       => true, // Enables Gutenberg editor compatibility
    );

    register_post_type( 'product', $post_type_args );

    // Register Hierarchical Taxonomy: 'Product Categories'
    $category_args = array(
        'labels' => array(
            'name'              => __( 'Product Categories', 'textdomain' ),
            'singular_name'     => __( 'Product Category', 'textdomain' ),
            'search_items'      => __( 'Search Product Categories', 'textdomain' ),
            'all_items'         => __( 'All Product Categories', 'textdomain' ),
            'parent_item'       => __( 'Parent Product Category', 'textdomain' ),
            'parent_item_colon' => __( 'Parent Product Category:', 'textdomain' ),
            'edit_item'         => __( 'Edit Product Category', 'textdomain' ),
            'update_item'       => __( 'Update Product Category', 'textdomain' ),
            'add_new_item'      => __( 'Add New Product Category', 'textdomain' ),
            'new_item_name'     => __( 'New Product Category Name', 'textdomain' ),
        ),
        'hierarchical'      => true, // True for categories-like behavior
        'show_in_rest'      => true, // Gutenberg support
        'rewrite'           => array( 'slug' => 'product-categories' ),
    );

    register_taxonomy( 'product_category', 'product', $category_args );

    // Register Non-Hierarchical Taxonomy: 'Product Tags'
    $tag_args = array(
        'labels' => array(
            'name'              => __( 'Product Tags', 'textdomain' ),
            'singular_name'     => __( 'Product Tag', 'textdomain' ),
            'search_items'      => __( 'Search Product Tags', 'textdomain' ),
            'popular_items'     => __( 'Popular Product Tags', 'textdomain' ),
            'all_items'         => __( 'All Product Tags', 'textdomain' ),
            'edit_item'         => __( 'Edit Product Tag', 'textdomain' ),
            'update_item'       => __( 'Update Product Tag', 'textdomain' ),
            'add_new_item'      => __( 'Add New Product Tag', 'textdomain' ),
            'new_item_name'     => __( 'New Product Tag Name', 'textdomain' ),
            'separate_items_with_commas' => __( 'Separate product tags with commas', 'textdomain' ),
            'add_or_remove_items' => __( 'Add or remove product tags', 'textdomain' ),
            'choose_from_most_used' => __( 'Choose from the most used product tags', 'textdomain' ),
        ),
        'hierarchical'      => false, // False for tags-like behavior
        'show_in_rest'      => true, // Gutenberg support
        'rewrite'           => array( 'slug' => 'product-tags' ),
    );

    register_taxonomy( 'product_tag', 'product', $tag_args );


}
add_action( 'init', 'register_product_post_type_and_taxonomies' );




// Start Category Position manage in 2nd  Column
// Add category support to the product custom post type
function add_categories_to_products() {
    register_taxonomy_for_object_type('product_category', 'product'); // Register default 'category' taxonomy for the product post type
}
add_action('init', 'add_categories_to_products');

// Add a custom column for categories to the product custom post type
add_filter('manage_product_posts_columns', 'add_category_column');
function add_category_column($columns) {
    $columns['product_categories'] = __('Categories', 'textdomain'); // Add 'Categories' column
    return $columns;
}

// Populate the Categories column with category data
add_action('manage_product_posts_custom_column', 'populate_category_column', 10, 2);
function populate_category_column($column, $post_id) {
    if ($column === 'product_categories') {
        // Get the categories (or taxonomy terms) associated with the product post
        $categories = get_the_term_list($post_id, 'product_category', '', ', ', ''); // Replace 'category' with your taxonomy if needed
        echo $categories ? $categories : __('No Categories', 'textdomain');
    }
}

// Make the Categories column sortable
add_filter('manage_edit-product_sortable_columns', 'make_category_column_sortable');
function make_category_column_sortable($columns) {
    $columns['product_categories'] = 'product_categories'; // Add 'Categories' to the sortable columns
    return $columns;
}

// Handle sorting for the Categories column
add_action('pre_get_posts', 'sort_category_column');
function sort_category_column($query) {
    if (!is_admin() || !$query->is_main_query()) {
        return;
    }

    if ($query->get('orderby') === 'product_categories') {
        // Sort by category (taxonomy term)
        $query->set('orderby', 'term'); // We use 'term' for sorting by taxonomy
    }
}

// End Category Position manage in 2nd  Column

// // Start tag Position manage in 3nd  Column

// // Register product tag support for the product custom post type
// function add_product_tags_to_products() {
//     register_taxonomy_for_object_type('product_tag', 'product'); // Link 'product_tag' taxonomy to 'product' post type
// }
// add_action('init', 'add_product_tags_to_products');

// // Add a custom column for product tags to the product custom post type
// add_filter('manage_product_posts_columns', 'add_product_tags_column');
// function add_product_tags_column($columns) {
//     $columns['product_tags'] = __('Product Tags', 'textdomain'); // Add 'Product Tags' column
//     return $columns;
// }

// // Populate the Product Tags column with product tag data
// add_action('manage_product_posts_custom_column', 'populate_product_tags_column', 10, 2);
// function populate_product_tags_column($column, $post_id) {
//     if ($column === 'product_tags') {
//         // Get the product tags associated with the product post
//         $tags = get_the_term_list($post_id, 'product_tag', '', ', ', ''); // 'product_tag' is the default tag taxonomy
//         echo $tags ? $tags : __('No Tags', 'textdomain');
//     }
// }

// // Make the Product Tags column sortable
// add_filter('manage_edit-product_sortable_columns', 'make_product_tags_column_sortable');
// function make_product_tags_column_sortable($columns) {
//     $columns['product_tags'] = 'product_tags'; // Add 'Product Tags' to the sortable columns
//     return $columns;
// }

// // Handle sorting for the Product Tags column
// add_action('pre_get_posts', 'sort_product_tags_column');
// function sort_product_tags_column($query) {
//     if (!is_admin() || !$query->is_main_query()) {
//         return;
//     }

//     if ($query->get('orderby') === 'product_tags') {
//         // Sorting by product tags is handled by term order (or custom logic)
//         $query->set('orderby', 'term'); // We use 'term' for sorting by taxonomy
//     }
// }
// // End Tag Position manage in 3nd  Column







// Start Date Position manage in last Column
// Add custom columns and ensure the 'Date' column appears last
add_filter('manage_product_posts_columns', 'add_custom_columns_product');
function add_custom_columns_product($columns) {
    // Add custom columns before the 'date' column
    $new_columns = array();

    // Add the new columns before 'date'
    $new_columns['product_tags'] = __('Product Tags', 'textdomain'); // Example of adding a custom column (Product Tags)

    // Merge the new columns with the existing ones
    $columns = array_merge($columns, $new_columns);

    // Move the 'Date' column to the last position
    $date_column = isset($columns['date']) ? $columns['date'] : '';
    unset($columns['date']);
    if ($date_column) {
        $columns['date'] = $date_column;
    }

    return $columns;
}

// Populate custom column (e.g., 'Product Tags')
add_action('manage_product_posts_custom_column', 'populate_custom_columns_product', 10, 2);
function populate_custom_columns_product($column, $post_id) {
    if ($column === 'product_tags') {
        // Get product tags associated with the post
        $tags = get_the_term_list($post_id, 'product_tag', '', ', ', '');
        echo $tags ? $tags : __('No Tags', 'textdomain');
    }
}
// End Date Position manage in last Column







function custom_product_permalink($post_link, $post) {
    if ($post->post_type === 'product') {
        // Get the terms for the 'product_category' taxonomy
        $terms = get_the_terms($post->ID, 'product_category');
        if ($terms && !is_wp_error($terms)) {
            // Use the first term's slug as the category part of the URL
            $term_slug = $terms[0]->slug;
            // Replace %product_category% in the permalink structure
            return str_replace('%product_category%', $term_slug, $post_link);
        } else {
            // Fallback if no terms are found (e.g., for uncategorized products)
            return str_replace('%product_category%', 'uncategorized', $post_link);
            
        }
    }
    return $post_link;
}
add_filter('post_type_link', 'custom_product_permalink', 10, 2);

function flush_rewrite_rules_on_activation() {
    // Register custom post type and taxonomy again
    // register_custom_product_post_type();
    register_product_post_type_and_taxonomies();
    // Flush the rewrite rules
    flush_rewrite_rules();
}
add_action('after_switch_theme', 'flush_rewrite_rules_on_activation');

// End Custom create CPT for product



function display_custom_post_type_result_count($post_type = 'product') {
    // Get the global query object
    global $wp_query;

    // Get the total number of posts for the custom post type
    $total_posts = $wp_query->found_posts;

    // Get current page and posts per page
    $current_page = max(1, get_query_var('paged'));
    $posts_per_page = $wp_query->query_vars['posts_per_page'];

    // Calculate the range of items being displayed
    $start = ($current_page - 1) * $posts_per_page + 1;
    $end = min($total_posts, $current_page * $posts_per_page);

    // Output the result count
    if ($total_posts > 0) {
        echo sprintf(
            'Showing %d–%d of %d results',
            $start,
            $end,
            $total_posts
        );
    } else {
        echo 'No results found.';
    }
}
add_shortcode('dd','display_custom_post_type_result_count');
// place this function where you want the result count to appear: display_custom_post_type_result_count('your_custom_post_type'); 
// <div class="result-count">

// </div>

// Start Create shortcode for Category
add_shortcode('category_shortcode','category_get_shortcode');
function category_get_shortcode()
{

    $terms = get_terms('product_category');
    $current_term_id = get_queried_object_id();
    $is_shop_page = is_page('products');
    // print_r($is_shop_page );
// $posts_page_url = get_permalink($is_shop_page);
//     print_r($posts_page_url );
    if ($terms && !is_wp_error($terms)) :
       
        echo '<ul class="product-categories">'; 
        $active_class = $is_shop_page ? 'active' : '';
echo '<li class="' . esc_attr($active_class) . '">';
echo '<a href="'.site_url().'/products">All Products</a>';
echo '</li>';
        foreach ($terms as $term) :
            $active_class = ($current_term_id == $term->term_id) ? 'active' : '';
            echo '<li class="' . $active_class . '"><a href="' . esc_url(get_term_link($term)) . '">' . esc_html($term->name) . '</a></li>';
        endforeach;
        echo '</ul>';
    endif;
            
}
// End Create shortcode for Category


// Start Create shortcode for tags
function get_product_tags_list( $post_id ) {
    // Get the tags (terms) for the custom post type 'product' using the 'product_tag' taxonomy
    if(is_page( 'products' )){
        $terms = get_terms( array(
            'taxonomy' => 'product_tag', // The custom taxonomy name
            'orderby'  => 'name',        // Order by term name
            'order'    => 'DESC',         // Ascending order
            'hide_empty' => false,       // Show even empty terms
        ) );
        
        // Check if there are any terms to display
        if ( ! empty( $terms ) && ! is_wp_error( $terms ) ) {
            echo '<ul class="product-tags-list">';
            // Loop through each term and display it
            foreach ( $terms as $term ) {
                // Output the term link and name
                // echo '<li><a href="' . esc_url( get_term_link( $term ) ) . '">' . esc_html( $term->name ) . '</a></li>';
                echo '<li class="badge badge-secondary">'. esc_html( $term->name ) . '</li>';
            }
            echo '</ul>';
        } else {
            echo 'No product tags found.';
        }

    }elseif(is_tax( 'product_category' ))
    {
        if ( have_posts() ) :
            while ( have_posts() ) : the_post();

                // Display product title
                // the_title('<h2>', '</h2>');

                // Fetch the tags for the current product (custom post type)
                $tags = get_the_terms( get_the_ID(), 'product_tag', array( 'order' => 'DESC')); // 'product_tag' is the taxonomy name

                if ( $tags && ! is_wp_error( $tags ) ) {
                    echo '<ul class="product-tags-list">';
                    foreach ( $tags as $tag ) {
                        // Display each tag as a link
                        // echo '<li><a href="' . esc_url( get_term_link( $tag ) ) . '">' . esc_html( $tag->name ) . '</a></li>';
                        echo '<li class="badge badge-secondary">' . esc_html( $tag->name ) . '</li>';
                    }
                    echo '</ul>';
                } else {
                    // echo 'No tags found for this product.';
                }

            endwhile;
        else :
            echo 'No products found.';
        endif;
    }
}

// Example usage: You can call this function in the single product template or use it inside a shortcode

add_shortcode( 'product-custom-tags', 'get_product_tags_list' );
// End Create shortcode for tags


add_action('pre_get_posts', function ($query) {
    if (!is_admin() && $query->is_main_query() && is_post_type_archive('product')) {
        $query->set('posts_per_page', 10);
    }
});



// Display related products based on the shared taxonomy (category or tag)
add_shortcode('related_products', 'display_related_products');
function display_related_products() {
    // Get the current product's categories (taxonomy terms)
    $terms = get_the_terms(get_the_ID(), 'product_category'); 
    if ($terms) {
        // Get the term IDs
        $term_ids = wp_list_pluck($terms, 'term_id');
        // Query related products based on shared taxonomy
        $args = array(
            'post_type' => 'product', // Custom post type name
            'posts_per_page' => 4, // Number of related products to display
            'post__not_in' => array(get_the_ID()), // Exclude the current product
            'tax_query' => array(
                array(
                    'taxonomy' => 'product_category',
                    'field' => 'id',
                    'terms' => $term_ids,
                    'operator' => 'IN',
                ),
            ),
        );
        $related_products = new WP_Query($args);
        if ($related_products->have_posts()) { ?>
            <div class="relatedproduct mt-5">
                <div class="row">
                    <?php
                     $count = 0;
                    echo '<h3>Related Products</h3><ul class="related-products-carousel owl-carousel">';
                    while ($related_products->have_posts()) {
                        $related_products->the_post();
                        $item_class = ($count === 0) ? 'carousel-item active' : 'carousel-item';
                    ?>
                    <div class="col-md-4 float-left">        
                        <li class="carousellist <?=  $item_class; ?> ">                        
                            <?php if (has_post_thumbnail()) : ?>
                                <div><?php the_post_thumbnail('thumbnail'); ?></div>
                            <?php endif; ?>
                           <h3 class="relatedproductheading"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h3> 
                        </li>
                    </div>
                    <?php }
                    echo '</ul>';
                    ?>
                </div>
        <?php   }
        // Reset the post data
        wp_reset_postdata();
    }
}

?>

