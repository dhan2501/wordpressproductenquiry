<?php
function child_theme_enqueue_styles() {
    // Enqueue the parent theme's stylesheet
    wp_enqueue_style( 'parent-style', get_template_directory_uri() . '/style.css' );

    // Enqueue the child theme's stylesheet
    wp_enqueue_style( 'child-style', get_stylesheet_directory_uri() . '/style.css', array( 'parent-style' ) );
    wp_enqueue_script( 'custom-js', get_stylesheet_directory_uri() . '/js/modelform.js', array( 'jquery' ),'',true );
    // wp_enqueue_script( 'sticky-js', get_stylesheet_directory_uri() . '/js/stickysidebar.js', array( 'jquery' ),'',true );
}
add_action( 'wp_enqueue_scripts', 'child_theme_enqueue_styles' );


function disable_twenty_twenty_one_color_palette() {
    remove_theme_support( 'editor-color-palette' );
}
add_action( 'after_setup_theme', 'disable_twenty_twenty_one_color_palette', 20 );



// Allow SVG upload
function allow_svg_upload($mimes) {
    $mimes['svg'] = 'image/svg+xml';
    return $mimes;
}
add_filter('upload_mimes', 'allow_svg_upload');




// Start Create make duplicate Post and pages custom code.

function duplicate_post_as_draft() {
    global $wpdb;

    // Check if the post ID is provided
    if (!isset($_GET['post']) || !current_user_can('edit_posts')) {
        wp_die(__('You do not have sufficient permissions to access this page.', 'textdomain'));
    }

    $post_id = absint($_GET['post']);
    $post = get_post($post_id);

    if ($post) {
        // Create a new post with the duplicated content
        $new_post = array(
            'post_title'   => $post->post_title . ' (Duplicate)',
            'post_content' => $post->post_content,
            'post_status'  => 'draft',
            'post_author'  => wp_get_current_user()->ID,
            'post_type'    => $post->post_type,
            'post_excerpt' => $post->post_excerpt,
        );

        // Insert the duplicated post into the database
        $new_post_id = wp_insert_post($new_post);

        // Duplicate post meta
        $post_meta = $wpdb->get_results($wpdb->prepare(
            "SELECT meta_key, meta_value FROM $wpdb->postmeta WHERE post_id = %d",
            $post_id
        ));

        if (!empty($post_meta)) {
            foreach ($post_meta as $meta) {
                add_post_meta($new_post_id, $meta->meta_key, maybe_unserialize($meta->meta_value));
            }
        }

        // Redirect to the edit page of the new post
        wp_redirect(admin_url('post.php?action=edit&post=' . $new_post_id));
        exit;
    } else {
        wp_die(__('Post duplication failed. Please try again.', 'textdomain'));
    }
}
add_action('admin_action_duplicate_post_as_draft', 'duplicate_post_as_draft');



function add_duplicate_post_link($actions, $post) {
    if (current_user_can('edit_posts')) {
        $actions['duplicate'] = '<a href="' . wp_nonce_url(
            admin_url('admin.php?action=duplicate_post_as_draft&post=' . $post->ID),
            'duplicate_post_' . $post->ID
        ) . '" title="' . __('Duplicate this post', 'textdomain') . '" rel="permalink">' . __('Duplicate', 'textdomain') . '</a>';
    }
    return $actions;
}
add_filter('post_row_actions', 'add_duplicate_post_link', 10, 2);
add_filter('page_row_actions', 'add_duplicate_post_link', 10, 2);

//End Create make duplicate Post and pages custom code.

add_action('init', 'create_blog_post_type_and_taxonomies');

