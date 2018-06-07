$(document).ready(function(){
  $(window).scroll(function(){
    var scroll = $(window).scrollTop();
    var bottomPart = document.getElementById('limit-bottom-home')
    if (bottomPart.getBoundingClientRect().top < 0) {
      $(".navbar-bookie").css("background" , "#fdbd6a");
    }
    else if (scroll > $(window).height()) {
      $(".navbar-bookie").css("background" , "#9ACFE1");
    }
    else {
      $(".navbar-bookie").css("background" , "transparent");
    }
  })
})

