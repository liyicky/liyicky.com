( function( $ ) {

  $window      = $(window);
  $homeSlide   = $('.homeSlide');
  $bottomSlide = $('.bottomSlide');
  $body        = $('body');

  // Fade in images for sections
  $body.imagesLoaded( function() {
    setTimeout(function() {
      adjustWindow();
      $body.removeClass('loading').addClass('loaded');
    }, 800);
  });

  function adjustWindow() {
    // Init Skrollr
    var s = skrollr.init();
    $homeSlide.height(1000);
    $bottomSlide.height(550);
    s.refresh($('.homeSlide'));
    s.refresh($('.bottomSlide'));
  }
})( jQuery );
