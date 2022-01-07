document.addEventListener("turbolinks:load", function() {
    // // init Masonry
    // var grid = $('.masonry').masonry({
    //     //options
    //     horizontalOrder: true,
    //     // no transitions
    //     transitionDuration: '1s',
    // });
    // var footer = $('.footer')
    // // layout Masonry after each image loads
    // grid.imagesLoaded().progress( function() {
    //     footer.removeClass('d-none');
    //     grid.masonry('layout');
    // });

    // init Masonry
    var grid = $('.masonry').packery({
        //options
        // slow transitions
        transitionDuration: '0.4s',
        percentPosition: true,
    });

    // layout Masonry after each image loads
    grid.imagesLoaded().progress( function() {
        grid.packery();
    });


    // lazy loading
    var lazyloadImages;    

  if ("IntersectionObserver" in window) {
    lazyloadImages = document.querySelectorAll(".lazy");
    var imageObserver = new IntersectionObserver(function(entries, observer) {
      entries.forEach(function(entry) {
        if (entry.isIntersecting) {
          var image = entry.target;
          image.src = image.dataset.src;
          image.classList.remove("lazy");
          imageObserver.unobserve(image);
        }
      });
    });

    lazyloadImages.forEach(function(image) {
      imageObserver.observe(image);
    });
  } else {  
    var lazyloadThrottleTimeout;
    lazyloadImages = document.querySelectorAll(".lazy");
    
    function lazyload () {
      if(lazyloadThrottleTimeout) {
        clearTimeout(lazyloadThrottleTimeout);
      }    

      lazyloadThrottleTimeout = setTimeout(function() {
        var scrollTop = window.pageYOffset;
        lazyloadImages.forEach(function(img) {
            if(img.offsetTop < (window.innerHeight + scrollTop)) {
              img.src = img.dataset.src;
              img.classList.remove('lazy');
            }
        });
        if(lazyloadImages.length == 0) { 
          document.removeEventListener("scroll", lazyload);
          window.removeEventListener("resize", lazyload);
          window.removeEventListener("orientationChange", lazyload);
        }
      }, 20);
    }

    document.addEventListener("scroll", lazyload);
    window.addEventListener("resize", lazyload);
    window.addEventListener("orientationChange", lazyload);
  }
});