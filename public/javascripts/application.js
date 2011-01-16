Flash = {}
Flash.message = "";
Flash.kind = "";
$(function() {
  $(".flash").ajaxSuccess(function() { 
    $(this).removeClass("notice error").addClass(Flash.kind).clearQueue().fadeIn().text(Flash.message).delay(1500).fadeOut();
  });
});
