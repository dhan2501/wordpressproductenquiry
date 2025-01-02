
    <div class="card">
        <?php
            $thumbnail_id = get_post_thumbnail_id( get_the_ID() ); // Get the featured image ID

            if ( $thumbnail_id ) {
                $alt_text = get_post_meta( $thumbnail_id, '_wp_attachment_image_alt', true ); // Get the alt text
                $thumbnail_url = wp_get_attachment_url( $thumbnail_id ); // Get the image URL

                if ( $thumbnail_url ) {
                    echo '<img class="card-img" src="' . esc_url( $thumbnail_url ) . '" alt="' . esc_attr( $alt_text ) . '" style="width: 100%;height: 220px;">';
                }
            } else {
                echo '<p>No featured image set for this post.</p>';
            }


        ?>
        <div class="card-body">
            <h4 class="card-title h6" style="height: 85px;"><?php the_title(); ?></h4>
            <!-- <small class="text-muted cat">
                <i class="far fa-clock text-info"></i> 30 minutes
                <i class="fas fa-users text-info"></i> 4 portions
            </small> -->
            <!-- <p class="card-text"><?php $content = get_the_content(); echo implode(' ', array_slice(explode(' ', $content), 0, 17)); ?>...</p> -->
            <a href="<?php the_permalink(); ?>" class="btn btn-info" style="width: 100%;">Read Recipe</a>
        </div>    
    </div>