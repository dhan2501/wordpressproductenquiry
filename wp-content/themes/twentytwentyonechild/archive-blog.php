<?php get_header(); ?>


<?php if ( have_posts() ) : ?>
    <header class="archive-header">
        <!-- <h1 class="archive-title"><?php //post_type_archive_title(); ?>eew</h1> -->
        <?php echo do_shortcode('[breadcrumbs]'); ?>
    </header>

    <div class="archive-posts">
        <div class="container">
            <div class="row">
                <?php while ( have_posts() ) : the_post(); ?>
                    <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
                        
                                <div class="col md-3">

                                <div class="card" style="width: 18rem;">
                                <?php
                                    $thumbnail_id = get_post_thumbnail_id( get_the_ID() ); // Get the featured image ID

                                    if ( $thumbnail_id ) {
                                        $alt_text = get_post_meta( $thumbnail_id, '_wp_attachment_image_alt', true ); // Get the alt text
                                        $thumbnail_url = wp_get_attachment_url( $thumbnail_id ); // Get the image URL

                                        if ( $thumbnail_url ) {
                                            echo '<img class="card-img-top" src="' . esc_url( $thumbnail_url ) . '" alt="' . esc_attr( $alt_text ) . '" style="width: 100%;height: 220px;">';
                                        }
                                    } else {
                                        echo '<p>No featured image set for this post.</p>';
                                    }


                                ?>





                                                <!-- <img class="card-img-top" src="..." alt="Card image cap"> -->
                                                <div class="card-body">
                                                    <h5 class="card-title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></h5>
                                                    <!-- <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p> -->
                                                    <a href="#" class="btn btn-primary">Read More</a>
                                                </div>
                                                </div>                            




                                    <!-- <h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2> -->
                                    <div class="entry-summary">
                                        <?php //the_excerpt(); ?>
                                    </div>
                                </div>
                            
                    </article>
                <?php endwhile; ?>
            </div>                    
        </div>
    </div>

    <div class="pagination">
        <?php
        // Display pagination
        the_posts_pagination( array(
            'mid_size' => 2,
            'prev_text' => __( 'Previous', 'your-theme-textdomain' ),
            'next_text' => __( 'Next', 'your-theme-textdomain' ),
        ) );
        ?>
    </div>
<?php else : ?>
    <p><?php _e( 'No posts found.', 'your-theme-textdomain' ); ?></p>
<?php endif; ?>

<?php get_footer(); ?>