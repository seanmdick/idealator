$('.topic_link .new_topic').live("click", function(){$('.form_container').toggleClass("link form")});
$('.topic_form form').live('submit', function(e) {
  e.preventDefault(); 
  $('.form_container').toggleClass("link form");
});
