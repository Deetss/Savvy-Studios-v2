document.addEventListener("turbolinks:load", function() {
    $('.lightbox').featherlight(configuration = {});

// this function runs every time you are scrolling
    $(window).scroll(function() {
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
    });
  })