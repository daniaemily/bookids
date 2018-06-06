$(document).ready(function(){
  $(window).scroll(function(){
    var scroll = $(window).scrollTop();
    if (scroll > 940 & scroll < 1940) {
      $(".navbar-bookie").css("background" , "#9ACFE1");
    }
    else if (scroll > 1940) {
      $(".navbar-bookie").css("background" , "#fdbd6a");
    }
    else{
      $(".navbar-bookie").css("background" , "transparent");
    }
  })
})

