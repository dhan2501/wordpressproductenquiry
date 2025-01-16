<?php

get_header();

/* Start the Loop */
while ( have_posts() ) :
	the_post();
    if ( is_page('about-us') ):
        get_template_part( 'template-parts/content/content-about' );
   
	elseif(is_page('contact-us')):
    
        get_template_part( 'template-parts/content/content-contact' ); 
        
    elseif(is_page('blog')):    
        get_template_part( 'template-parts/content/content-blog' ); 
          
    else:
        get_template_part( 'template-parts/content/content-page' );
    
    endif;


	// If comments are open or there is at least one comment, load up the comment template.
	if ( comments_open() || get_comments_number() ) {
		comments_template();
	}
endwhile; // End of the loop.

get_footer();
