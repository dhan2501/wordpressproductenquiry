<?php get_header(); ?>
<main>
    <?php //custom_product_breadcrumbs(); // Display the breadcrumbs ?>
    <?php echo do_shortcode('[breadcrumbs]'); ?>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <!-- <?php $alt = get_the_post_thumbnail_caption();  print_r($alt);?>
                <img src="<?php echo  wp_get_attachment_url( get_post_thumbnail_id() );?>" alt="<?= $alt;  ?>" style="width: 100%;"> -->

                <?php
                if ( is_singular( 'product' ) ) { // Replace with your custom post type slug
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
            </div>
            <div class="col-md-6">
                <?php
                    if (have_posts()) :
                        while (have_posts()) : the_post();
                            // Display the title and content of the custom product post
                            the_title('<h1 class="product_title">', '</h1>');
                            the_content();     ?>

<div class="container">
  <button type="button" class="btn btn-info inquerybutton" data-toggle="modal" data-target="#form">Please call for best price</button>  
</div>

<div class="modal fade" id="form" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header border-bottom-0">
        <h5 class="modal-title" id="exampleModalLabel">Enquiry For Product</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <?php echo do_shortcode('[contact-form-7 id="dec16fa" title="Model Form"]'); ?>
      <!-- <form>
        <div class="modal-body">
          <div class="form-group">
            <label for="email1">Email address</label>
            <input type="email" class="form-control" id="email1" aria-describedby="emailHelp" placeholder="Enter email">
            <small id="emailHelp" class="form-text text-muted">Your information is safe with us.</small>
          </div>
          <div class="form-group">
            <label for="password1">Password</label>
            <input type="password" class="form-control" id="password1" placeholder="Password">
          </div>
          <div class="form-group">
            <label for="password1">Confirm Password</label>
            <input type="password" class="form-control" id="password2" placeholder="Confirm Password">
          </div>
        </div>
        <div class="modal-footer border-top-0 d-flex justify-content-center">
          <button type="submit" class="btn btn-success">Submit</button>
        </div>
      </form> -->
    </div>
  </div>
</div>

<?php
                        endwhile;




                        
                    endif;
                ?>
            </div>
        </div>
        <?php
       // If comments are open or there is at least one comment, load up the comment template.
      
          if ( comments_open() || get_comments_number() ) {
            comments_template();
          }
  

     echo do_shortcode('[related_products]');
?>

    </div>
</main>

<?php get_footer(); ?>
