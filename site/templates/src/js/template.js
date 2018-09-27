$(document).ready(function() {
  $('.js-smooth-scroll')
    // Remove links that don't actually link to anything
    .not('[href="#"]')
    .not('[href="#0"]')
    .click(function(event) {
      // On-page links
      if (
        location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '')
        &&
        location.hostname == this.hostname
      ) {
        // Figure out element to scroll to
        var target = $(this.hash);
        target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
        // Does a scroll target exist?
        if (target.length) {
          // Only prevent default if animation is actually gonna happen
          event.preventDefault();
          $('html, body').animate({
            scrollTop: target.offset().top
          }, 1000, function() {
            // Callback after animation
            // Must change focus!
            var $target = $(target);
            $target.focus();
            if ($target.is(":focus")) { // Checking if the target was focused
              return false;
            } else {
              $target.attr('tabindex','-1'); // Adding tabindex for elements not focusable
              $target.focus(); // Set focus again
            };
          });
        }
      }
    });

    $('.custom-switcher__link:first-child').addClass('is-active');
    $('.custom-switcher__container .custom-switcher__tab:first-child').addClass('is-active');
    $('.custom-switcher__link').click(function() {
      var i = $('.custom-switcher__link').index(this);
      $('.custom-switcher__link').removeClass('is-active');
      $(this).addClass('is-active');
      $('.custom-switcher__container').each(function() {
        $(this).find('.custom-switcher__tab').removeClass('is-active').eq(i).addClass('is-active');
      });
    });
    
});
