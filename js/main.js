( function( $ ) {

  $window      = $(window);
  $homeSlide   = $('.homeSlide');
  $lastSlide   = $('.lastSlide');
  $barSlide    = $('.barSlide');
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
    if(winH <= 760) {
      winH = 760;
    }
    $homeSlide.height(winH);
    $lastSlide.height(winH*3);
    s.refresh($('.homeSlide'));
  }
})( jQuery );
