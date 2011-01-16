Flash = {}
Flash.message = "";
Flash.kind = "";
$(function() {
  $(".flash").ajaxSuccess(function() {
    $(this).removeClass("notice error").clearQueue().addClass(Flash.kind).fadeIn().text(Flash.message).delay(1500).fadeOut();
  });
});
