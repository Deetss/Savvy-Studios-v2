$(document).on('turbolinks:load', function() {
    
    // init Masonry
    var $grid = $('.masonry').packery({
        //options
        // slow transitions
        transitionDuration: 0,
        percentPosition: true,
    });


    async function orderItems() {
        await $grid.packery();
        console.log($('.masonry').packery("getItemElements"))
        var itemElems = $grid.packery("getItemElements");
        var data = itemElems.map(function(el, i) {
            return i , $(el).attr('id').replace("attachment_", "")
        });
        console.log(data);
        $.ajax({
            url: $(this).data("url"),
            type: "PATCH",
            format: 'json',
            data: {attachment: data},
            success: function() {
                $('.flashes').append('<div class="flash flash_notice" id="ajax-flash">Images were successfully updated</div>')
                setTimeout(function(){
                    $('#ajax-flash').remove();
                  }, 3000);
            },
            error: function(data, status, xhr) {
                $('.flashes').append('<div class="flash flash_danger" id="ajax-flash">Images were not successfully updated</div>')
                setTimeout(function(){
                    $('#ajax-flash').remove();
                  }, 3000);
            },
        });
        await $grid.packery();
    }

    // layout Masonry after each image loads
    $grid.imagesLoaded().progress(function() {
        $grid.packery();
    });

    $grid.find('.drag-me').each( function( i, gridItem ) {
        var draggie = new Draggabilly( gridItem );
        // bind drag events to Packery
        $grid.packery( 'bindDraggabillyEvents', draggie );
    });

    // window.onmousedown = function() {
    //     $grid.packery(); 
    // }
    // document.addEventListener("pointerup", function(event) {
    //     orderItems(event);
    // }, false)

    // document.addEventListener("pointerdown", function() {
    //     $grid.packery(); 
    // }, false)
    //$grid.on('layoutComplete', orderItems );
    $grid.on('dragItemPositioned', orderItems);
});