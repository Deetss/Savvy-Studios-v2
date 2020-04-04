$(function() {
    $(".sort-me").sortable({
        classes: {"ui-sortable" : "uk-flex uk-flex-wrap",
                  "ui-sortable-handle" : "uk-card uk-margin-left uk-margin-bottom uk-inline",          
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