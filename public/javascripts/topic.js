$('.topic_link .new_topic').live("click", function(){
    // Visibly toggle the form.
    $('.form_container').toggleClass("link form")
    
    // Clear out old contents.
    $('.form_container input[type=text]').val('');
    $('.form_container textarea').val('');
    
    // Focus on the title
    $('.form_container #topic_title').focus();
});
$('.topic_form form').live('submit', function(e) {
  e.preventDefault(); 
  $('.form_container').toggleClass("link form");
});
