( function( $ ) {

  $window      = $(window);
  $homeSlide   = $('.homeSlide');
  $lastSlide   = $('.lastSlide');
  $slide2      = $('.slide2');
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
    $lastSlide.height(winH*3);
    $slide2.height(winH);
    s.refresh($('.homeSlide'));
  }
})( jQuery );
