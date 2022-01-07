document.addEventListener("turbolinks:load", function() {
    $('.lightbox').featherlight(configuration = {});

// this function runs every time you are scrolling
    $(window).scroll(function() {
        if($(".jumbotron-large").length > 0){
            var top_of_element = ($(".jumbotron-large").offset().top + 300);
            var bottom_of_element = ($(".jumbotron-large").offset().top + 300) + $(".jumbotron-large").outerHeight();
            var bottom_of_screen = $(window).scrollTop() + $(window).innerHeight();
            var top_of_screen = $(window).scrollTop();
            var chevron = $("#chevron")
            var welcome = $("#welcome")
        
            if ((bottom_of_screen > top_of_element) && (top_of_screen < bottom_of_element)){
                // the element is visible, do something
        
                chevron.removeClass("infinite");
                chevron.removeClass("bounce");
                chevron.addClass("fadeOutUp");

                welcome.removeClass("d-none");
                welcome.addClass("delay-1s");
                welcome.addClass("fadeInUp");

            }
        }
    });

    $('.picker').datepicker('setDaysOfWeekDisabled', [1,2,3,4]);

    $('.event-type').change(function(){
        var eventType = $('.event-type').val()
        if (eventType == "1") {
            $('.picker').datepicker('setDaysOfWeekDisabled', [1,2,3,4]);
        } else {
            $('.picker').datepicker('setDaysOfWeekDisabled',[]);
        }
    });

    $(".contact_form").submit(function(event) {
        var form = $(this);

        if (form[0].checkValidity() === false){
            event.preventDefault();
            event.stopPropagation();
        } else {
            $.ajax({
                url: $(this).data("url"),
                type: "PATCH",
                data: $(this).serialize()
            });
        }

        form.addClass('was-validated');
    })
})