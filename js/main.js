( function( $ ) {

  $window      = $(window);
  $homeSlide   = $('.homeSlide');
  $slide2      = $('.slide2');
  $slide3      = $('.slide3');
  $slide4      = $('.slide4');
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
    $slide2.height(winH);
    $slide3.height(281);
    $slide4.height(winH);
    s.refresh($('.homeSlide'));
  }
})( jQuery );