// Register Custom Post Type for Blog
function create_blog_post_type_and_taxonomies() {

    // Register Custom Post Type for Blog
    register_post_type('blog', array(
        'labels' => array(
            'name'               => __('Blogs'),
            'singular_name'      => __('Blog'),
            'menu_name'          => __('Blogs'),
            'add_new_item'       => __('Add New Blog Post'),
            'edit_item'          => __('Edit Blog Post'),
            'new_item'           => __('New Blog Post'),
            'view_item'          => __('View Blog Post'),
            'all_items'          => __('All Blog Posts'),
            'search_items'       => __('Search Blog Posts'),
            'not_found'          => __('No blog posts found.'),
            'not_found_in_trash' => __('No blog posts found in trash.'),
        ),
        'public'             => true,
        'has_archive'        => true,
        'menu_icon'            => 'dashicons-welcome-write-blog',
        'rewrite'            => array('slug' => 'blog'),
        'supports'           => array('title', 'editor', 'thumbnail', 'excerpt', 'comments'),
    ));

    // Register Custom Taxonomy: Blog Categories
    register_taxonomy('blog_category', 'blog', array(
        'labels' => array(
            'name'              => __('Blog Categories'),
            'singular_name'     => __('Blog Category'),
            'search_items'      => __('Search Blog Categories'),
            'all_items'         => __('All Blog Categories'),
            'parent_item'       => __('Parent Blog Category'),
            'parent_item_colon' => __('Parent Blog Category:'),
            'edit_item'         => __('Edit Blog Category'),
            'update_item'       => __('Update Blog Category'),
            'add_new_item'      => __('Add New Blog Category'),
            'new_item_name'     => __('New Blog Category Name'),
            'menu_name'         => __('Blog Categories'),
        ),
        'hierarchical'       => true, // Allows hierarchical taxonomy (like categories)
        'show_ui'            => true,
        'show_admin_column'  => true,
        'query_var'          => true,
        'rewrite'            => array('slug' => 'blog-category'),
    ));

    // Register Custom Taxonomy: Blog Tags
    register_taxonomy('blog_tag', 'blog', array(
        'labels' => array(
            'name'              => __('Blog Tags'),
            'singular_name'     => __('Blog Tag'),
            'search_items'      => __('Search Blog Tags'),
            'all_items'         => __('All Blog Tags'),
            'edit_item'         => __('Edit Blog Tag'),
            'update_item'       => __('Update Blog Tag'),
            'add_new_item'      => __('Add New Blog Tag'),
            'new_item_name'     => __('New Blog Tag Name'),
            'menu_name'         => __('Blog Tags'),
        ),
        'hierarchical'       => false, // Tags are not hierarchical
        'show_ui'            => true,
        'show_admin_column'  => true,
        'query_var'          => true,
        'rewrite'            => array('slug' => 'blog-tag'),
    ));
}




add_action( 'pre_get_posts', 'modify_archive_query' );
function modify_archive_query( $query ) {
    if ( ! is_admin() && $query->is_main_query() && $query->is_post_type_archive( 'blog' ) ) {
        $query->set( 'posts_per_page', 1 ); // Adjust posts per page
    }
}



function custom_phone_validation($result, $tag) {
    $tag = new WPCF7_FormTag($tag);

    if ($tag->name == 'tel-751') {
        $phone = isset($_POST['tel-751']) ? sanitize_text_field($_POST['tel-751']) : '';

        // Check if phone starts with +44 and is 11 digits long
        if (!preg_match('/^\+44\s?7\d{9}$/', $phone)) {
            $result->invalidate($tag, "Please enter a valid UK phone number starting with +44.");
        }
    }

    return $result;
}
add_filter('wpcf7_validate_tel*', 'custom_phone_validation', 10, 2);
add_filter('wpcf7_validate_tel', 'custom_phone_validation', 10, 2);




function enable_comments_for_custom_post_type( $post_id, $post, $update ) {
    if ( $post->post_type === 'product' && $post->post_status === 'publish' && !$update ) {
        if ( !metadata_exists( 'post', $post_id, '_comment_status' ) ) {
            update_post_meta( $post_id, '_comment_status', 'open' ); // Enable comments
        }
    }
}
add_action( 'wp_insert_post', 'enable_comments_for_custom_post_type', 10, 3 );


