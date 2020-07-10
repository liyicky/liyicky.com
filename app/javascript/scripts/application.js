$(window).scroll(function() {
  if ($(document).scrollTop() > 55) {
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
      $("#post_body").keyup(function() {
        var x = $("#post_body").val();
	var markeddown = marked(x);
	$("#preview").html(markeddown);
	$("#html-injector").val(markeddown);
      });
});
