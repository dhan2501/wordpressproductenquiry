<?php
/* Template Name: All Products*/

get_header();
?>
 <?php //custom_product_breadcrumbs(); // Display the breadcrumbs ?>
 <?php echo do_shortcode('[breadcrumbs]'); ?>
<div class="container">
    <!-- <h1 class="page-title text-center text-uppercase"><?php the_title(); ?></h1> -->
    <div class="row">
        <div class="col-md-3">    
         <!-- Category Filter Buttons -->
            <div id="category-filter">
            <h5 class="mb-4">Product Categories</h5>
            <div class="borderbottom"></div>
                <?php
                    // $terms = get_terms('product_category');
                    // if ($terms && !is_wp_error($terms)) :
                    //     echo '<ul class="product-categories">';
                    //     foreach ($terms as $term) :
                    //         echo '<li><a href="' . esc_url(get_term_link($term)) . '">' . esc_html($term->name) . '</a></li>';
                    //     endforeach;
                    //     echo '</ul>';
                    // endif;
                    echo do_shortcode('[category_shortcode]');
                ?>
            </div>
            <!-- <div class="tags">
                <h5>Product Tags</h5>
                <?php //echo do_shortcode('[product-custom-tags]'); ?>
            </div> -->
        </div>
        <div class="col-md-9"> 
            <div class="row">
            <div class="productlist">
            
                <?php
                $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
                $query = new WP_Query(array(
                    'post_type'      => 'product', // Change to your post type
                    'posts_per_page' => 2,
                    'paged' => $paged,
                ));
                // $result_count = $query->found_posts;
                if ($query->have_posts()) :

                    $total_posts = $query->found_posts;
                    $posts_per_page = $query->query_vars['posts_per_page'];
                    $start = ($paged - 1) * $posts_per_page + 1;
                    $end = min($paged * $posts_per_page, $total_posts);
                
                   
                 ?>

                <div class="result-count">
                    <?php  echo '<p>Showing ' . $start . '–' . $end . ' of ' . $total_posts . ' results</p>'; ?>
                </div>
                
                <?php
                    while ($query->have_posts()) : $query->the_post();
                ?>
                <div class="col-md-4 float-left mb-3 d-flex align-items-stretch">
                    <?php get_template_part( 'template-parts/content/content-products'); ?>
                </div>
            
                <?php
                    endwhile;
                  // Pagination
                  ?>
                  </div>
            </div>
            <div class="paginationstyle">  
                  <?php
                    $pagination_args = array(
                        'total' => $query->max_num_pages,
                        'current' => $paged,
                        'prev_text' => __('&laquo; Previous'),
                        'next_text' => __('Next &raquo;'),
                    );
                    echo paginate_links($pagination_args);

        else :
            echo '<p>No books found.</p>';
        ?>
        </div>   
        <?php
        endif;

// Reset post data
wp_reset_postdata();

                ?>
            </div>
        </div>
    </div>
</div>
<?php
get_footer();
