<?php
get_header();
?>

<main id="primary" class="site-main">
<?php //custom_product_breadcrumbs(); // Display the breadcrumbs ?>
<?php echo do_shortcode('[breadcrumbs]'); ?>
    <div class="container">
        <header class="page-header">
            
            <?php
            // Optional: Display the category description
            $term_description = term_description();
            if (!empty($term_description)) {
                echo '<div class="taxonomy-description">' . $term_description . '</div>';
            }
            ?>
        </header><!-- .page-header -->
<div class="row">
    <div class="col-md-3">
    <div id="category-filter">
    <h5 class="mb-4">Product Categories</h5>
    <div class="borderbottom"></div>
                <?php
                    // $terms = get_terms('product_category');
                    // if ($terms && !is_wp_error($terms)) :
                    //     echo '<ul class="product-categories">';
                    //     foreach ($terms as $term) :
                    //         echo '<li><a class="categorymanu" href="' . esc_url(get_term_link($term)) . '">' . esc_html($term->name) . '</a></li>';
                    //     endforeach;
                    //     echo '</ul>';
                    // endif;
                    echo do_shortcode('[category_shortcode]');
                ?>
            </div>
            <div class="tags">
            <h5>Product Tags</h5>
                <?php echo do_shortcode('[product-custom-tags]'); ?>
                <?php
                    // Start the loop for products on the category page
                    // if ( have_posts() ) :
                    //     while ( have_posts() ) : the_post();

                    //         // Display product title
                    //         // the_title('<h2>', '</h2>');

                    //         // Fetch the tags for the current product (custom post type)
                    //         $tags = get_the_terms( get_the_ID(), 'product_tag' ); // 'product_tag' is the taxonomy name

                    //         if ( $tags && ! is_wp_error( $tags ) ) {
                    //             echo '<ul class="product-tags-list">';
                    //             foreach ( $tags as $tag ) {
                    //                 // Display each tag as a link
                    //                 // echo '<li><a href="' . esc_url( get_term_link( $tag ) ) . '">' . esc_html( $tag->name ) . '</a></li>';
                    //                 echo '<li>' . esc_html( $tag->name ) . '</li>';
                    //             }
                    //             echo '</ul>';
                    //         } else {
                    //             // echo 'No tags found for this product.';
                    //         }

                    //     endwhile;
                    // else :
                    //     echo 'No products found.';
                    // endif;
                ?>
            </div>
    </div>
        <div class="col-md-9">
            <h1 class="page-title text-center text-uppercase">
                <?php single_term_title(); // Display the category name ?>
            </h1>
            <?php if (have_posts()) : ?>
                <div class="products-archive">
                <div class="result-count">
                <?php display_custom_post_type_result_count('products'); ?>
            </div>
                    <?php
                    // Start the loop to display products
                    while (have_posts()) : the_post();
                        ?>
                        <!-- <article class="product-item">
                            <h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
                            <div class="product-thumbnail">
                                <?php the_post_thumbnail('medium'); ?>
                            </div>
                            <p><?php the_excerpt(); ?></p>
                            <a href="<?php the_permalink(); ?>">View Product</a>
                        </article> -->
                        <div class="col-md-4 float-left mt-5">
                            <div class="card">
                                <img class="card-img" src="<?php echo  wp_get_attachment_url( get_post_thumbnail_id() );?>" alt="Bologna" style="width: 100%;height: 220px;">
                                <!-- <div class="card-img-overlay">
                                <a href="<?php the_permalink(); ?>" class="btn btn-light btn-sm">Cooking</a>
                                </div> -->
                                <div class="card-body">
                                    <h4 class="card-title h6" style="height: 85px;"><?php the_title(); ?></h4>
                                    <!-- <small class="text-muted cat">
                                        <i class="far fa-clock text-info"></i> 30 minutes
                                        <i class="fas fa-users text-info"></i> 4 portions
                                    </small> -->
                                    <!-- <p class="card-text"><?php $content = get_the_content(); echo implode(' ', array_slice(explode(' ', $content), 0, 17)); ?>...</p> -->
                                    <a href="<?php the_permalink(); ?>" class="btn btn-info" style="width: 100%;">Read Recipe</a>
                                </div>
                                <!-- <div class="card-footer text-muted d-flex justify-content-between bg-transparent border-top-0">
                                    <div class="views">Oct 20, 12:45PM</div>
                                    <div class="stats">
                                        <i class="far fa-eye"></i> 1347
                                        <i class="far fa-comment"></i> 12
                                    </div>
                                </div> -->
                                
                            </div>
                        </div>
                        <?php
                    endwhile;
                    ?>

                    <!-- Pagination -->
                    <div class="pagination">
                        <?php
                        echo paginate_links();
                        ?>
                    </div>
                </div>
            <?php else : ?>
                <p>No products found in this category.</p>
            <?php endif; ?>
            </div>
        </div>
    </div>
</main><!-- #primary -->

<?php
get_footer();
?>
