$(window).scroll(function() {
  if ($(document).scrollTop() > 50) {
    $('nav').addClass('shrink');
    $('.liy-brand').addClass('liy-brand-shrink')
  } else {
    $('nav').removeClass('shrink');
    $('.liy-brand').removeClass('liy-brand-shrink')
  }
});

$(document).ready(function() {

  $('#liy-nav-button').click(function() {
    $('main').toggleClass('slide');
  });
});
