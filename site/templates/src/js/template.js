$(document).ready(function() {
  $(window).scroll(function(){
    if ($(this).scrollTop()>500) {
      $('.menu-wrapper').addClass('.menu-wrapper_active');
    }
    else {
      $('.menu-wrapper').removeClass('.menu-wrapper_active');
    };
  });
});
