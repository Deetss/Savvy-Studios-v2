$(function() {
    // init Masonry
    var grid = $('.masonry').packery({
        //options
        // slow transitions
        transitionDuration: '0.4s',
        percentPosition: true,
    });

    // show item order after layout
    function orderItems() {
        var itemElems = $grid.packery('getItemElements');
        $( itemElems ).each( function( i, itemElem ) {
        $( itemElem ).text( i + 1 );
        });
    }

    // layout Masonry after each image loads
    grid.imagesLoaded().progress( function() {
        grid.packery();
    });

    grid.find('.drag-me').each( function( i, gridItem ) {
        var draggie = new Draggabilly( gridItem );
        // bind drag events to Packery
        grid.packery( 'bindDraggabillyEvents', draggie );
    });

    grid.on( 'dragItemPositioned', function( event, draggedItem ) {
            console.log( 'Packery drag item positioned', draggedItem.element );
            console.log(grid.packery('getItemElements'));
            console.log("i was called");
            var data = grid.packery('getItemElements').map(el => $(el).attr('id').replace("attachment_", ""));
            console.log(data)
            $.ajax({
                url: $(this).data("url"),
                type: "PATCH",
                data: {attachment: data}
            });
            grid.packery();
        }
    );

    // $(".masonry").sortable({
    //     placeholder: 'sortable-placeholder',
    //     connectWith: '.col-sm-6,.col-lg-3,.mb-2',
    //     tolerance: 'pointer',
    //     cursor: 'move',
    //     start: function(e,ui){ 
    //         ui.placeholder.html(ui.item.html());
    //         ui.placeholder.height(ui.item.height());
    //         ui.placeholder.width(ui.item.width());
    //     },
    //     change: function(e, ui){
    //         ui.placeholder.css(ui.item.css(["position","left", "top", "height","width","z-index"]))
            
    //         grid.masonry('layout');
    //     },
    //     update: function(e, ui){
    //         $.ajax({
    //             url: $(this).data("url"),
    //             type: "PATCH",
    //             data: $(this).sortable('serialize')
    //         });
    //         grid.masonry('reloadItems');
    //         grid.masonry('layout');
    //     },
        
    // });
    // $(".masonry").disableSelection();
});