$(function() {
    $(".sort-me").sortable({
        classes: {"ui-sortable" : "uk-flex",
                  "ui-sortable-handle" : "uk-card uk-card-default uk-card-body"            
    },
        update: function(e, ui){
            ui.placeholder.height(ui.item.height());
            $.ajax({
                url: $(this).data("url"),
                type: "PATCH",
                data: $(this).sortable('serialize')
            });
        },
        
    }).disableSelection();
});