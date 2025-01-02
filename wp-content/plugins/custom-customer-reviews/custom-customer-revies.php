<?php
/**
 * Plugin Name: Custom Product Reviews
 * Description: Adds a review form with ratings for the custom post type "product" and displays reviews using a shortcode.
 * Version: 1.0
 * Author: Your Name
 */

// Exit if accessed directly.
if (!defined('ABSPATH')) {
    exit;
}

// Enable comments for the "product" custom post type.
add_action('init', function () {
    $post_type = 'product';
    $post_type_object = get_post_type_object($post_type);

    if ($post_type_object && !in_array('comments', $post_type_object->supports)) {
        $post_type_object->supports[] = 'comments';
    }
});

// Add a rating field to the comment form.
add_filter('comment_form_default_fields', function ($fields) {
    if (is_singular('product')) {
        $fields['rating'] = '<p class="comment-form-rating">
            <label for="rating">Your Rating *</label>
            <select id="rating" name="rating" required>
                <option value="">Rate...</option>
                <option value="5">5 Stars</option>
                <option value="4">4 Stars</option>
                <option value="3">3 Stars</option>
                <option value="2">2 Stars</option>
                <option value="1">1 Star</option>
            </select>
        </p>';
    }
    return $fields;
});

// Save the rating as comment meta.
add_action('comment_post', function ($comment_id) {
    if (isset($_POST['rating']) && $_POST['rating'] !== '') {
        $rating = intval($_POST['rating']);
        add_comment_meta($comment_id, 'rating', $rating);
    }
});

// Display the rating in the comment text.
add_filter('comment_text', function ($comment_text, $comment) {
    if (is_singular('product')) {
        $rating = get_comment_meta($comment->comment_ID, 'rating', true);
        if ($rating) {
            $stars = str_repeat('★', $rating) . str_repeat('☆', 5 - $rating);
            $comment_text = '<p class="comment-rating" style="color: #ffcc00; font-size: 1.2em;">' . $stars . '</p>' . $comment_text;
        }
    }
    return $comment_text;
}, 10, 2);

// Add custom reviews programmatically.
function add_custom_review($post_id, $review) {
    $reviews = get_post_meta($post_id, 'custom_reviews', true);
    if (!$reviews) {
        $reviews = [];
    }
    $reviews[] = $review;
    update_post_meta($post_id, 'custom_reviews', $reviews);
}

// Shortcode to display reviews.
add_shortcode('product_reviews', function ($atts) {
    ob_start();

    $atts = shortcode_atts(['post_id' => get_the_ID()], $atts);
    $post_id = intval($atts['post_id']);

    // Display custom reviews
    $custom_reviews = get_post_meta($post_id, 'custom_reviews', true);
    if (!empty($custom_reviews)) {
        echo '<h3>Custom Reviews</h3><ul class="custom-reviews">';
        foreach ($custom_reviews as $review) {
            $stars = str_repeat('★', $review['rating']) . str_repeat('☆', 5 - $review['rating']);
            echo '<li>';
            echo '<p class="review-rating" style="color: #ffcc00; font-size: 1.2em;">' . $stars . '</p>';
            echo '<p class="review-content">' . esc_html($review['content']) . '</p>';
            echo '<p class="review-author">- ' . esc_html($review['author']) . '</p>';
            echo '</li>';
        }
        echo '</ul>';
    }

    // Display WordPress comments
    echo '<h3>Customer Reviews</h3>';
    wp_list_comments([
        'post_id' => $post_id,
        'style' => 'ul',
        'short_ping' => true,
    ]);

    // Display comment form
    comment_form([
        'title_reply' => 'Leave a Review',
        'label_submit' => 'Submit Review',
        'comment_notes_before' => '<p class="comment-notes">Your email address will not be published. Required fields are marked *</p>',
        'comment_field' => '<p class="comment-form-comment"><label for="comment">Your Review *</label><textarea id="comment" name="comment" rows="4" required></textarea></p>',
    ], $post_id);

    return ob_get_clean();
});
