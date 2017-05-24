$(document).ready(function () {
  $('#add_place').on('click', function () {
    $('div.new_place').toggle();
    $('#place_name').focus();
  });
});
