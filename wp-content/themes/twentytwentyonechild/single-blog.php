<?php get_header(); ?>

<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
<div class="container">
    <div class="row">
        <div class="col-md-8">
        <div class="white-box">
            <!-- start left Side section -->
            <!-- <div class="col-md-12"> -->
                    <?php
                        if ( is_singular( 'blog' ) ) { // Replace with your custom post type slug
                            $thumbnail_id = get_post_thumbnail_id( get_the_ID() ); // Get the featured image ID

                            if ( $thumbnail_id ) {
                                $alt_text = get_post_meta( $thumbnail_id, '_wp_attachment_image_alt', true ); // Get the alt text
                                $thumbnail_url = wp_get_attachment_url( $thumbnail_id ); // Get the image URL

                                if ( $thumbnail_url ) {
                                    echo '<img src="' . esc_url( $thumbnail_url ) . '" alt="' . esc_attr( $alt_text ) . '" style="width: 100%;">';
                                }
                            } else {
                                echo '<p>No featured image set for this post.</p>';
                            }
                        }
                    ?>
                <!-- </div> -->
                <!-- <div class="col-md-6"> -->
                    <div class="blog-post">
                    <h1><?php the_title(); ?></h1>
                        <?php the_content(); ?>        
                        <p>Categories: <?php the_terms(get_the_ID(), 'blog_category'); 
                        ?></p>
                        <p>Tags: <?php the_terms(get_the_ID(), 'blog_tag'); ?></p>
                        
                    </div>
                </div>
            </div>
            <!-- End Left side -->
                <div class="col-md-4">
                    <div class="sidebar">
                        <div class="white-box">
                            <h2>Recent Blog</h2>
                            <?php
                                $type = 'blog';
                                $args = array(
                                'post_type' => $type,
                                'post_status' => 'publish',
                                'order'=>'asc',
                                );           
                                $my_query = new WP_Query($args);
                                if ( $my_query->have_posts() ) :
                                
                                while ($my_query->have_posts()) : $my_query->the_post(); 
                                $active_class = ( get_the_ID() === get_queried_object_id() ) ? 'class="active"' : '';
                                ?>
                                <div class="sidebardiv">
                                    <h6 <?php echo $active_class; ?>> <img src="<?php echo wp_get_attachment_url( get_post_thumbnail_id() ); ?>" class="sideimg"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h6>
                                </div>
                            <?php endwhile; wp_reset_postdata(); endif; ?>
                        </div>
                    </div>
             </div>
        </div>
    </div>    
</div>
<?php endwhile; endif; ?>

<?php get_footer(); ?>
