import "bootstrap";
import { init } from "./carrousel"
import "jquery-bar-rating";

$(function() {
  $('#review_stars').barrating({theme: 'fontawesome-stars'});
});

