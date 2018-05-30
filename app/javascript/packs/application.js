import "bootstrap";
import "jquery-bar-rating";
import "./flipper"

$(function() {
  $('#review_stars').barrating({theme: 'fontawesome-stars'});
  $('.review-stars-select').each(function() {
    $(this).barrating({theme: 'fontawesome-stars', readonly: true, emptyValue: 0});
  })
});

