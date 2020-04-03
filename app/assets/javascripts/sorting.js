$(function() {
    $(".sort-me").sortable({
        update: function(e, ui){
            ui.placeholder.height(ui.item.height());
            Rails.ajax({
                url: $(this).data("url"),
                type: "PATCH",
                data: $(this).sortable('serialize')
            });
        }
    }).disableSelection();
});