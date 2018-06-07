$(document).ready(function(){
  $(window).scroll(function(){
    var scroll = $(window).scrollTop();
    if (scroll > $(window).height()) {
      $(".navbar-bookie").css("background" , "#9ACFE1");
    }
    // else if (scroll > 2190) {
    //   $(".navbar-bookie").css("background" , "#fdbd6a");
    // }
    else{
      $(".navbar-bookie").css("background" , "transparent");
    }
  })
})

