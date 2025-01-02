<?php
$image = get_field('banner_image');
if( !empty( $image ) ): ?>
<div class="container-fluid">
    <img src="<?php echo esc_url($image['url']); ?>" alt="<?php echo esc_attr($image['alt']); ?>" class="img-fluid" width="100%"/>
</div>
<?php endif; ?>

