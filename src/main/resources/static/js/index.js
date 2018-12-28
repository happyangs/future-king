jQuery(document).ready(function($) {

    $(".J_head a").click(function() {
        $(this).siblings('a').removeClass('active');
        $(this).addClass('active');
    });
});