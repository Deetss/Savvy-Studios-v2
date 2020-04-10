$(function() {
    $(".sort-me").sortable({
        classes: {"ui-sortable" : "card border-0",
                  "ui-sortable-handle" : "card border-0",          
        },
        placeholder: "ui-sortable-placeholder",
        forcePlaceholderSize: true,
        update: function(e, ui){
            ui.placeholder.height(ui.item.height());
            ui.placeholder.width(ui.item.width());
            $.ajax({
                url: $(this).data("url"),
                type: "PATCH",
                data: $(this).sortable('serialize')
            });
        },
        
    }).disableSelection();
});