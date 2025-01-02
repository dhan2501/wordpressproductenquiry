<?php 
/*Template Name: Blog Template */

get_header(); ?>

<?php 
$paged = ( get_query_var( 'paged' ) ) ? get_query_var( 'paged' ) : 1;
$type = 'blog';
                   $args=array(
                   'post_type' => $type,
                   'post_status' => 'publish',
                   'posts_per_page' => 1,
                    'order'=>'asc',
                    'paged' => $paged,
                    );
                   $my_query = new WP_Query($args);
				   $i=1;
			  while ($my_query->have_posts()) : $my_query->the_post(); ?>
							<a href="<?php the_permalink(); ?>"><?php the_title(); ?></a>
							
			 <?php $i++;   endwhile; 
                // Pagination
                $pagination_args = array(
                    'total' => $my_query->max_num_pages,
                    'current' => $paged,
                    'prev_text' => __('&laquo; Previous'),
                    'next_text' => __('Next &raquo;'),
                );
                echo paginate_links($pagination_args);

              
         

// Reset post data
wp_reset_postdata();

             
             ?>	

 
<?php get_footer(); ?>