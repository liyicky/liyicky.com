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
    var s = skrollr.init({
      render: function(data) {
      }
    });

    winH = $window.height();
    if(winH <= 550) {
      winH = 550;
    }
    $homeSlide.height(winH);
    $bottomSlide.height(winH);
    s.refresh($('.homeSlide'));
    s.refresh($('.bottomSlide'));
  }
})( jQuery );
