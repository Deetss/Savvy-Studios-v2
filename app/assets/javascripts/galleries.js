document.addEventListener("turbolinks:load", function() {
    // init Masonry
    var grid = $('.masonry').masonry({
        //options
        horizontalOrder: true,
        // no transitions
        transitionDuration: '1s',
    });

    var footer = $('.footer')
    // layout Masonry after each image loads
    grid.imagesLoaded().progress( function() {
        footer.removeClass('d-none');
        grid.masonry('layout');
    });
});