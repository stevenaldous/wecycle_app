$(document).ready(function() {

  alert(gon.testresponse)
    // page is now ready, initialize the calendar...
  $('#calendar').fullCalendar({
    url: gon.response


   });

});