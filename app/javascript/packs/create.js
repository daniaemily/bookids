$(function() {
    var form = document.getElementById("form_personalization");
  form.addEventListener("focus", function( event ) {
    event.target.style.background = "grey";
  }, true);
  form.addEventListener("blur", function( event ) {
    event.target.style.background = "red";
  }, true);
});
