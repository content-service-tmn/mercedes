$(document).ready(function() {
  $('.js-smooth-scroll').click(function() {
    var tmp = $(this).attr("href");
    $(this).attr("href","");
    document.querySelector(tmp).scrollIntoView({
      behavior: 'smooth'
    });
  });
});
