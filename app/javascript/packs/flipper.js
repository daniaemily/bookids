const dataFlipper = JSON.parse(document.getElementById("data-flipper").dataset.pages);
let idx = 0;
let is_turning = false;

function initFlipper() {

  $('.btns button').click(function(){
    turn($(this).attr('class'));
  });

  // Get the data from Rails
  // Return array with ["image", "title", "page1", "page2", "page3", "page4"]
  // Loop over array and assign data to turn() function
  //
}

function turn(direction) {
  if (is_turning)
    return;


  if (direction != 'next' && direction != 'prev')
    return;


  let is_next = (direction == 'next');
  let new_left_data = is_next ? dataFlipper[idx + 2] : dataFlipper[idx - 2];
  let new_right_data = is_next ? dataFlipper[idx + 3] : dataFlipper[idx - 1];

  if (!new_left_data && !new_right_data) {
    return;
  }

  is_turning = true;

  var $cur_left = $('.flipper .current.left.page'),
      $cur_right = $('.flipper .current.right.page'),
      $new_left_btn = $('<button class="prev" <button/>'),
      $new_left = $('<div class="left page ' + direction + '" />'),
      $new_right = $('<div class="right page ' + direction + '" />');

  if (new_left_data) {
    $new_left.addClass(new_left_data.color);
    console.log(new_left_data.content)
    $new_left.html(new_left_data.content);
  }

  if (new_right_data) {
    $new_right.addClass(new_right_data.color);
    $new_right.html(new_right_data.content);
  }
  $('.flipper').append($new_left_btn);
  $('.flipper').append($new_left);
  $('.flipper').append($new_right);

  $cur_left.addClass('to_remove');
  $cur_right.addClass('to_remove');

  setTimeout(function(){
    if (is_next) {
        $cur_right.addClass('turn');
        $new_left.addClass('turn');
    }
    else {
        $cur_left.addClass('turn');
        $new_right.addClass('turn');
    }

    $new_left.addClass('current');
    $new_right.addClass('current');
  }, 50);

  setTimeout(function(){
    $('.flipper .page.to_remove').remove();
    $('.flipper .page').removeClass('turn next prev');
    is_turning = false;
  }, 800);
  idx = is_next ? (idx + 2) : (idx - 2);
}

initFlipper();
