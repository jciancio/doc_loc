/* AJAX call that adds
 Forum Discussion Topic when user presses submit */
$(function() {
    $('form#new_message').on('ajax:complete', function(event, xhr, status, error){
        $('.message-list').append(xhr.responseText);
        $('#message_title').val("");
        $('#message_description').val("");
    });
});
