$(function(){
  $("#contactform").on('submit', function(e) {
      debugger
    // Prevent form submission and repeat clicks
    e.preventDefault();
    $submit.attr('disabled', 'disabled');

    // Submit the form via ajax
    $.ajax({
        url:'/call',
        method:'POST',
        data: $form.serialize()
    }).done(function(data) {
        alert(data.message);
    }).fail(function() {
        alert('There was a problem calling you - please try again later.');
    }).always(function() {
        $submit.removeAttr('disabled');
    });
  });
});
