<?php get_header(); ?>


<?php if ( have_posts() ) : ?>
    <header class="archive-header">
        <!-- <h1 class="archive-title"><?php //post_type_archive_title(); ?>eew</h1> -->
    </header>

    <div class="archive-posts">
        <div class="container">
            <div class="row">
                <?php while ( have_posts() ) : the_post(); ?>
                    <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
                        
                                <div class="col md-3">
                                    <h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
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