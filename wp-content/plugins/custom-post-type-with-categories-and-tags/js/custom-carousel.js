// jQuery(document).ready(function () {
//     jQuery('.related-products-carousel').owlCarousel({
//         loop: true,
//         margin: 10,
//         nav: true,
//         arrows: true,
//         prevArrow: jQuery('.prev-arrow'),
//         nextArrow: jQuery('.next-arrow'),
//         responsive: {
//             0: {
//                 items: 1
//             },
//             600: {
//                 items: 3
//             },
//             1000: {
//                 items: 4
//             }
//         }
//     });
// });

jQuery(document).ready(function ($) {
    jQuery('.related-products-carousel').owlCarousel({
        loop: true,
        margin: 10,
        nav: true,
        navText: [
            // '<button class="owl-prev">&larr;</button>',
            // '<button class="owl-next">&rarr;</button>'
            '&larr;',
            '&rarr;'
        ],
        responsive: {
            0: {
                items: 1
            },
            600: {
                items: 2
            },
            1000: {
                items: 4
            }
        }
    });
});
