$.ajaxSetup({
  'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
});

$(document).ready(function() {
 //  All non-GET requests will add the authenticity token
 //  If not already present in the data packet
 $("body").bind('ajaxSend', function(elm, xhr, s) {
   if (s.type == "GET") return;
   if (s.data && s.data.match(new RegExp("\\b" + window._auth_token_name + "="))) return;
   if (s.data) {
  s.data = s.data + "&";
  } else {
   s.data = "";
   // if there was no data, $ didn't set the content-type
   xhr.setRequestHeader("Content-Type", s.contentType);
  }
  s.data = s.data + encodeURIComponent(window._auth_token_name) + "=" + encodeURIComponent(window._auth_token);
 });
});